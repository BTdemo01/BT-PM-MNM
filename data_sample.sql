
-- =====================================================================
-- Thêm dữ liệu mẫu
-- =====================================================================

-- Thêm dữ liệu vào bảng CuaHang (Giữ nguyên)
INSERT INTO cuahang (MaCuaHang, ten, dia_chi, khu_vuc) VALUES
(1, 'ATT Bui Vien', 'Bui Vien Street, Quận 1, gần Phạm Ngũ Lão', 'HCM'),
(2, 'ATT Nguyen Hue', 'Nguyen Hue Walking Street, Quận 1, gần Lê Lợi', 'HCM'),
(3, 'ATT Pham Ngu Lao', 'Pham Ngu Lao Street, Quận 1, gần Đề Thám', 'HCM'),
(4, 'ATT Ho Thi Ky', 'Ho Thi Ky Street, Quận 10, gần Hùng Vương', 'HCM'),
(5, 'ATT Su Van Hanh', 'Su Van Hanh Street, Quận 10, gần Ngô Gia Tự', 'HCM'),
(6, 'ATT Phan Dinh Phung', 'Phan Dinh Phung Street, gần Mai Xuân Thưởng', 'HN'),
(7, 'ATT Thanh Nien', 'Thanh Nien Street, giữa Hồ Tây và Hồ Trúc Bạch', 'HN'),
(8, 'ATT Hoang Dieu', 'Hoang Dieu Street, gần Nguyễn Thái Học', 'HN'),
(9, 'ATT Hang Dao', 'Hang Dao Street, Quận Hoàn Kiếm, gần Hàng Ngang', 'HN'),
(10, 'ATT Hang Ngang', 'Hang Ngang Street, Quận Hoàn Kiếm, gần Đồng Xuân', 'HN');

-- Thêm dữ liệu vào bảng SanPham (Giữ nguyên)
INSERT INTO sanpham (masanpham, tensanpham, mavach, mota, dongia) VALUES
(1, 'Gạo Nàng Hương 5kg', '8936021210018', 'Gạo thơm cao cấp, hạt dài, ít bị gãy vụn, cơm mềm và thơm', 128500.00),
(2, 'Nước mắm Nam Ngư 500ml', '8934563138165', 'Nước mắm cốt, đậm đà hương vị truyền thống', 45000.00),
(3, 'Sữa tươi Vinamilk không đường 1L', '8934673001593', 'Sữa tươi tiệt trùng, không đường, giàu canxi và vitamin', 32000.00),
(4, 'Bánh Oreo vị Chocolate 137g', '7622201873851', 'Bánh quy socola nhân kem vani', 24500.00),
(5, 'Mỳ Hảo Hảo tôm chua cay gói 75g', '8934563133122', 'Mì ăn liền hương vị tôm chua cay', 3500.00),
(6, 'Dầu ăn Neptune 1L', '8935036203015', 'Dầu ăn tinh luyện từ dầu nành, ít béo', 45000.00),
(7, 'Nước giặt Omo 3.7kg', '8934868125243', 'Nước giặt dạng túi, sạch nhanh, thơm lâu', 165000.00),
(8, 'Sữa rửa mặt Nivea 100ml', '4005808884452', 'Sữa rửa mặt làm sạch sâu, dành cho da dầu', 85000.00),
(9, 'Bia Tiger lon 330ml', '8935013503683', 'Bia thượng hạng, vị đắng nhẹ', 15000.00),
(10, 'Nước ngọt Coca Cola 1.5L', '8935049111114', 'Nước ngọt có gas, vị cola truyền thống', 18000.00),
(11, 'Kẹo Mentos hương trái cây 37g', '8934588042025', 'Kẹo the mát nhiều hương vị trái cây', 9500.00),
(12, 'Snack Lays vị tự nhiên 95g', '8934563414281', 'Snack khoai tây chiên vị tự nhiên, giòn rụm', 19000.00),
(13, 'Giấy vệ sinh Pulppy 10 cuộn', '8936033730010', 'Giấy vệ sinh 3 lớp, mềm mại, dai', 73000.00),
(14, 'Nước rửa chén Sunlight 750g', '8934868173428', 'Nước rửa chén dạng gel, khử mùi tanh, sạch dầu mỡ', 28000.00),
(15, 'Bột giặt Omo 6kg', '8934868141212', 'Bột giặt dạng túi, sạch các vết bẩn cứng đầu', 235000.00);

-- =====================================================================
-- Thêm dữ liệu mẫu cho các bảng còn lại
-- =====================================================================

