#FIO---Test-performance-hard-disk
================================

#I. Giới thiệu về FIO 

FIO viết tắt của Flexible IO Tester là công cụ được sử dụng để cho phép test hiệu năng của IO. 

#II. FIO làm việc như thế nào

Bước đầu tiên là mô phỏng các công việc, sau đó viết viết 1 job file mô phỏng quá trình cài đặt. Trong job file sẽ chứa các tiến trình global được sử dụng để chia sẻ các parameters, một hoặc nhiều tiến trình có thể được đặt trong file job này. Khi file job này chạy sẽ phân tích file và thiết lập mọi thứ như miêu tả.

