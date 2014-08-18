#FIO---Test-performance-hard-disk
================================

#I. Giới thiệu về FIO 

FIO viết tắt của Flexible IO Tester là công cụ được sử dụng để cho phép test hiệu năng của IO. 

#II. FIO làm việc như thế nào

Bước đầu tiên là mô phỏng các công việc, sau đó viết viết 1 job file mô phỏng quá trình cài đặt. Trong job file sẽ chứa các phân đoạn global được sử dụng để chia sẻ các parameters, một hoặc nhiều tiến trình có thể được đặt trong file job này. Khi file job này chạy sẽ phân tích file và thiết lập mọi thứ như miêu tả. Trong file job có thể chứa các parameter cơ bản sau:
#III. Quá trình tiến hành kiểm tra
##3.1 Quá trình tạo 
- B1: Add 1 ổ cứng vào
- B2: Tạo partition và mount vào 1 thư mục
- B3: Chạy lệnh sau: # apt-get install fio
- B4: Tạo 1 file như sau: #vi randread.fio với nội dung như sau:

```sh 
[randread]
ioengine=libaio
iodepth=1
rw=randread
bs=4k,4k
direct=1
numjobs=1
size=500m
directory=/partition/data
```

Giải thích một số parameters:
 rw = randread: Đọc file theo đọc ngẫu nhiên
 Có thể nhận nhưng giá trị sau đây:
 read:            Đọc tuần tự
 write:           Ghi tuần tự
 randwrite:       Ghi Random
 randread:        Đọc random
 rw,readwrite:    Cả đọc và ghi tuần tự
 randrw:          Cả đọc và ghi random
 bs = 4k,4k: block size là 4k
 numjobs = 1: 1 tiến trình được thực hiện 
 size = 500m: Quá trình đọc file là 500m
 directory = /partition/data: kiểm tra test trên thư mục data
 
B5: Sau khi tạo xong file ta thực hiện lệnh sau: # fio randread.fio

##3.2 Một số ví dụ khác

3.2.1 Kiểm tra quá trình ghi:
```sh
[seqWrites]<br>
ioengine=libaio<br>
iodepth=8<br>
rw=write<br>
bs=4,4k<br>
direct=1<br>
numjobs=1<br>
size=1g<br>
directory=/partition/data<br>
```
3.2.2 Có thể tạo ra đồng thời nhiều quá trình ghi file bằng thay đổi giá trị numjobs
```sh
[randread]<br>
ioengine=libaio<br>
iodepth=1<br>
rw=randread<br>
numjobs=4<br>
size=500m<br>
directory=/partition/data
```
#IV. Các tài liệu tham khảo 
http://git.kernel.dk/?p=fio.git;a=blob;f=HOWTO;h=ea8730caea033ec4fce10d00ceef7256170bfd8e;hb=HEAD<br>
http://git.kernel.dk/?p=fio.git;a=tree;f=examples;h=429dbcedeb7db411f3cac0789a3413cd96b4a516;hb=HEAD<br>
http://www.linux.com/learn/tutorials/442451-inspecting-disk-io-performance-with-fio/<br>