-- Dữ liệu cho bảng KhachHang (10 bản ghi)
INSERT INTO KhachHang (MaKhachHang, SoDienThoai, Email, DiemThanThiet, NgayTao) VALUES
(1, '0901234567', 'nguyen.van.a@email.com', 100, '2023-01-15 10:30:00'),
(2, '0912345678', 'tran.thi.b@email.com', 150, '2023-02-20 14:45:00'),
(3, '0923456789', 'le.van.c@email.com', 75, '2023-03-10 09:15:00'),
(4, '0934567890', 'pham.thi.d@email.com', 200, '2023-04-05 16:20:00'),
(5, '0945678901', 'hoang.van.e@email.com', 50, '2023-05-12 11:00:00'),
(6, '0956789012', 'nguyen.thi.f@email.com', 125, '2023-06-18 13:30:00'),
(7, '0967890123', 'tran.van.g@email.com', 80, '2023-07-22 15:10:00'),
(8, '0978901234', 'le.thi.h@email.com', 175, '2023-08-30 10:45:00'),
(9, '0989012345', 'pham.van.i@email.com', 90, '2023-09-14 12:20:00'),
(10, '0990123456', 'hoang.thi.j@email.com', 110, '2023-10-25 17:00:00');

-- Dữ liệu cho bảng KhuyenMai (5 bản ghi)
INSERT INTO KhuyenMai (MaKhuyenMai, Loai, GiaTri, NgayBatDau, NgayKetThuc, DieuKien) VALUES
(1, 'Giảm giá', 20.00, '2025-04-01 00:00:00', '2025-04-30 23:59:59', 'Áp dụng cho đơn hàng từ 100.000 VNĐ'),
(2, 'Hoàn tiền', 50.00, '2025-05-01 00:00:00', '2025-05-15 23:59:59', 'Áp dụng cho đơn hàng trên 200.000 VNĐ'),
(3, 'Miễn phí vận chuyển', 0.00, '2025-04-10 00:00:00', '2025-04-20 23:59:59', 'Không yêu cầu giá trị đơn hàng tối thiểu'),
(4, 'Mua 1 tặng 1', 0.00, '2025-06-01 00:00:00', '2025-06-10 23:59:59', 'Chỉ áp dụng cho sản phẩm được chọn'),
(5, 'Thưởng thành viên', 100.00, '2025-07-01 00:00:00', '2025-07-31 23:59:59', 'Dành cho khách hàng có trên 500 điểm thân thiết');

-- Dữ liệu cho bảng KhoHang (10 bản ghi - Dựa trên CuaHang không phân vùng)
INSERT INTO KhoHang (MaKho, MaCuaHang, SucChua, SoLuongHienTai) VALUES
(1, 1, 1000, 500),
(2, 2, 800, 400),
(3, 3, 1200, 600),
(4, 4, 1500, 750),
(5, 5, 900, 450),
(6, 6, 1100, 550),
(7, 7, 1300, 650),
(8, 8, 1400, 700),
(9, 9, 1000, 500),
(10, 10, 950, 475);

-- Dữ liệu cho bảng NguoiDung (10 bản ghi)
INSERT INTO NguoiDung (MaNguoiDung, TenDangNhap, MatKhau, VaiTro, TrangThai) VALUES
(1, 'admin', 'hashed_password1', 'Quản trị viên', 'Hoạt động'), -- Thay 'hashed_passwordX' bằng hash mật khẩu thực tế
(2, 'user1', 'hashed_password2', 'Nhân viên', 'Hoạt động'),
(3, 'user2', 'hashed_password3', 'Nhân viên', 'Hoạt động'),
(4, 'user3', 'hashed_password4', 'Nhân viên', 'Hoạt động'),
(5, 'user4', 'hashed_password5', 'Nhân viên', 'Hoạt động'),
(6, 'user5', 'hashed_password6', 'Nhân viên', 'Hoạt động'),
(7, 'user6', 'hashed_password7', 'Nhân viên', 'Hoạt động'),
(8, 'user7', 'hashed_password8', 'Nhân viên', 'Hoạt động'),
(9, 'user8', 'hashed_password9', 'Nhân viên', 'Hoạt động'),
(10, 'user9', 'hashed_password10', 'Nhân viên', 'Hoạt động');

-- Dữ liệu cho bảng TonKho (10 bản ghi - Dựa trên CuaHang không phân vùng)
INSERT INTO TonKho (MaTonKho, MaSanPham, MaCuaHang, SoLuong, MucTonToiThieu) VALUES
(1, 1, 1, 100, 10),
(2, 2, 2, 200, 20),
(3, 3, 3, 300, 30),
(4, 4, 4, 400, 40),
(5, 5, 5, 500, 50),
(6, 6, 6, 600, 60),
(7, 7, 7, 700, 70),
(8, 8, 8, 800, 80),
(9, 9, 9, 900, 90),
(10, 10, 10, 1000, 100);

