#include <stdio.h>

int main()
{
    for (int i = 0; i < 5; i++)
    {
        printf("%d: Hello world!\n", i + 1);
    }

    int contDoWhile = 0;
    
    do
    {
        printf("%d: Hello world!\n", contDoWhile);
        contDoWhile++;
    } while (contDoWhile < 5);

    return 0;
}
