# Bài 1: Tổng quan về HĐH

## 1.1 Các khái niệm cơ bản

- `Users` (Người dùng): Để có thể sử dụng được Linux, bạn phải được cấp tài khoản (account) đăng nhập vào máy Linux. Thông tin về tài khoản bao gôm tên đăng nhập (username), mật khẩu đăng nhập (password), và các quyền truy xuất tập tin và thư mục mà bạn có được dựa vào tài khoản mà bạn đăng nhập và máy.

- `Group` (Nhóm): Các người dùng làm việc trên cùng một bộ phận hoặc đang làm việc chung trên cùng một dự án (project) có thể được đưa vào cùng một nhóm. Đây là một cách đơn giản của việc tổ chức để quản lý người dùng.

- `File` (Tập tin): Tất cả các thông tin trên Linux được lưu giữ trong các tập tin. Các tập tin được tạo ra bởi người dùng và người chủ tập tin có quyên truy xuất, tạo, sửa đổi, thiết lập kích thước của tập tin và phân phối quyền để cho phép người dùng khác có thể truy xuất tập tin.

- `Directory` (Thư mục): Thư mục giống như Folder trong Windows. Nó được dùng để chứa các tập tin và thư mục khác, và tạo ra cấu trúc cho hệ thống tập tin. Dưới Linux, chỉ có một cây thư mục và gốc của nó là /. Giống như tập tin, mỗi thư mục có thông tin kết hợp với nó, kích thước tối đa và những người dùng được quyền truy xuất thư mục này, ...

- `Path` (Đường dẫn): Đường dẫn là 1 chuỗi các thư mục và có thể kết thúc bằng tên của một tập tin. Các thư mục và tên tập tin được phân cách bởi ký tự /. Ví dụ : /dir1/dir2/file là một đường dẫn tuyệt đối tới file được chứa trong dir2, với dir2 được chứa trong dir1, và dir1 nằm trong thư mục gốc. Ví dụ khác: ~/homework là một đường dẫn tương đối, tính từ thư mục đăng nhập của người dùng, vào thư mục homewortk.

- `Permissions` (Quyền): Quyền là một đặc tính quan trọng của Linux. Chúng tạo ra sự bảo mật bằng cách giới hạn các hành động mà người dùng có thể thực hiện đối với tập tin và thư mục. Các quyền đọc (read), ghi (write) và thực thi (execute) điều khiển việc truy xuất tới việc truy xuất tập tin của người tạo ra nó, nhóm và các người dùng khác. Một người dùng sẽ không thể truy xuất tới tập tin của người dùng khác nếu không có đủ quyền truy xuất.

- `Process` (Tiến trình): Khi người dùng thực thi một lệnh, Linux tạo ra một tiến trình chứa các chỉ thị lệnh. Một tiến trình còn chứa các thông tin điều khiển như thông tin người dùng thực thi lệnh, định danh duy nhất của tiến trình (PID - process id). Việc quản lý của tiến trình dựa trên PID này.

- `Shell`: Trong chế độ console, người dùng giao tiếp với máy thông qua shell (hệ vỏ). Một shell là một chương trình thường được dùng để bắt đầu một chương trình khác từ dấu nhắc của shell. Một shell được cấu hình bằng việc thiết lập các biến môi trường cho nó. Khi đăng nhập vào Linux, một shell sẽ được tự động tạo ra, và các biến môi trường mặc nhiên (default) sẽ được thiết lập. Ở đây, ta sẽ sử dụng shell BASH (Bourne Again SHell), là shell thông dụng của hầu hết các hệ thống Linux.

## 1.2. Một số lệnh cơ bản

#### Gọi sự trợ giúp

- `command -h`: Hiển thị thông tin trợ giúp ngắn gọn về lệnh.
- `command --help`: Hiển thị thông tin trợ giúp ngắn gọn về lệnh.
- `man command`: Hiển thị trang trợ giúp đầy đủ lệnh.

#### Liệt kê tập tin (flie)

