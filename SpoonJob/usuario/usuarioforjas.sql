CREATE USER 'usuarioforjas'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON ow.* TO 'usuarioforjas'@'localhost';
GRANT ALL PRIVILEGES ON sf.* TO 'usuarioforjas'@'localhost';
GRANT ALL PRIVILEGES ON proyectotin.* TO 'usuarioforjas'@'localhost';
GRANT ALL PRIVILEGES ON mysql.* TO 'usuarioforjas'@'localhost';