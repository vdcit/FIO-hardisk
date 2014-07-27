#FIO---Test-performance-hard-disk
================================

#I. Giới thiệu về FIO 

FIO viết tắt của Flexible IO Tester là công cụ được sử dụng để cho phép test hiệu năng của IO. 

#II. FIO làm việc như thế nào

Bước đầu tiên là mô phỏng các công việc, sau đó viết viết 1 job file mô phỏng quá trình cài đặt. Trong job file sẽ chứa các phân đoạn global được sử dụng để chia sẻ các parameters, một hoặc nhiều tiến trình có thể được đặt trong file job này. Khi file job này chạy sẽ phân tích file và thiết lập mọi thứ như miêu tả. Trong file job có thể chứa các parameter cơ bản sau:
#III. Quá trình tiến hành kiểm tra
B1: Add 1 ổ cứng vào
B2: Tạo partition và mount vào 1 thư mục 
B3: Chạy lệnh sau: #apt-get install fio
B4: Tạo 1 file như sau: #vi randread.fio với nội dung như sau:
[randread]
ioengine=libaio
iodepth=1
rw=randread
bs=4k,4k
direct=1
numjobs=1
size=500m
directory=/partition/data

Giải thích một số parameter: 
 rw = randread: Đọc file theo đọc ngẫu nhiên
 bs = 4k,4k: block size là 4k
 numjobs = 1: 1 tiến trình được thực hiện 
 size = 500m: Quá trình đọc file là 500m
 directory: 