- `ls`: Liệt kê nội dung của thư mục hiện hành.
- `ls -a`: Liệt kê tất cả tập tin, kể cả các tập tin có thuộc tính ẩn.
- `ls -l`: Hiển thị đầy đủ các thông tin (quyền truy cập, chủ, kích thước,...)

#### Thay đổi thư mục

- <code>cd _path_</code>: Chuyển đến thư mục được chỉ định bởi _path_.
- `cd ~`: Chuyển về thư mục nhà.
- `cd -`: Chuyển về thư mục trước của bạn.
- `cd ..`: Chyển về thư mục cha của thư mục hiện hành.

#### Quản lý tập tin và thư mục

- `cp`: Cho phép tạo ra một bản sao (copy) của một tập tin hoặc thư mục: <code>cp *source_path destination_path*</code>
- `mkdir`: Cho phép tạo ra một thư mục mới (make directory), rỗng, tại vị trí được chỉ định: <code>mkdir _directoryname_</code>
- `mv`: Cho phép di chuyển (move) một tập tin từ thư mục này tới thư mục khác, có thể thực hiện việc đổi tên tập tin: <code>mv *source_path destination_path*</code>
- `rm`: Cho phép xóa (remove) các tập tin, dùng lệnh `rm -r` để xóa một thư mục và tất cả những gì nằm trong nó: <code>rm _filename_</code>
- `touch`: Tạo tập tin trống: <code>touch _filename_</code>

#### Xác định vị trí của tập tin

- `find`: Tìm tập tin _filename_ bắt đầu từ thư mục _path_: <code>locate _path_ -name _filename_</code>
- `locate`: Tìm tập tin trong cơ sở dữ liệu của nó có tên là _filename_: <code>loacte _filename_</code>

#### Làm việc với tập tin văn bản

- `cat`: Để xem nội dung của một tập tin văn bản ngắn, chúng ta dùng lệnh `cat` để in nó ra màn hình: <code>cat _filename_</code>
- `less`: Cho phép xem một tập tin dài bằng cách cuộn lên xuống bằng các phím mũi tên và các phím ++pg-up++, ++pg-dn++. Dùng phím ++q++ để thoát chế độ xem: <code>less _filename_</code>
- `grep`: Một công cụ mạnh để tìm một chuỗi trong một tập tin văn bản. Khi lệnh `grep` tìm thấy chuỗi, nó sẽ in ra cả dòng đó lên màn hình: <code>grep _string filename_</code>
- `sort`: Sắp xếp các dòng trong tập tin theo thứ tự __alphabet__ và in nội dung ra màn hình: <code>sort _filename_</code>

#### Giải nén

- `bunzip2`: Giải nén một tập tin __bzip2 (*.bz2)__. Thông thường dùng cho các tập tin lớn: <code>bunzip2 _filename_.bz2</code>
- `gunzip`: Giải nén một tập tin __gzipped (*.gz)__: <code>gunzip _filename_.gz</code>
- `unzip`: Giải nén một tập tin __PkZip__ hoặc __WinZip (*.zip)__: <code>unzip _filename_.zip</code>
- `tar`: Nén và giải nén các tập tin __.tar__, __.tar.gz__: Ví dụ: <code>tar -xvf _filename_.tar</code> và <code>tar -xvzf _filename_.tar.gz</code>

#### Xem thông tin hệ thống

- `date`: In ngày giờ hệ thống.
- `df -h`: In thông tin không gian đĩa được dùng.
- `free`: In thông tin bộ nhớ được dùng.
- `history`: Hiển thị các lệnh được thực hiện bởi tài khoản hiện tại.
- `hostname`: In tên của máy cục bộ (host).
- `pwd`: In đường dẫn đến thư mục làm việc hiện hành.
- `rwho -a`: Liệt kê tất cả người dùng đã đăng nhập vào network.
- `uptime`: In thời gian kể từ lần reboot gần nhất.
- `who`: Liệt kê tất cả người dùng đã đăng nhập vào máy.
- `whoami`: In tên người dùng hiện hành.