-- Dữ liệu cho bảng SanPhamKhuyenMai (10 bản ghi)
INSERT INTO SanPhamKhuyenMai (MaSanPham, MaKhuyenMai) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 1),
(7, 2),
(8, 3),
(9, 4),
(10, 5);

-- Dữ liệu cho bảng PhieuNhapHang (10 bản ghi)
INSERT INTO PhieuNhapHang (MaPhieuNhap, MaKho, MaNguoiDung, NgayNhap, TongSoLuong) VALUES
(1, 1, 1, '2025-04-01 10:00:00', 100),
(2, 2, 2, '2025-04-02 11:00:00', 200),
(3, 3, 3, '2025-04-03 12:00:00', 300),
(4, 4, 4, '2025-04-04 13:00:00', 400),
(5, 5, 5, '2025-04-05 14:00:00', 500),
(6, 6, 6, '2025-04-06 15:00:00', 600),
(7, 7, 7, '2025-04-07 16:00:00', 700),
(8, 8, 8, '2025-04-08 17:00:00', 800),
(9, 9, 9, '2025-04-09 18:00:00', 900),
(10, 10, 10, '2025-04-10 19:00:00', 1000);

-- Dữ liệu cho bảng ChiTietNhapHang (10 bản ghi)
-- Giả định mỗi phiếu nhập chỉ nhập 1 loại sản phẩm để đơn giản
INSERT INTO ChiTietNhapHang (MaPhieuNhap, MaSanPham, SoLuong, DonGia) VALUES
(1, 1, 10, 120000.00), -- Giá nhập có thể khác giá bán
(2, 2, 20, 35000.00),
(3, 3, 30, 28000.00),
(4, 4, 40, 20000.00),
(5, 5, 500, 3000.00), -- Số lượng lớn cho mỳ gói
(6, 6, 60, 40000.00),
(7, 7, 70, 150000.00),
(8, 8, 80, 75000.00),
(9, 9, 90, 13000.00),
(10, 10, 100, 15000.00);
-- Lưu ý: Có thể thêm nhiều chi tiết cho cùng 1 phiếu nhập
-- Ví dụ: INSERT INTO ChiTietNhapHang (MaPhieuNhap, MaSanPham, SoLuong, DonGia) VALUES (1, 2, 5, 35000.00);

-- Dữ liệu cho bảng PhieuXuatHang (10 bản ghi)
INSERT INTO PhieuXuatHang (MaPhieuXuat, MaKho, MaNguoiDung, NgayXuat, TongSoLuong) VALUES
(1, 1, 2, '2025-04-11 09:00:00', 5),
(2, 2, 3, '2025-04-11 09:30:00', 10),
(3, 3, 4, '2025-04-11 10:00:00', 15),
(4, 4, 5, '2025-04-11 10:30:00', 20),
(5, 5, 6, '2025-04-11 11:00:00', 250), -- Xuất nhiều mỳ gói
(6, 6, 7, '2025-04-11 11:30:00', 30),
(7, 7, 8, '2025-04-11 12:00:00', 35),
(8, 8, 9, '2025-04-11 12:30:00', 40),
(9, 9, 10, '2025-04-11 13:00:00', 45),
(10, 10, 2, '2025-04-11 13:30:00', 50);

-- Dữ liệu cho bảng ChiTietXuatHang (10 bản ghi)
-- Giả định mỗi phiếu xuất chỉ xuất 1 loại sản phẩm, lấy giá bán từ bảng SanPham
INSERT INTO ChiTietXuatHang (MaPhieuXuat, MaSanPham, SoLuong, DonGia) VALUES
(1, 1, 5, 128500.00),
(2, 2, 10, 45000.00),
(3, 3, 15, 32000.00),
(4, 4, 20, 24500.00),
(5, 5, 250, 3500.00),
(6, 6, 30, 45000.00),
(7, 7, 35, 165000.00),
(8, 8, 40, 85000.00),
(9, 9, 45, 15000.00),
(10, 10, 50, 18000.00);
-- Lưu ý: Đơn giá ở đây nên lấy theo giá bán tại thời điểm xuất hàng.
-- Có thể thêm nhiều chi tiết cho cùng 1 phiếu xuất.

-- =====================================================================
-- Kết thúc thêm dữ liệu mẫu
-- =====================================================================

