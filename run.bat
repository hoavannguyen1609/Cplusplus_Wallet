::Tắt hiển thị các lệnh khi batch file chạy, chỉ hiện kết quả.
@echo off

::Thiết lập kích thước cửa sổ 
::Console thành 200 cột và 60 hàng, để không bị “chạy ra ngoài” màn hình khi in nhiều dòng.
mode con: cols=200 lines=60
:: Di chuyển đến thư mục chứa file .bat
cd /d "%~dp0"

:: Biên dịch chương trình
g++ -o main main.cpp -static

:: Chạy chương trình
main.exe
::Dừng màn hình Console và chờ người dùng nhấn phím để đóng cửa sổ,
::giúp bạn xem kết quả chạy cuối cùng.
pause