#### Các lệnh dùng theo dõi tiến trình

- `ps`: Liệt kê các tiến trình đang kích hoạt cùng với tên của người dùng và PID của các tiến trình đó.
- `ps -aux`: Liệt kê các tiến trình đang kích hoạt cùng với tên của người dùng là chủ tiến trình.
- `top`: Hiển thị danh sách các tiến trình đang kích hoạt, danh sách này được cập nhật liên tục.
- <code>_command_ &</code>: Chạy __command__ trong nền.
- ` fg`: Đẩy một tiến trình nền hoặc bị dừng lên bề mặt trở lại
- `bg`: Chuyển một tiến trình vào nền. Có thể thực hiện tương tự với ++ctrl+z++.
- <code>kill _pid_</code>: Thúc đẩy tiến trình kết thúc. Đầu tiên phải xác định __pid__ của tiến trình cần hủy với lệnh `ps`.
- <code>kill -9 _name_</code>: Hủy tiến trình với __name__ chỉ định.
- <code>nice _program level_</code>: Chạy __program__ với cấp ưu tiên ngược __level__. Cấp __nice__ càng cao, chương trình càng có mức ưu tiên thấp.

## 1.3. Phân quyền bảo vệ và truy xuất file

### 1.3.1. Quyền tập tin

Tất cả các tập tin và thư mục của Linux đều có người sở hữu và quyên truy nhập. Có thể đổi các tính chất này cho phép nhiều hay ít quyền truy nhập hơn đối với một tập tin hay thư mục. Quyền của tập tin còn cho phép xác định tập tin có là một chương trình (application) hay không (khác với Windows xác định tính chất này qua phần mở rộng của tên tập tin).

     Kiểu    Quyền    Liên   Chủ   Tên  Kích thước  Thời điểm sửa  Tên
    tập tin tập tin  kết số  Nhân  Nhóm  (bytes)    đổi sau cùng  tập tin
     │       │         │      │     │      │           │            │
     │┌------┴-┐       │      │     │      │     ┌-----┴----┐       │
     ▼╵        ╵       ▼      ▼     ▼      ▼     ╵          ╵       ▼
     -rw-r--r--        1   bibica hacker  207   Apr 10    11.30    mydata

Có 3 đối tượng chính __{owner, group, other}__ và mỗi đối tượng ứng với 3 quyền cụ thể __{read, write, execute}__.

||||
|:-:|:-:|---|
|__r__|Read|Thuộc tính đọc (không có quyền ghi/xóa)|
|__w__|Write|Thuộc tính ghi (hiệu chỉnh nội dung)|
|__x__|Execute|Thuộc tính thực thi (chạy chương trình)|
|__-__|None|Không có quyền trên đối tương|

Quyền tập tin được thay đổi bằng lệnh `chmod`

``` bash
chmod [-R] mode_file
```

Có hai phương pháp dùng `chmod`: tượng trưng và tuyệt đối.

- Phương pháp tượng trưng:

|Đối tượng truy nhập (Who)|Gán/thu hồi quyền (Operation)|Quyền (Permission)|
|---|---|---|
|__u__ (user - tức owner)|__=__ (gán quyền)|__r__ (read - đọc)|
|__g__ (group - nhóm)|__+__ (thêm quyền)|__w__ (write - ghi)|
|__o__ (other - người dùng còn lại)|__-__ (thu hồi quyền)|__x__ (execute - thực thi)|
|__a__ (all - tương đương __ugo__)|||

Ví dụ:

``` bash
$ chmod u+rx-w /tmp
$ chmod -R u+rwx,g+r,o-rwx /tmp
$ chmod a=rx abc.txt
```

- Phương pháp tuyệt đối:

Song song với cách ký hiệu miêu tả bằng ký tự như ở trên, quyền thao tác các tập tin còn có thể cho dưới dạng 3 số, ví dụ quyền 644. Các số có thể nhận tất cả các giá trị từ 0 đến 7. Số đầu tiên miêu tả quyền của __owner__ (sở hữu), số thứ hai cho __group__ (nhóm) và số thứ ba cho __other__ (những người còn lại).

