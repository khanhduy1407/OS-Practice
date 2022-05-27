# Bài 1: Tổng quan về HĐH

### Câu 1: Tạo cây thư mục

Tạo cây thư mục như sau:
    
    home
    ┗━ dsl
       ┗━ CTH
          ┣━ user1
          ┗━ user2
        
Sử dụng lệnh `mkdir` để tạo thư mục con:

``` bash title="Terminal: root@localhost:~home/dsl"
[root@localhost ~]$ pwd  #(1)
/home/dsl
[root@localhost CTH]$ mkdir CTH && cd CTH  #(2)
[root@localhost CTH]$ mkdir user1 && mkdir user2  #(3)
[root@localhost CTH]$ █
```

1. Kiểm tra thư mục hiện tại.
2. Tạo thư mục CTH
3. Tạo 2 thư mục user1/user2

### Câu 2: Tạo tập tin

Lần lượt tạo các tập tin __test1.c__, __test2.c__ nằm trong thư mục __user1__ - tập tin __test3.c__, __test4.c__ nằm trong thư mục __user2__

Để tạo file, bạn có 2 cách, cách thứ nhất là tạo file rỗng bằng lệnh `touch`:

``` bash
$ touch test1.c
```

Tương tự tạo ra các file: __test2.c__, __test3.c__, __test4.c__

``` bash title="Terminal: root@localhost:~home/dsl"
[root@localhost CTH]$ cd user1
[root@localhost user1]$ touch test1.c
[root@localhost user1]$ touch test2.c
[root@localhost user1]$ cd ../user2 
[root@localhost user2]$ touch test3.c
[root@localhost user2]$ touch test4.c
[root@localhost user2]$ ls -l
-rw-rw-r--    1 dsl     staff      0 Jan 31 22:04   test3.c
-rw-rw-r--    1 dsl     staff      0 Jan 31 22:04   test4.c
[root@localhost user2]$ █
```

Như bạn thấy kích thước các file được tạo ra bởi lệnh `touch` là 0 bytes. Bạn có thể dùng trình soạn thảo `vi` để bổ sung cho file sau này.

Cách thứ 2 là dùng lệnh `cat` với định hướng đầu ra là tên file như ví dụ sau:

``` bash title="Terminal: root@localhost:~home/dsl"
[root@localhost user2]$ cat >otherfile
Hello Linux
[root@localhost user2]$ ls -l otherfile
-rw-rw-r--    1 dsl     staff      12 Feb 22 20:01   otherfile
[root@localhost user2]$ █
```

Lệnh `cat` chuyển hướng cho phép bạn nhập vào nội dung cho file và kết thúc khi bạn nhấn phím ++ctrl+d++

### Câu 3: Sao chép tập tin và thư mục

- Sao chép tập tin __test3.c__ từ thư mục __user2__ sang __user1__
- Kiểm tra tập tin trong __user1__ và __user2__

``` bash title="Terminal: root@localhost:~home/dsl"
[root@localhost user2]$ cp test3.c ../user1
[root@localhost user2]$
[root@localhost user2]$ ls -l   #(1)
-rw-rw-r--    1 dsl     staff      0 Feb 22 20:07   test3.c
-rw-rw-r--    1 dsl     staff      0 Feb 22 20:07   test4.c
[root@localhost user2]$ ls -l ../user1   #(2)
-rw-rw-r--    1 dsl     staff      0 Feb 22 20:06   test1.c
-rw-rw-r--    1 dsl     staff      0 Feb 22 20:06   test2.c
-rw-rw-r--    1 dsl     staff      0 Feb 22 20:07   test3.c
[root@localhost user2]$ █
```

1. Kiểm tra tập tin trong __user2__
2. Kiểm tra tập tin trong __user1__

Muốn sao chép nhiều file, bạn có thể dùng các ký tự đại diện `*`, `?` hay liệt kê một danh sách các file cần sao chép. Ví dụ, lệnh sau đây sẽ sao chép file __test3.c__, __test4.c__ vào thư mục __user1__

``` bash
$ cp test3.c test4.c ../user1
```

Nếu dùng ký tự đại diện, bạn có thể sao chép như sau:

``` bash
$ cp *.c ../user1
```

