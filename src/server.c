#include "tcp.h"

static void receive_file(const char *save_dir, int client_sock)
{
    // Recibir el nombre del archivo que el cliente desea enviar
    char filename[256];
    tcp_recv(client_sock, filename, sizeof(filename));
    printf("Solicitando archivo: %s\n", filename);

    // Recibir el tamaño del archivo que el cliente desea enviar
    size_t file_size;
    tcp_recv(client_sock, &file_size, sizeof(file_size));
    printf("Tamaño del archivo: %zu bytes\n", file_size);

    // Recibir el archivo
    char file[512];
    tcp_recvfile(client_sock, file, file_size);

    // Guardar archivo
    char filepath[512];
    snprintf(filepath, sizeof(filepath), "%s%s", save_dir, filename);
    FILE *fp = fopen(filepath, "wb");
    if (!fp)
    {
        perror("Error al abrir archivo");
        return;
    }

    tcp_close(client_sock);
}

int main(void)
{
    struct tcp_server_t server;

    // Directorio donde se guardaran los archivos recibidos
    const char *save_dir = "../archivos-servidor/";

    // Crear servidor TCP en el puerto 10000
    tcp_server_create(&server, 10000);

    printf("Servidor escuchando en el puerto 10000\n");

    while (1)
    {
        // Aceptar la conexión entrante del cliente
        struct sockaddr_in client_addr;
        socklen_t client_addr_len = sizeof(client_addr);
        int client_sock = tcp_server_accept(&server, &client_addr, &client_addr_len);
        printf("Cliente conectado\n");

        // Recibir y enviar el archivo
        receive_file(save_dir, client_sock);
    }

    return 0;
}
