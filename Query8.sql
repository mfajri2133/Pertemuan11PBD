CREATE VIEW PeminjamanPerBulan AS
SELECT 
    MONTH(b.borrowDate) AS BorrowMonth,
    YEAR(b.borrowDate) AS BorrowYear,
    COUNT(b.borrowingID) AS TotalBorrowings
FROM Borrowing b
GROUP BY YEAR(b.borrowDate), MONTH(b.borrowDate)
