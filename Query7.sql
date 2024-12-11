-- Menampilkan Nama Pelanggan dari daftar table USers yang isAdmin = 0 / pelanggan --

CREATE VIEW Pelanggan AS
SELECT 
    u.userID AS IDPengguna,
    u.name AS Nama,
    u.email AS Email
FROM Users u
WHERE u.isAdmin = 0;