#include <stdio.h>

int main(){
    int n;
    int max = -2147483648;
    int num;

    scanf("%d", &n);

    for(int i = 0; i < n; i++){
        scanf("%d", &num);
        if(num > max){
            max = num;
        }
    }
    printf("%d\n", max);
}