-- Active: 1689714817145@@127.0.0.1@3306@kodigo

use kodigo;



CREATE TABLE
    botcamps (
        title VARCHAR(50) NOT NULL,
        description VARCHAR(100) NOT NULL,
        start_bootcamp INT NOT NULL,
        end_bootcamp INT NOT NULL,
        moduls INT NOT NULL,
        create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        update_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    );

INSERT INTO botcamps(title, description, start_bootcamp, end_bootcamp,moduls)
VALUES("javaScript fullstack", "un bootcamp", 23-10-01, 24-2-01,2);

SELECT * FROM botcamps;


INSERT INTO botcamps(title, description, start_bootcamp, end_bootcamp,moduls)
VALUES("javaScript Front", "un bootcamp", 23-8-01, 24-1-01,2);