Mỗi số là tổng của các quyền theo quy tắc sau:

|||
|-|:-:|
|Quyền đọc|4|
|Quyền ghi|2|
|Quyền thực thi|1|

Kết hợp như sau (cho một đối tượng __u__, __o__ hoặc __g__)

|Số bát phân|Số nhị phân|Quyền|Giải thích|
|:-:|:-:|:-:|-|
|__0__|__000__|__---__|không có mọi quyền|
|__1__|__001__|__--x__|quyền thục thi|
|__2__|__010__|__-w-__|chỉ ghi (hiếm gặp)|
|__3__|__011__|__-wx__|ghi và thực thi (hiếm gặp)|
|__4__|__100__|__r--__|chỉ đọc|
|__5__|__101__|__r-x__|đọc và thực thi|
|__6__|__110__|__rw-__|đọc và ghi|
|__7__|__111__|__rwx__|đoc, ghi, thực thi|

Ví dụ:

``` bash
$ chmod 751 abc.txt  #(1)
```

1. Có nghĩa là __owner__ có quyền __read__, __write__ và __execute__ (4+2+1=7), __group__ có quyền __read__ và __execute__ (4+1=5), và __other__ chỉ có quyền __execute__ (1).

### 1.3.2. Thay đổi chủ sở hữu

``` bash
chown [options] new_owner object(s)
```

Lưu ý: Nếu muốn thay đổi ownership cho một thư mục và các thư mục con bên trong thì ta dùng tùy chọn `#!bash -R` cho lệnh `#!bash chown`. VD:

``` bash
chown -R user1 /test
```

### 1.3.3. Thay đổi nhóm sở hữu

``` bash
chgrp [options] new_group object(s)
```

Lưu ý: Nếu muốn thay đổi group cho một thư mục và các thư mục con bên trong thì ta dùng tùy chọn `#!bash -R` cho lệnh `#!bash chgrp`. VD:

``` bash
chgrp -R group1 /test
```

## 1.4. Điều khiển tiến trình

### 1.4.1. Xem thông tin về tiến trình

Muốn xem các tiến trình đang chạy trong hệ thống Linux hiện hành, bạn gọi lệnh `#!bash ps`

``` bash
$ ps
PID TTY     TIME    CMD
128 tty1  00:00:00  bash
137 pts/9 00:00:00   mc
235 pts/0 00:00:00  bash
...
```

Lệnh `ps` tương tự chức năng __Talk list__ trên Windows khi bạn nhấn ++ctrl+alt+del++. Lệnh `ps` có rất nhiều tùy chọn. Ví dụ ta sử dụng tùy chọn `-a` (all) yêu cầu liệt kê tất cả các tiến trình đang chạy trong Linux.

### 1.4.2. Tiền trình tiền cảnh

