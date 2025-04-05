-- Tạo bảng Khách Hàng
CREATE TABLE KhachHang (
    MaKhachHang INTEGER PRIMARY KEY,
    SoDienThoai VARCHAR(20),
    Email VARCHAR(100),
    DiemThanThiet INTEGER,
    NgayTao TIMESTAMP
);

-- Tạo bảng Cửa Hàng
CREATE TABLE cuahang (
    id INT,
    ten VARCHAR(100),
    dia_chi VARCHAR(200),
    khu_vuc VARCHAR(10)
) PARTITION BY LIST (khu_vuc);


-- Tạo bảng Sản Phẩm
CREATE TABLE SanPham (
    MaSanPham INTEGER PRIMARY KEY,
    TenSanPham VARCHAR(100),
    MaVach VARCHAR(50),
    MoTa TEXT,
    DonGia DECIMAL(10, 2)
);

-- Tạo bảng Khuyến Mãi
CREATE TABLE KhuyenMai (
    MaKhuyenMai INTEGER PRIMARY KEY,
    Loai VARCHAR(50),
    GiaTri DECIMAL(10, 2),
    NgayBatDau TIMESTAMP,
    NgayKetThuc TIMESTAMP,
    DieuKien TEXT
);

-- Tạo bảng Kho Hàng
CREATE TABLE KhoHang (
    MaKho INTEGER PRIMARY KEY,
    MaCuaHang INTEGER,
    SucChua INTEGER,
    SoLuongHienTai INTEGER,
    FOREIGN KEY (MaCuaHang) REFERENCES CuaHang(MaCuaHang)
);

-- Tạo bảng Người Dùng
CREATE TABLE NguoiDung (
    MaNguoiDung INTEGER PRIMARY KEY,
    TenDangNhap VARCHAR(50),
    MatKhau VARCHAR(100),
    VaiTro VARCHAR(50),
    TrangThai VARCHAR(20)
);

-- Tạo bảng Tồn Kho
CREATE TABLE TonKho (
    MaTonKho INTEGER PRIMARY KEY,
    MaSanPham INTEGER,
    MaCuaHang INTEGER,
    SoLuong INTEGER,
    MucTonToiThieu INTEGER,
    FOREIGN KEY (MaSanPham) REFERENCES SanPham(MaSanPham),
    FOREIGN KEY (MaCuaHang) REFERENCES CuaHang(MaCuaHang)
);

-- Tạo bảng Sản Phẩm Khuyến Mãi
CREATE TABLE SanPhamKhuyenMai (
    MaSanPham INTEGER,
    MaKhuyenMai INTEGER,
    PRIMARY KEY (MaSanPham, MaKhuyenMai),
    FOREIGN KEY (MaSanPham) REFERENCES SanPham(MaSanPham),
    FOREIGN KEY (MaKhuyenMai) REFERENCES KhuyenMai(MaKhuyenMai)
);

-- Tạo bảng Phiếu Nhập Hàng
CREATE TABLE PhieuNhapHang (
    MaPhieuNhap INTEGER PRIMARY KEY,
    MaKho INTEGER,
    MaNguoiDung INTEGER,
    NgayNhap TIMESTAMP,
    TongSoLuong INTEGER,
    FOREIGN KEY (MaKho) REFERENCES KhoHang(MaKho),
    FOREIGN KEY (MaNguoiDung) REFERENCES NguoiDung(MaNguoiDung)
);

-- Tạo bảng Chi Tiết Nhập Hàng
CREATE TABLE ChiTietNhapHang (
    MaPhieuNhap INTEGER,
    MaSanPham INTEGER,
    SoLuong INTEGER,
    DonGia DECIMAL(10, 2),
    PRIMARY KEY (MaPhieuNhap, MaSanPham),
    FOREIGN KEY (MaPhieuNhap) REFERENCES PhieuNhapHang(MaPhieuNhap),
    FOREIGN KEY (MaSanPham) REFERENCES SanPham(MaSanPham)
);

-- Tạo bảng Phiếu Xuất Hàng
CREATE TABLE PhieuXuatHang (
    MaPhieuXuat INTEGER PRIMARY KEY,
    MaKho INTEGER,
    MaNguoiDung INTEGER,
    NgayXuat TIMESTAMP,
    TongSoLuong INTEGER,
    FOREIGN KEY (MaKho) REFERENCES KhoHang(MaKho),
    FOREIGN KEY (MaNguoiDung) REFERENCES NguoiDung(MaNguoiDung)
);

-- Tạo bảng Chi Tiết Xuất Hàng
CREATE TABLE ChiTietXuatHang (
    MaPhieuXuat INTEGER,
    MaSanPham INTEGER,
    SoLuong INTEGER,
    DonGia DECIMAL(10, 2),
    PRIMARY KEY (MaPhieuXuat, MaSanPham),
    FOREIGN KEY (MaPhieuXuat) REFERENCES PhieuXuatHang(MaPhieuXuat),
    FOREIGN KEY (MaSanPham) REFERENCES SanPham(MaSanPham)
);

-- Tạo partiton
CREATE TABLE cuahang_hcm PARTITION OF cuahang
FOR VALUES IN ('HCM');

CREATE TABLE cuahang_hn PARTITION OF cuahang
FOR VALUES IN ('HN');

-- thêm dữ liệu vào bảng CuaHang
-- Dữ liệu cho khu vực HCM
INSERT INTO cuahang (ten, dia_chi, khu_vuc) VALUES ('ATT Bui Vien', 'Bui Vien Street, Quận 1, gần Phạm Ngũ Lão', 'HCM');
INSERT INTO cuahang (ten, dia_chi, khu_vuc) VALUES ('ATT Nguyen Hue', 'Nguyen Hue Walking Street, Quận 1, gần Lê Lợi', 'HCM');
INSERT INTO cuahang (ten, dia_chi, khu_vuc) VALUES ('ATT Pham Ngu Lao', 'Pham Ngu Lao Street, Quận 1, gần Đề Thám', 'HCM');
INSERT INTO cuahang (ten, dia_chi, khu_vuc) VALUES ('ATT Ho Thi Ky', 'Ho Thi Ky Street, Quận 10, gần Hùng Vương', 'HCM');
INSERT INTO cuahang (ten, dia_chi, khu_vuc) VALUES ('ATT Su Van Hanh', 'Su Van Hanh Street, Quận 10, gần Ngô Gia Tự', 'HCM');

-- Dữ liệu cho khu vực HN
INSERT INTO cuahang (ten, dia_chi, khu_vuc) VALUES ('ATT Phan Dinh Phung', 'Phan Dinh Phung Street, gần Mai Xuân Thưởng', 'HN');
INSERT INTO cuahang (ten, dia_chi, khu_vuc) VALUES ('ATT Thanh Nien', 'Thanh Nien Street, giữa Hồ Tây và Hồ Trúc Bạch', 'HN');
INSERT INTO cuahang (ten, dia_chi, khu_vuc) VALUES ('ATT Hoang Dieu', 'Hoang Dieu Street, gần Nguyễn Thái Học', 'HN');
INSERT INTO cuahang (ten, dia_chi, khu_vuc) VALUES ('ATT Hang Dao', 'Hang Dao Street, Quận Hoàn Kiếm, gần Hàng Ngang', 'HN');
INSERT INTO cuahang (ten, dia_chi, khu_vuc) VALUES ('ATT Hang Ngang', 'Hang Ngang Street, Quận Hoàn Kiếm, gần Đồng Xuân', 'HN');

-- Thêm dữ liệu vào bảng SanPham
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

