#include <stdio.h>

int main() {
    float notas[20] = {
        7.5, 9.0, 4.5, 8.0, 6.5,
        10.0, 3.0, 5.5, 7.0, 2.5,
        8.5, 6.0, 9.5, 1.0, 4.0,
        7.8, 5.0, 3.5, 2.0, 6.8
    };

    for (int i = 0; i < 20 - 1; i++) {
        for (int j = 0; j < 20 - i - 1; j++) {
            if (notas[j] > notas[j + 1]) {
                float temp = notas[j];
                notas[j] = notas[j + 1];
                notas[j + 1] = temp;
            }
        }
    }

    printf("As tres menores notas sao:\n");
    printf("%.1f\n", notas[0]);
    printf("%.1f\n", notas[1]);
    printf("%.1f\n", notas[2]);

    return 0;
}