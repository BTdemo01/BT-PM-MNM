# BT-PM-MNM
Bài báo cáo môn Phát triển phần mềm mã nguồn mở:
https://drive.google.com/drive/folders/1-6vacjbMUGUZbmOkao6G3ZvlXN2nBg78?usp=sharing

TẢI VÀ CÀI ĐẶT PROJECT
**Cài đặt ứng dụng**
visual studio code (visual xanh), PostgreSQL, Postman


Để chạy một project Python Django tải về từ GitHub trên **Visual Studio Code (VS Code)**, bạn làm theo các bước sau:

---

✅ 1. **Tải project về máy**
- Clone hoặc tải ZIP từ GitHub:
```bash
git clone <link_github>
```
- Hoặc tải file ZIP về, giải nén ra thư mục.

---

✅ 2. **Mở project bằng VS Code**
- Mở VS Code → `File` → `Open Folder` → Chọn thư mục project vừa tải về.

---

✅ 3. **Tạo virtual environment (khuyến nghị)**
- Mở Terminal (trong VS Code): `Terminal` → `New Terminal`
- Chạy lệnh:
```bash
python -m venv venv
```
- Kích hoạt virtual environment:
  - **Windows**:
    ```bash
    .\venv\Scripts\activate
    ```
  - **Mac/Linux**:
    ```bash
    source venv/bin/activate
    ```

---

✅ 4. **Cài đặt các thư viện cần thiết**
- Trong project, thường sẽ có file `requirements.txt`.
- Cài đặt toàn bộ thư viện bằng lệnh:
```bash
pip install -r requirements.txt
```

---

✅ 5. **Kiểm tra cấu trúc Django project**
- Xác định file `manage.py` nằm ở thư mục gốc.
- Kiểm tra file `settings.py` trong thư mục project con (nơi chứa các app, settings...).

---

✅ 6. **Chạy migrations (nếu có database)**
```bash
python manage.py migrate
```

---

✅ 7. **Chạy server Django**
```bash
python manage.py runserver
```
- Kết quả sẽ hiện URL, ví dụ:
```
Starting development server at http://127.0.0.1:8000/
```
- Mở trình duyệt → dán link để chạy.

---

✅ 8. **Cài thêm extensions hữu ích cho VS Code (nếu cần)**
- Python (Microsoft)
- Django (Bình luận syntax, gợi ý code)
- Pylance
- .env support (nếu project dùng biến môi trường)

---

✅ 9. **Lưu ý khi project dùng `.env` hoặc cấu hình đặc biệt**
- Tạo file `.env` theo mẫu (nếu có).
- Cài thêm thư viện đọc `.env`:
```bash
pip install python-decouple
```
hoặc
```bash
pip install django-environ
```

---

✅ XONG! Bạn đã chạy được project Django trên VS Code 🎉

---

👉 **Gặp lỗi nào gửi mình, mình hướng dẫn fix chi tiết!**  
Bạn muốn mình tạo file hướng dẫn mẫu luôn không?
