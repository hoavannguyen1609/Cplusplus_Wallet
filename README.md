# Hệ thống đăng nhập và đăng ký tài khoản và quản lý ví điểm thưởng

## I. Giới thiệu dự án

Chương trình ví điện tử là một ứng dụng được viết bằng ngôn ngữ lập trình C++ nhằm mô phỏng các chức năng của một ví điện tử. Người dùng có thể thực hiện các thao tác như đăng ký tài khoản, đăng nhập, nạp điểm, chuyển điểm, xác thực OTP, đổi mật khẩu, cập nhật thông tin cá nhân, và xem lịch sử giao dịch. Hệ thống hỗ trợ vai trò quản lý với các chức năng như đăng ký người dùng, cập nhật thông tin người dùng khác, và xem danh sách người dùng. Dữ liệu được lưu trữ cục bộ trong các tệp văn bản với cơ chế sao lưu tự động vào các tệp backup_users.txt và backup_wallets.txt. Ứng dụng đảm bảo tính an toàn thông qua xác thực OTP và mã hóa mật khẩu cơ bản.

## II. Giới thiệu thành viên và phân công công việc

1.  **Họ tên**: Nguyễn Văn Hòa
    - **Vai trò**: Nhóm trưởng, Lập trình viên
    - **Công việc thực hiện**:
      - Quản lý nhóm, phân công công việc.
      - Phân tích, thiết kế mã nguồn chính.

2.  **Họ tên**: Lê Anh Hoàng Hai
    - **Vai trò**: Lập trình viên
    - **Công việc thực hiện**:
      - Tìm hiểu cách tạo OTP (One Time Password).
      - Xây dựng chức năng quản lý ví.
      - Xây dựng chức năng chuyển điểm thưởng.

3.  **Họ tên**: Nguyễn Sỹ Thành Hưng
    - **Vai trò**: Lập trình viên
    - **Công việc thực hiện**:
      - Xây dựng chức năng đăng nhập, đăng ký.
      - Xây dựng chức năng quản lý tài khoản người dùng.

4.  **Họ tên**: Trần Tăng Dương
    - **Vai trò**: Kiểm thử, Tài liệu dự án
    - **Công việc thực hiện**:
      - Kiểm thử phần mềm.
      - Viết tài liệu dự án.
      - Viết test case.

## III. Đặc tả chức năng

   ### A. Chức năng dành cho quản trị viên:

   1. **Đăng nhập**:
      - Kiểm tra tên đăng nhập và mật khẩu, cho phép truy cập hệ thống.
      
   2. **Xem danh sách tài khoản**:
      - Xem dach sách tài khoản người dùng đang có trong hệ thống.

   3. **Tạo tài khoản**:
      - Tạo tài khoản cho người dùng.

   4. **Lịch sử giao dịch**:
      - Xem lịch sử giao dịch điểm.

   ### B. Chức năng dành cho người dùng:

   1. **Đăng ký**:
      - Nhập các thông tin cần thiết để tạo tài khoản mới.

   2. **Đăng nhập**:
      - Kiểm tra tên đăng nhập và mật khẩu, cho phép truy cập hệ thống.

   3. **Xem thông tin**:
      - Xem thông tin của tài khoản.

   4. **Cập nhật thông tin**:
      - Thay đổi thông tin của tài khoản.
      - Thay đổi mật khẩu của tài khoản.
      - Khi thay đổi thông tin của tài khoản đều phải xác thực OTP.

   5. **Chuyển điểm**:
      - Chuyển điểm đến tài khoản khác, yêu cầu xác thực OTP và kiểm tra số dư.

   9. **Lưu dữ liệu**:
      - Tự động lưu thông tin người dùng và ví vào tệp văn bản, với sao lưu tự động.

   ### C. Cấu trúc file dữ liệu

   1. Thư mục **store_information** lưu trữ đối tượng class **Information**(với tên file là "**user_name**" của class **Account**).

   2. Thư mục **store_password** lưu trữ mật khẩu(với tên file là "**user_name**" của class **Account**).

   3. Thư mục **store_wallet** lưu trữ tiền(với tên file là "**ID**" của class **Information**) và trong này lưu trữ ví tổng (tên là "**total_wallet.txt**") sẽ trích ra radom từ 0 - > giá trị lớn nhất của kiểu dữ liệu ```unsigned short```.

   4. Thư mục **user_transaction_history** lưu trữ lịch sử giao dịch của từng người dùng (với tên file là "**ID**" của class **Information**).

   5. File **transaction_log.txt** lưu trữ lịch sử giao dịch của toàn hệ thống.

