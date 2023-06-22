CREATE TABLE users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  login VARCHAR(50),
  password VARCHAR(255)
);

CREATE TABLE meetings (
  id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  creation_date DATETIME,
  FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE dates (
  id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  meeting_id INT,
  date DATETIME,
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (meeting_id) REFERENCES meetings(id)
);

CREATE TABLE answers (
  id INT PRIMARY KEY AUTO_INCREMENT,
  user_name VARCHAR(50),
  date_id INT,
  meeting_id INT,
  response INT,
  FOREIGN KEY (date_id) REFERENCES dates(id),
  FOREIGN KEY (meeting_id) REFERENCES meetings(id)
);

INSERT INTO users (login, password) VALUES ('user1', 'password1');
INSERT INTO users (login, password) VALUES ('user2', 'password2');
-- Insérez d'autres données si nécessaire