Muốn sao chép toàn bộ cây thư mục (bao gồm file và thư mục con), bạn sử dụng tùy chọn `-R`. Ví dụ, để sap chép toàn bộ thư mục __/mydata__ vào thư mục __/tmp__, bạn gọi `cp` như sau:

``` bash
$ cp -R /mydata /tmp
```

### Câu 4: Di chuyển file và thư mục

Bạn dùng lệnh `mv` để di chuyển hoặc đổi tên file. Trong Linux đổi tên file cũng tương tự như di chuyển file. Ví dụ:

- Di chuyển __test4.c__ từ __user2__ sang __user1__
- Kiểm tra những tập tin trong __user1__ sang __user2__

``` bash title="Terminal: root@localhost:~home/dsl"
[root@localhost user2]$ mv test4.c ../user1
[root@localhost user2]$
[root@localhost user2]$ ls -l   #(1)
-rw-rw-r--    1 dsl     staff      0 Feb 22 20:07   test3.c
[root@localhost user2]$ ls -l ../user1   #(2)
-rw-rw-r--    1 dsl     staff      0 Feb 22 20:06   test1.c
-rw-rw-r--    1 dsl     staff      0 Feb 22 20:06   test2.c
-rw-rw-r--    1 dsl     staff      0 Feb 22 20:07   test3.c
-rw-rw-r--    1 dsl     staff      0 Feb 22 20:07   test4.c
[root@localhost user2]$ █
```

1. Kiểm tra tập tin trong __user2__
2. Kiểm tra tập tin trong __user1__\

Để đổi tên __test4.c__ trong thư mục hiện hành thành __test4.doc__

``` bash
$ mv test4.c test4.doc
```

Để di chuyển các file __.doc__ và __.c__ vào thư mục __/tmp__

``` bash
$ mv *.doc *.c /tmp
```

Nếu bạn muốn chuyển __user1__ trong thư mục hiện hành vào __user2__ với tên mới là __NewDir__, bạn gọi lệnh `mv`

``` bash
$ mv user1/ user2/NewDir
```

### Câu 5: Nén, giải nén

Nén thành tập tin __.tar__:

- Nén tập tin __test3.c__ trong thư mục __user2__ thành tập tin __test3.c.tar__
- Liệt kê danh sách các file trong thư mục __user2__
- Xóa tập tin __test3.c__
- Giải nén tập tin __test3.c.tar__

Ngoài ra các bạn cũng có thể nén __thư mục__ với cách tương tự như trên.

### Câu 6: Xóa tập tin, thư mục

Lệnh `rm`, `rmdir` để xóa tập tin hoặc thư mục

!!! warning "Chú ý"
    Lệnh `rmdir` dùng để xóa thư mục rỗng, nếu muốn xóa thư mục có chứa thư mục con hoặc tập tin thì thêm tùy chọn `-r` sau lệnh `rm`

Ví dụ:

- Xóa tập tin __test3.c__, __test3.c.tar__ trong thư mục __user2__
- Xóa thư mục __user2__ (rỗng)
- Xóa thư mục __user1__ (không rỗng)

### Câu 7: Thay đổi quyền truy xuất

- Truy cập bằng quyền __root__
- Tạo người dùng: __user1__
- Đặt password đăng nhập cho __user1__ và __root__
- Tạo nhóm người dùng: __group1__
- Chuyển __user1__ vào nhóm __group1__
- Tạo thư mục __/baitap1__ với quyền __770__
- Đăng nhập vào tài khoản __user1__
- Tạo tập tin __test.txt__ trong thư mục __/baitap__ (hệ điều hành báo lỗi không cho phép thực hiện lệnh này).

Yêu cầu: áp dụng những cách đã học để khắc phục hiện tượng trên.

### Câu 8: Điều khiển tiến trình

- Tạo tập tin __ketqua.txt__
- Dùng lệnh `ls -lR /` để liệt kê danh sách tập tin và thư mục trong thư mục __/__ và ghi kết xuất ra tập tin __ketqua.txt__
- Cho chương trình chạy ở hậu cảnh
- Khi chương trình hoàn tất, xem nội dung tập tin __ketqua.txt__