## IV. Lưu đồ thuật toán

![image](https://github.com/user-attachments/assets/ae4b8bd2-9760-4883-a8ad-91964fb9dcc9)

## V. Cấu hình môi trường

   1. Tải Visual Studio Code
      - 1.1 Truy cập Visual Studio Code.
      - 1.2 Tải xuống và cài đặt phiên bản phù hợp với hệ điều hành của bạn.

   2. Cài đặt Compiler C++(làm theo link sau) Windows: [https://code.visualstudio.com/docs/cpp/config-mingw](https://code.visualstudio.com/docs/cpp/config-mingw)

   3. Cài đặt git.
      - 3.1. Truy cập vào [https://git-scm.com/downloads/win](https://git-scm.com/downloads/win), và tải 1 trong 2 bản "Standalone Installer" tương thích với máy.
      - 3.2. Tạo tài khoản trên [https://github.com](https://github.com), nếu chưa có.

   4. Thiết lập hệ thống trên github.
      - 4.1. Tạo 1 Repositories trên Github ([https://github.com](https://github.com))
      - 4.2. Truy cập đường link [https://github.com/hoavannguyen1609/Cplusplus_Wallet.git](https://github.com/hoavannguyen1609/Cplusplus_Wallet.git), chọn mục "code" và thực hiện lấy toàn bộ code thuộc nhánh **develop** về.
      - 4.3. Truy vẫn vào Repositories vừa tạo ở bước 4.1 thực hiện đẩy toàn bộ code đã lấy được ở bước 4.2 lên nhánh "**main**".

   5. Thiết lập chương trình kết nối với hệ thống.
      - 5.1. Tạo 1 folder lưu trữ Repositories vừa tạo ở bước 4.
      - 5.2. Cấu hình Git trên máy tính:
         - Gõ:
            - ```git config --global user.name "Tên của bạn"```
            - ```git config --global user.email "email@gmail.com"```
         - Thay "**Tên của bạn**" và "**email@gmail.com**" bằng tên và email của bạn đã dùng trên GitHub.
      - 5.3. Truy vậy vào folder vừa tạo ở bước 5.1, click chuột phải > Git Bash
         - Gõ:
            - ```git init```
            - ```git branch -M main```
            - ```git remote add origin "URL của remote repository vừa tạo ở bước 4.1"```
            - ```git pull origin main```

   6. Để chạy chương trình vào folder vừa tạo ở bước 5.1 và double click vào run.bat để sử dụng.

## VI. Sơ lược hệ thống

   - Tài khoản của manager năm trong class **Console** của file header phần private dạng như sau:
      - ```const std::un_manager = "admin"```, (tài khoản)
      - ```const std::pw_manager = "admin1234"``` (mật khẩu)
   - có thể thay đổi bằng cách thay thế "**admin**" và "**admin1234**" bằng tài khoản hoặc mật khẩu khác mong muốn.

   - class **User** kế thừa public class **Information** và "has-a" class **Account**.
   - class **Console** "has-a" class **User**, chứa tài khoản của manager và dùng để thực hiện các năng hệ thống.
   - ```namespace``` **Cloud** dùng để sử dụng để sao lưu và phục hồi dữ liệu hệ thống trên GitHub
   - ```namespace``` **gotp** dùng để tạo, hiện thị và xác thực OTP.
   - ```namespace``` **Menu** dùng để hiện thị các chức năng hệ thống.
   - Một file **main.cpp** dùng để chạy chương trình khi double click vào **run.bat**
   - Các file còn lại trừ folder thư viện băm kiểu **brcypt** cho mật khẩu (thư viện này tải bên ngoài về).
   
   - Mọi thay đổi điều được sao lưu và khi gặp lỗi thì lỗi hệ thống sẽ tự restore.
   - Hệ thống này chưa được tối ưu về mặt thuật toán và bộ nhớ nên sẽ có đôi lúc khá chậm.

## VII. Tài liệu tham khảo

- Tài liệu C++ từ trang [cppreference.com](https://en.cppreference.com/w/).
- Diễn đàn thảo luận [StackOverflow](https://stackoverflow.com/).
- Trang tài liệu học lập trình: [GeeksforGeeks](https://www.geeksforgeeks.org/cpp-programming-language/).
- Tài liệu về quản lý tệp và bảo mật trong C++: [cplusplus.com](https://www.cplusplus.com/).
- AI (Artificial Intelligence): [Gemini](https://gemini.google.com/), [ChatGPT](https://chatgpt.com/)