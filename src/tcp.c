#include "tcp.h"

void tcp_server_create(struct tcp_server_t *server, int port)
{
    // Crear socket de escucha (se guarda en server->listen_sock)
    server->listen_sock = socket(AF_INET, SOCK_STREAM, 0);
    if (server->listen_sock < 0)
    {
        perror("Error al crear socket de escucha");
        exit(EXIT_FAILURE);
    }

    // Bindear socket a puerto
    server->server_addr.sin_family = AF_INET;
    server->server_addr.sin_addr.s_addr = htonl(INADDR_ANY);
    server->server_addr.sin_port = htons(port);
    if (bind(server->listen_sock, (struct sockaddr *)&server->server_addr,
             sizeof(server->server_addr)) < 0)
    {
        perror("Error al bindear socket de escucha");
        exit(EXIT_FAILURE);
    }

    // Escuchar conexiones entrantes
    if (listen(server->listen_sock, 1) < 0)
    {
        perror("Error al escuchar conexiones entrantes");
        exit(EXIT_FAILURE);
    }
}

int tcp_server_accept(struct tcp_server_t *server,
                      struct sockaddr_in *client_addr,
                      socklen_t *client_addr_len)
{
    // Aceptar primera conexion entrante (guardar dirección del cliente en
    // client_addr)
    int sock = accept(server->listen_sock, (struct sockaddr *)client_addr,
                      client_addr_len);
    if (sock < 0)
    {
        perror("Error al aceptar conexión entrante");
        exit(EXIT_FAILURE);
    }

    // Retorna descriptor de archivo del socket de comunicación con el cliente
    return sock;
}

void tcp_client_connect(struct tcp_client_t *client, const char *host,
                        int port)
{
    // Crear socket de cliente (se guarda en client->sock)
    client->sock = socket(AF_INET, SOCK_STREAM, 0);
    if (client->sock < 0)
    {
        perror("Error al crear socket de cliente");
        exit(EXIT_FAILURE);
    }

    // Conectar con host y puerto indicados (se guarda en client->server_addr y
    // se usa en llamada a connect())
    client->server_addr.sin_family = AF_INET;
    client->server_addr.sin_port = htons(port);
    if (inet_pton(AF_INET, host, &client->server_addr.sin_addr) < 0)
    {
        perror("Error al convertir dirección IP");
        exit(EXIT_FAILURE);
    }
    if (connect(client->sock, (struct sockaddr *)&client->server_addr,
                sizeof(client->server_addr)) < 0)
    {
        perror("Error al conectar con servidor");
        exit(EXIT_FAILURE);
    }
}

void tcp_send(int sock, const void *data, size_t size)
{

    // Enviar datos
    if (send(sock, data, size, 0) < 0)
    {
        perror("Error al enviar datos");
        exit(EXIT_FAILURE);
    }
}

void tcp_recv(int sock, void *data, size_t size)
{
    // Recibir datos
    if (recv(sock, data, size, 0) < 0)
    {
        perror("Error al recibir datos");
        exit(EXIT_FAILURE);
    }
}

// Envía un archivo por el socket indicado
void tcp_sendfile(int sock, const char *file)
{
    FILE *fp = fopen(file, "rb");
    if (fp == NULL)
    {
        perror("Error al abrir archivo");
        return;
    }

    fseek(fp, 0, SEEK_END);
    size_t size = ftell(fp);
    rewind(fp);

    char buffer[4096];
    size_t bytes_left = size;
    size_t read_bytes = 0;
    while (bytes_left > 0 && (read_bytes = fread(buffer, sizeof(char), sizeof(buffer), fp)) > 0)
    {
        if (send(sock, buffer, read_bytes, 0) != read_bytes)
        {
            perror("Error al enviar datos");
            fclose(fp);
            return;
        }

        bytes_left -= read_bytes;
    }

    if (read_bytes == -1)
    {
        perror("Error al leer archivo");
        fclose(fp);
        return;
    }

    fclose(fp);
}

// Recibe un archivo por el socket indicado
void tcp_recvfile(int sock, const char *file, size_t size)
{
    FILE *fp = fopen(file, "wb");
    if (fp == NULL)
    {
        perror("Error al abrir archivo");
        return;
    }

    char buffer[4096];
    size_t bytes_left = size;
    size_t read_bytes = 0;
    while (bytes_left > 0 && (read_bytes = recv(sock, buffer, sizeof(buffer), 0)) > 0)
    {
        if (fwrite(buffer, sizeof(char), read_bytes, fp) != read_bytes)
        {
            perror("Error al escribir archivo");
            fclose(fp);
            return;
        }

        bytes_left -= read_bytes;
    }

    if (read_bytes == -1)
    {
        perror("Error al recibir datos");
        fclose(fp);
        return;
    }

    fclose(fp);
}

void tcp_close(int sock)
{
    close(sock);
}
