#include <stdio.h>

int main()
{
    float n;
    scanf("%f", &n);

    printf("%.1f\n", n);
    
    if(n >= 0) printf("+\n");

    else if(n < 0) printf("-\n");

    for(int i = 0; n > 2; i++){
        n /= 2;
    }
    printf("%.8f\n", n);
    return 0;
}