khi đang trên dấu nhắc hệ thống (__#__ hoặc __$__) và gọi một chương trình, chương trình trở thành tiến trình và đi vào hoạt động dưới sự kiểm soát của hệ thống. Dấu nhắc hệ thống sẽ không hiển thị khi tiến trình đang chạy. Khi tiến trình hoàn thành tác vụ và chấm dứt, hệ điều hành (chính xác hơn là hệ vỏ Shell) sẽ trả lại dấu nhắc để bạn gõ lệnh thực hiện chương trình khác. Chương trình hoạt động theo cách này gọi là chương trình tiên cảnh (foreground). Ví dụ: lệnh `ls -R` liệt là lệnh liệt kê đệ quy tất cả các thư mục con. Bạn hãy thực hiện lệnh này từ dấu nhắc hệ thống như sau:

``` bash
$ ls -R /
```

Dấu nhắc hệ thống trở lại khi chương trình đã thực hiện xong

### 1.4.3. Tiến trình hậu cảnh

Nếu có cách nào đó yêu cầu Linux đưa các tiến trình chiếm nhiều thời gian xử lý hoặc ít tương tác với người dùng ra hoạt động phía hậu cảnh (background) trả lại ngay dấu nhắc để các tiến trình ở tiền cảnh có thể thực thi thì tốt hơn. Linux cung cấp khả năng này bằng lệnh `&` kết hợp với lệnh của chương trình mà bạn gõ từ dấu nhắc hệ thống. Tất cả những lệnh gõ kèm theo chỉ thị `&` đầu được hệ điêu hành đưa vào hoạt động ngầm bên trong. VÍ dụ:

``` bash
$ ls -R / &
[1] 23978
$
```

Khi tiến trình hậu cảnh chấm dứt, hệ thống sẽ tự động đưa ra thông báo như sau:

``` bash
$
[1] Done        ls -R
```

### 1.4.4. Tạm dừng tiến trình

Sử dụng phím ++ctrl+z++ để đưa một tiến trình đang chạy ở tiền cảnh vào chạy ở hậu cảnh. Khi một tiến trình nhận được tín hiệu ++ctrl+z++ nó sẽ bị hệ thống cho tạm dừng và đưa vào hậu cảnh. Dấu nhắc hệ thống được trả lại cho người dùng. Tuy đưa vào hậu cảnh nhưng tiến trình đang bị tạm dừng, nó chỉ thực sự chạy lại ở hậu cảnh khi bạn cho phép . VÍ dụ:

``` bash
$ ls -R / >allfiles.txt
^Z
[1]+ Stopped ls -R / >allfiles.txt
$
```

Muốn xem PID của tiến trình, bạn gội lệnh `#!bash ps -af`

### 1.4.5. Đánh thức tiến trình

Sử dụng lệnh `#!bash jobs` để kiểm tra chương trình của ta đang dừng hay đang chạy.

``` bash
$ jobs
[1]+ Stopped ls -R / >allfiles.txt
```

Lệnh `#!bash jobs` hiển thị trạng thái của tất cả các tiến trình đang chạy ở hậu cảnh. Như kết quả trên: tác vụ `#!bash [1]` đang ở trạng thái dừng. Để yêu cầu tiến trình của ta tiếp tục hoạt động ở hậu cảnh: sử dụng lệnh `#!bash bg`.

``` bash
$ bg 1
ls -R / >allfiles.txt
$ jobs
[1]+ Running ls -R / >allfiles.txt &
```

Dùng lệnh `#!bash fg` để mang tiến trình trở lại hoạt động ở phía tiền cảnh.

``` bash
$ fg 1
ls -R / >allfiles.txt
```

### 1.4.6. Hủy tiến trình

Không phải lúc nào tiến trình cũng hoạt động tốt đẹp. Có thể chúng sẽ bị treo hoặc bước vào vòng lặp vô tận và không bao giờ chấm dứt. Trong trường hợp này, ta cần phải loại bỏ chương trình ra khỏi hệ thống. Lệnh `#!bash kill` của Linux thường được dùng cho mục đích này, `#!bash kill` yêu cầu cung cấp mã số định danh PID của tiến trình. Lệnh `#!bash kill` thường dùng chung với lệnh `ps -af`. Bạn dùng lệnh `ps -af` để xem thông tin về tiến trình đang chạy, sau đó lấy PID của tiến trình cần hủy và gọi lệnh `#!bash kill`.

``` bash
$ ls -R / >data.txt
^Z
$ ps -af
PID TTY     TIME    CMD
128 tty1  00:00:00  bash
137 pts/9 00:00:00  ls -R
235 pts/0 00:00:00  bash
...
$ kill 137
$ ps -af
PID TTY     TIME    CMD
128 tty1  00:00:00  bash
235 pts/0 00:00:00  bash
...
```

Có một số tiến trình có độ ưu tiên cao và không thể loại bỏ theo cách thông thừng. Lúc này ta sử dụng `#!bash kill` ở cấp độ `-9`. Ví dụ:

``` bash
$ kill -9 137
```
