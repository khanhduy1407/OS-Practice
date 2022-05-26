#include<stdio.h>
int main()
{
    int a, b;
    printf("\nNhap a: ");
    scanf("%d", &a);
    printf("Nhap b: ");
    scanf("%d", &b);
    printf("\nTong cua hai so la: %d", cong(a, b));
    printf("\nTich cua hai so la: %d\n", nhan(a, b));
    return 0;
}
