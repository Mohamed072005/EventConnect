CREATE TABLE participants(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR (255),
    cin VARCHAR (255),
    phnumber INT (255)
)ENGINE = InnoDB;

CREATE TABLE lieu(
    id INT PRIMARY KEY AUTO_INCREMENT,
    city VARCHAR (255)
)ENGINE = InnoDB;

CREATE TABLE sponsores(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR (255)
)ENGINE = InnoDB;

CREATE Table retours(
    id INT PRIMARY KEY AUTO_INCREMENT,
    total FLOAT
)ENGINE = InnoDB;

CREATE TABLE evenements(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR (255),
    dateDebut DATE,
    dateFin DATE,
    idlieu INT,
    FOREIGN KEY (idlieu) REFERENCES lieu (id),
    idretour INT,
    FOREIGN KEY (idretour) REFERENCES retours(id)
)ENGINE = InnoDB;

CREATE TABLE sponsored(
    id INT PRIMARY KEY AUTO_INCREMENT,
    idsponsore INT,
    FOREIGN KEY (idsponsore) REFERENCES sponsores(id),
    idevent INT,
    FOREIGN KEY (idevent) REFERENCES evenements(id)
)ENGINE = InnoDB;

CREATE TABLE organizateurs(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR (255),
    email VARCHAR (255),
    password VARCHAR (255)
)ENGINE = InnoDB;

CREATE TABLE organiz(
    id INT PRIMARY KEY AUTO_INCREMENT,
    idorg INT,
    FOREIGN KEY (idorg) REFERENCES organizateurs (id),
    idevent INT,
    FOREIGN KEY (idevent) REFERENCES evenements(id)
)ENGINE = InnoDB;

CREATE TABLE billets(
    id INT PRIMARY KEY AUTO_INCREMENT,
    prix FLOAT,
    idparticipant INT,
    FOREIGN KEY (idparticipant) REFERENCES participants (id),
    idevent INT,
    FOREIGN KEY (idevent) REFERENCES evenements(id),
    idretour INT,
    FOREIGN KEY (idretour) REFERENCES retours (id)
)ENGINE = InnoDB;