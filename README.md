# BT-PM-MNM
Bài báo cáo môn Phát triển phần mềm mã nguồn mở:
https://drive.google.com/drive/folders/1-6vacjbMUGUZbmOkao6G3ZvlXN2nBg78?usp=sharing

TẢI VÀ CÀI ĐẶT PROJECT
**Cài đặt ứng dụng**
visual studio code (visual xanh), PostgreSQL, Postman, Node.js '

**Cài đặt môi trường**
```bash

```

---

---

📖 Hướng Dẫn Chạy Project Django Trên VS Code

✅ 1. Clone Project từ GitHub
```bash
git clone <link_git_project>
cd <tên_thư_mục_project>
```

---

✅ 2. Mở project bằng VS Code
```bash
code .
```

---

✅ 3. Tạo virtual environment (môi trường ảo)
```bash
python -m venv venv
```
Kích hoạt môi trường ảo:
- **Windows:**
```bash
.\venv\Scripts\activate
```
- **Mac/Linux:**
```bash
source venv/bin/activate
```

---

✅ 4. Cài đặt các thư viện cần thiết
```bash
pip install -r requirements.txt
```

---

## ✅ 5. Tạo file `.env` (nếu có)
- Dựa vào file `.env.example` hoặc đọc hướng dẫn trong project
```bash
cp .env.example .env
```
- Cài thêm thư viện đọc `.env` nếu cần:
```bash
pip install python-decouple
```
hoặc
```bash
pip install django-environ
```

---

## ✅ 6. Chạy migrations để tạo database
```bash
python manage.py migrate
```

---

## ✅ 7. (Optional) Tạo superuser để vào admin
```bash
python manage.py createsuperuser
```

---

## ✅ 8. Chạy server Django
```bash
python manage.py runserver
```
- Truy cập: [http://127.0.0.1:8000](http://127.0.0.1:8000)

---

## ✅ 9. Cài Extension hỗ trợ trong VS Code (khuyên dùng)
- Python (Microsoft)
- Django
- Pylance
- .env

---

## ✅ 10. Debug nhanh trong VS Code (optional)
- Vào `Run and Debug (Ctrl+Shift+D)`
- Chọn cấu hình `Python Django`
- Bấm **Run**

---

## 🎉 DONE! Project đã chạy thành công trên VS Code.


---

## 📞 Gặp lỗi? Xem kỹ log hoặc nhắn mình hỗ trợ fix lỗi!
```
