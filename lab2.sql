﻿USE QLBH
GO
---cau1

---cau2
SELECT*FROM SANPHAM
order by GIABAN DESC
---cau3
GO
select TENSP from HANGSX,SANPHAM
where SANPHAM.MAHANGSX = HANGSX.MAHANGSX
AND HANGSX.TENHANG=N'SAMSUNG'
---cau4
GO	
SELECT * FROM NHANVIEN
WHERE GIOITINH=N'NỮ' AND PHONG = N'Kế toán' 
---cau5
SELECT SoHDN, SANPHAM.MASP, TenSP, TenHang, SoLuongN,DONGIAN, SOLUONGN*DONGIAN AS TienNhap, MauSac, DonViTinh,NgayNhap,TenNV,Phong
FROM Nhap
INNER JOIN SANPHAM ON NHAP.MASP = SANPHAM.MASP
INNER JOIN HangSX ON SanPham.MaHangSX = HangSX.MaHangSX
INNER JOIN NhanVien ON Nhap.MaNV = NhanVien.MaNV
ORDER BY Nhap.SoHDN ASC
---cau7
select NHAP.SOHDN, SANPHAM.MASP, SANPHAM.TENSP, NHAP.SOLUONGN, NHAP.DONGIAN, NHAP.NGAYNHAP, NHANVIEN.TENNV, NHANVIEN.PHONG
from HANGSX,NHANVIEN,SANPHAM,NHAP
where NHAP.NGAYNHAP=N'2017'
---cau9
SELECT TOP 10 SANPHAM.MASP, SANPHAM.TENSP, SANPHAM.GIABAN
FROM SANPHAM
ORDER BY GIABAN DESC
---CAU10
select *from SanPham,HANGSX
where HANGSX.TENHANG=N'SamSung' and GIABAN between 100.000 and 500.000
--CAU11
S
---