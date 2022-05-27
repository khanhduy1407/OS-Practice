# Bài 2: Thực thi chương trình

### Câu 1: Viết chương trình C in ra màn hình các số nguyên từ 0 đến 9

Bước 1: Mở chương trình soạn thảo:

``` bash
$ touch thuchanh.c
$ vi thuchanh.c
```

Bước 2: Viết chương trình:

- Khởi đầu vào màn hình `vi`, bạn đang ở chế độ xem (view). Muốn chỉnh sửa nội dung file, bạn nhấn phím ++insert++. Dòng trạng thái cuối màn hình đổi thành `--INSERT--` cho biết bạn đang trong chế độ soạn thảo (bạn cũng có thể nhấn phím ++i++ hoặc ++a++ thay cho phím ++insert++).
- Nhấn ++enter++ nếu bạn muốn sang dòng mới. Nhấn cac phím mũi tên để di chuyển con trỏ và thay đổi nội dung file. Muốn ghi lại nội dung sau khi soạn thảo, bạn nhấn ++esc++ để trở về chế độ lệnh và nhập `:w`. Muốn thoát khỏi `vi`, bạn nhập `:q` (hoặc `:wq` để lưu và thoát).

``` cpp title="bash" linenums="1"
// Bai tap 1
#include<stdio.h>

int main()
{
    int i;
    for (i = 0; i < 10; i++)
        printf("%3d", i);
    printf("\n");
    return 0;
}
```

- Bước 3: Biên dịch chương trình thành tập tin đối tượng:

``` bash
$ gcc -c thuchanh.c
```

- Bước 4: Biên dịch tập tin đối tượng thành tập tin thực thi:

``` bash
$ gcc thuchanh.o -o thuchanh
```

!!! warning "Lưu ý"
    Có thể gom bước 3 và 4 bằng câu lệnh:
    
    ``` bash
    $ gcc thuchanh.c -o thuchanh
    ```

- Bước 5: Thực thi chương trình bằng lệnh:

``` bash
$ ./thuchanh
```

Kết quả:

``` bash title="Terminal: root@localhost:~home/dsl"
[root@localhost ~]$ touch thuchanh.c
[root@localhost ~]$ vi thuchanh.c
[root@localhost ~]$ 
[root@localhost ~]$ gcc -c thuchanh.c
[root@localhost ~]$ 
[root@localhost ~]$ gcc thuchanh.o -o thuchanh
[root@localhost ~]$ 
[root@localhost ~]$ ./thuchanh
  0  1  2  3  4  5  6  7  8  9
[root@localhost ~]$ █
```

### Câu 2: Viết chương trình cộng và nhân 2 số nguyên sử dụng thư viện liên kết tĩnh

``` cpp title="$ vi cong.c" linenums="1"
int cong(int a, int b)
{
    return a + b;
}
```

``` cpp title="$ vi nhan.c" linenums="1"
int nhan(int a, int b)
{
    return a * b;
}
```

``` cpp title="$ vi program.c" linenums="1"
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
```

``` bash
$ gcc -c cong.c nhan.c
$ ar cvr libfoo.a cong.o nhan.o
$ gcc program.c -o program -L. -lfoo
$ ./program
```

Kết quả:

``` bash title="Terminal: root@localhost:~home/dsl"
[root@localhost ~]$ touch cong.c && vi cong.c
[root@localhost ~]$ 
[root@localhost ~]$ touch nhan.c && vi nhan.c
[root@localhost ~]$ 
[root@localhost ~]$ touch program.c && vi program.c
[root@localhost ~]$ 
[root@localhost ~]$ gcc -c cong.c nhan.c
[root@localhost ~]$ 
[root@localhost ~]$ ar cvr libfoo.a cong.o nhan.o
a - cong.o
a - nhan.o
[root@localhost ~]$ gcc program.c -o program -L. -lfoo
[root@localhost ~]$ 
[root@localhost ~]$ ./program

Nhap a: 2
Nhap b: 3

Tong cua hai so la: 5
Tich cua hai so la: 6
[root@localhost ~]$ █
```

### Câu 3: Câu 2: Viết chương trình cộng và nhân 2 số nguyên sử dụng thư viện liên kết động

Sử dụng các file __cong.c__, __nhan.c__ và __program.c__ ở [câu 2](#cau-2-viet-chuong-trinh-cong-va-nhan-2-so-nguyen-su-dung-thu-vien-lien-ket-tinh).

``` bash
$ gcc -c cong.c nhan.c
$ gcc -shared cong.o nhan.o -o libfoo.so
$ gcc program.c -o program -L. -lfoo
$ LD_LIBRARY_PATH=.:
$ export LD_LIBRARY_PATH
$ ./program
```

Kết quả:

``` bash title="Terminal: root@localhost:~home/dsl"
[root@localhost ~]$ gcc -c cong.c nhan.c
[root@localhost ~]$ 
[root@localhost ~]$ gcc -shared cong.o nhan.o -o libfoo.so
[root@localhost ~]$ 
[root@localhost ~]$ gcc program.c -o program -L. -lfoo
[root@localhost ~]$ 
[root@localhost ~]$ LD_LIBRARY_PATH=.:
[root@localhost ~]$ 
[root@localhost ~]$ export LD_LIBRARY_PATH
[root@localhost ~]$ 
[root@localhost ~]$ ./program

Nhap a: 3
Nhap b: 4

Tong cua hai so la: 7
Tich cua hai so la: 12
[root@localhost ~]$ █
```

### Câu 4

- Viết chương trình nhập, xuất mảng số nguyên (sử dụng thư viện liên kết động).
- Tạo thư mục `/home/dsl/lib`
- Chép thư viện `libfoo.so` tạo được ở câu 4 ý 1 vào thư mục vừa tạo.
- Biên dịch và chạy lại chương trình
