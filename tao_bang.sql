-- Tao bang Nhan Cung Cap
CREATE TABLE NhanCungCap (
    MaNhanCungCap VARCHAR(10) PRIMARY KEY,
    TenNhanCungCap VARCHAR(50),
    SoDienThoai VARCHAR(15),
    DiaChi VARCHAR(100)
);

-- Tao bang San Pham
CREATE TABLE SanPham (
    MaSanPham VARCHAR(10) PRIMARY KEY,
    TenSanPham VARCHAR(50),
    GiaBan DECIMAL(10, 2),
    DonMuc VARCHAR(20),
    MaNhanCungCap VARCHAR(10),
    FOREIGN KEY (MaNhanCungCap) REFERENCES NhanCungCap(MaNhanCungCap)
);

-- Tao bang Nha Hang
CREATE TABLE NhaHang (
    MaNhaHang VARCHAR(10) PRIMARY KEY,
    MaCuaHang VARCHAR(10),
    MaNhanVien VARCHAR(10),
    NgayNhap TIMESTAMP, -- Thay DATETIME bang TIMESTAMP
    TongChiPhi DECIMAL(10, 2)
);

-- Tao bang Cua Hang
CREATE TABLE CuaHang (
    MaCuaHang VARCHAR(10) PRIMARY KEY,
    TenCuaHang VARCHAR(50),
    DiaChi VARCHAR(100),
    SoDienThoai VARCHAR(15),
    MaQuanLy VARCHAR(10)
);

-- Tao bang Khach Hang
CREATE TABLE KhachHang (
    MaKhachHang VARCHAR(10) PRIMARY KEY,
    HoTen VARCHAR(50),
    SoDienThoai VARCHAR(15),
    DiaChi VARCHAR(100),
    NgaySinh TIMESTAMP, -- Thay DATETIME bang TIMESTAMP
    DiemTichLuy INT
);

-- Tao bang Nhan Vien
CREATE TABLE NhanVien (
    MaNhanVien VARCHAR(10) PRIMARY KEY,
    HoTen VARCHAR(50),
    SoDienThoai VARCHAR(15),
    MaCuaHang VARCHAR(10),
    ChucVu VARCHAR(50),
    Luong DECIMAL(10, 2),
    FOREIGN KEY (MaCuaHang) REFERENCES CuaHang(MaCuaHang)
);

-- Tao bang Chi Tiet Nhap Hang
CREATE TABLE ChiTietNhapHang (
    MaChiTietNhap INT PRIMARY KEY,
    MaNhaHang VARCHAR(10),
    MaSanPham VARCHAR(10),
    SoLuong INT,
    GiaNhap DECIMAL(10, 2),
    ThanhTien DECIMAL(10, 2),
    FOREIGN KEY (MaNhaHang) REFERENCES NhaHang(MaNhaHang),
    FOREIGN KEY (MaSanPham) REFERENCES SanPham(MaSanPham)
);

-- Tao bang Ton Kho
CREATE TABLE TonKho (
    MaTonKho VARCHAR(10) PRIMARY KEY,
    MaCuaHang VARCHAR(10),
    MaSanPham VARCHAR(10),
    SoLuong INT,
    NgayCapNhat TIMESTAMP, -- Thay DATETIME bang TIMESTAMP
    FOREIGN KEY (MaCuaHang) REFERENCES CuaHang(MaCuaHang),
    FOREIGN KEY (MaSanPham) REFERENCES SanPham(MaSanPham)
);

-- Tao bang Chi Tiet Hoa Don
CREATE TABLE ChiTietHoaDon (
    MaHoaDon VARCHAR(10) PRIMARY KEY,
    MaCuaHang VARCHAR(10),
    MaKhachHang VARCHAR(10),
    MaNhanVien VARCHAR(10),
    NgayGiaoDich TIMESTAMP, -- Thay DATETIME bang TIMESTAMP
    TongTien DECIMAL(10, 2),
    FOREIGN KEY (MaCuaHang) REFERENCES CuaHang(MaCuaHang),
    FOREIGN KEY (MaKhachHang) REFERENCES KhachHang(MaKhachHang),
    FOREIGN KEY (MaNhanVien) REFERENCES NhanVien(MaNhanVien)
);

-- Tao bang Chi Tiet Hoa Don (bang phu)
CREATE TABLE ChiTietHoaDon_Detail (
    MaChiTietHoaDon INT PRIMARY KEY,
    MaHoaDon VARCHAR(10),
    MaSanPham VARCHAR(10),
    SoLuong INT,
    GiaBan DECIMAL(10, 2),
    ThanhTien DECIMAL(10, 2),
    FOREIGN KEY (MaHoaDon) REFERENCES ChiTietHoaDon(MaHoaDon),
    FOREIGN KEY (MaSanPham) REFERENCES SanPham(MaSanPham)
);