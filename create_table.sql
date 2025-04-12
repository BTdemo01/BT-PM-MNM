-- =====================================================================
-- Script tạo Cơ sở dữ liệu Quản lý Bán hàng và Kho hàng (Không phân vùng)
-- Bao gồm: Khách hàng, Cửa hàng, Sản phẩm, Khuyến mãi,
--          Kho hàng, Người dùng, Tồn kho, Phiếu nhập/xuất.
-- Đã kiểm tra và thêm Khóa chính, NOT NULL, DEFAULT values.
-- =====================================================================

-- Tạo bảng Khách Hàng
CREATE TABLE KhachHang (
    MaKhachHang INTEGER PRIMARY KEY,
    SoDienThoai VARCHAR(20) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    DiemThanThiet INTEGER NOT NULL DEFAULT 0,
    NgayTao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Tạo bảng Cửa Hàng (SỬA: Không còn phân vùng, MaCuaHang là khóa chính duy nhất)
CREATE TABLE cuahang (
    MaCuaHang INT PRIMARY KEY,  -- MaCuaHang là khóa chính duy nhất
    ten VARCHAR(100) NOT NULL,
    dia_chi VARCHAR(200) NOT NULL,
    khu_vuc VARCHAR(10) NOT NULL -- Vẫn giữ cột khu vực để lọc/phân loại nếu cần
);

-- Tạo bảng Sản Phẩm
CREATE TABLE SanPham (
    MaSanPham INTEGER PRIMARY KEY,
    TenSanPham VARCHAR(100) NOT NULL,
    MaVach VARCHAR(50) NOT NULL,
    MoTa TEXT NOT NULL,
    DonGia DECIMAL(10, 2) NOT NULL
);

-- Tạo bảng Khuyến Mãi
CREATE TABLE KhuyenMai (
    MaKhuyenMai INTEGER PRIMARY KEY,
    Loai VARCHAR(50) NOT NULL,
    GiaTri DECIMAL(10, 2) NOT NULL,
    NgayBatDau TIMESTAMP NOT NULL,
    NgayKetThuc TIMESTAMP NOT NULL,
    DieuKien TEXT NOT NULL
);

-- Tạo bảng Kho Hàng (SỬA: Tham chiếu đến CuaHang.MaCuaHang đơn giản)
CREATE TABLE KhoHang (
    MaKho INTEGER PRIMARY KEY,
    MaCuaHang INTEGER NOT NULL, -- Chỉ cần MaCuaHang
    SucChua INTEGER NOT NULL,
    SoLuongHienTai INTEGER NOT NULL DEFAULT 0,
    FOREIGN KEY (MaCuaHang) REFERENCES CuaHang(MaCuaHang) -- Tham chiếu khóa chính đơn giản
);

-- Tạo bảng Người Dùng
CREATE TABLE NguoiDung (
    MaNguoiDung INTEGER PRIMARY KEY,
    TenDangNhap VARCHAR(50) NOT NULL UNIQUE,
    MatKhau VARCHAR(100) NOT NULL, -- Nên lưu hash
    VaiTro VARCHAR(50) NOT NULL,
    TrangThai VARCHAR(20) NOT NULL DEFAULT 'Hoạt động'
);

-- Tạo bảng Tồn Kho (SỬA: Tham chiếu đến CuaHang.MaCuaHang đơn giản)
CREATE TABLE TonKho (
    MaTonKho INTEGER PRIMARY KEY,
    MaSanPham INTEGER NOT NULL,
    MaCuaHang INTEGER NOT NULL, -- Chỉ cần MaCuaHang
    SoLuong INTEGER NOT NULL DEFAULT 0,
    MucTonToiThieu INTEGER NOT NULL DEFAULT 0,
    FOREIGN KEY (MaSanPham) REFERENCES SanPham(MaSanPham),
    FOREIGN KEY (MaCuaHang) REFERENCES CuaHang(MaCuaHang) -- Tham chiếu khóa chính đơn giản
);

-- Tạo bảng Sản Phẩm Khuyến Mãi
CREATE TABLE SanPhamKhuyenMai (
    MaSanPham INTEGER NOT NULL,
    MaKhuyenMai INTEGER NOT NULL,
    PRIMARY KEY (MaSanPham, MaKhuyenMai),
    FOREIGN KEY (MaSanPham) REFERENCES SanPham(MaSanPham),
    FOREIGN KEY (MaKhuyenMai) REFERENCES KhuyenMai(MaKhuyenMai)
);

-- Tạo bảng Phiếu Nhập Hàng
CREATE TABLE PhieuNhapHang (
    MaPhieuNhap INTEGER PRIMARY KEY,
    MaKho INTEGER NOT NULL,
    MaNguoiDung INTEGER NOT NULL,
    NgayNhap TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    TongSoLuong INTEGER NOT NULL DEFAULT 0,
    FOREIGN KEY (MaKho) REFERENCES KhoHang(MaKho),
    FOREIGN KEY (MaNguoiDung) REFERENCES NguoiDung(MaNguoiDung)
);

-- Tạo bảng Chi Tiết Nhập Hàng
CREATE TABLE ChiTietNhapHang (
    MaPhieuNhap INTEGER NOT NULL,
    MaSanPham INTEGER NOT NULL,
    SoLuong INTEGER NOT NULL CHECK (SoLuong > 0),
    DonGia DECIMAL(10, 2) NOT NULL CHECK (DonGia >= 0),
    PRIMARY KEY (MaPhieuNhap, MaSanPham),
    FOREIGN KEY (MaPhieuNhap) REFERENCES PhieuNhapHang(MaPhieuNhap),
    FOREIGN KEY (MaSanPham) REFERENCES SanPham(MaSanPham)
);

-- Tạo bảng Phiếu Xuất Hàng
CREATE TABLE PhieuXuatHang (
    MaPhieuXuat INTEGER PRIMARY KEY,
    MaKho INTEGER NOT NULL,
    MaNguoiDung INTEGER NOT NULL,
    NgayXuat TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    TongSoLuong INTEGER NOT NULL DEFAULT 0,
    FOREIGN KEY (MaKho) REFERENCES KhoHang(MaKho),
    FOREIGN KEY (MaNguoiDung) REFERENCES NguoiDung(MaNguoiDung)
);

-- Tạo bảng Chi Tiết Xuất Hàng
CREATE TABLE ChiTietXuatHang (
    MaPhieuXuat INTEGER NOT NULL,
    MaSanPham INTEGER NOT NULL,
    SoLuong INTEGER NOT NULL CHECK (SoLuong > 0),
    DonGia DECIMAL(10, 2) NOT NULL CHECK (DonGia >= 0),
    PRIMARY KEY (MaPhieuXuat, MaSanPham),
    FOREIGN KEY (MaPhieuXuat) REFERENCES PhieuXuatHang(MaPhieuXuat),
    FOREIGN KEY (MaSanPham) REFERENCES SanPham(MaSanPham)
);



-- Lưu ý: Khi INSERT vào KhoHang và TonKho, chỉ cần cung cấp MaCuaHang.
-- Ví dụ:
-- INSERT INTO KhoHang (MaKho, MaCuaHang, SucChua, SoLuongHienTai) VALUES (1, 1, 1000, 500);
-- INSERT INTO TonKho (MaTonKho, MaSanPham, MaCuaHang, SoLuong, MucTonToiThieu) VALUES (1, 1, 1, 100, 10);

-- =====================================================================
-- Kết thúc Script
-- =====================================================================
