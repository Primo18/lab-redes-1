#include "tcp.h"

#define FILENAME "archivo.txt"
#define SERVER_PORT 10000

static void send_file(const char *filepath, int sock)
{
    // Abrir archivo para lectura
    FILE *fp = fopen(filepath, "rb");
    if (!fp)
    {
        fprintf(stderr, "Error al abrir el archivo \n");
        exit(EXIT_FAILURE);
    }

    // Obtener tamaño del archivo
    fseek(fp, 0, SEEK_END);
    size_t file_size = ftell(fp);
    fseek(fp, 0, SEEK_SET);
    printf("Enviando archivo: %s (%zu bytes)\n", FILENAME, file_size);

    // Enviar nombre del archivo
    tcp_send(sock, FILENAME, strlen(FILENAME) + 1);

    // Enviar tamaño del archivo
    tcp_send(sock, &file_size, sizeof(file_size));

    // Enviar archivo
    tcp_sendfile(sock, filepath);

    // Cerrar archivo
    fclose(fp);
}

int main(void)
{
    // Conectarse al servidor
    struct tcp_client_t client;
    tcp_client_connect(&client, "localhost", SERVER_PORT);

    // Directorio donde se guardan los archivos a enviar
    const char *save_dir = "../archivos-cliente/";

    // Construir la ruta completa al archivo
    char filepath[512];
    snprintf(filepath, sizeof(filepath), "%s%s", save_dir, FILENAME);

    // Enviar archivo
    send_file(filepath, client.sock);

    // Cerrar conexión
    tcp_close(client.sock);

    return 0;
}