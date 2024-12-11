CREATE VIEW PenggunaAdmin AS
SELECT 
    u.userID AS AdminID,
    u.name AS AdminName,
    u.email AS AdminEmail
FROM Users u
WHERE u.isAdmin = 1;