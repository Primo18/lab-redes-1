#include "tcp.h"

static void receive_file(const char *save_dir, int client_sock)
{
    // Recibir el nombre del archivo que el cliente desea enviar
    char filename[256];
    tcp_recv(client_sock, filename, sizeof(filename));
    printf("Solicitando archivo: %s\n", filename);

    // Recibir el tamaño del archivo que el cliente desea enviar
    size_t file_size = 0;
    tcp_recv(client_sock, &file_size, sizeof(file_size));
    printf("Tamaño del archivo: %zu bytes\n", file_size);

    // Recibir el archivo y Guardar archivo
    char filepath[512];
    snprintf(filepath, sizeof(filepath), "%s%s", save_dir, filename);
    tcp_recvfile(client_sock, filepath, file_size);

    // Cerrar conexión
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

        // Habilitar reutilización de direcciones
        int optval = 1;
        if (setsockopt(client_sock, SOL_SOCKET, SO_REUSEADDR, &optval, sizeof(optval)) < 0)
        {
            // Si hubo algún error, imprimimos un mensaje y salimos
            fprintf(stderr, "%s: setsockopt falló\n", __func__);
            return 1;
        }

        printf("Cliente conectado\n");

        // Recibir y enviar el archivo
        receive_file(save_dir, client_sock);
    }

    return 0;
}
