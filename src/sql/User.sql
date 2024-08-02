DROP TABLE IF EXISTS User_likes_Article;
DROP TABLE IF EXISTS Comment;
DROP TABLE IF EXISTS Article;
DROP TABLE IF EXISTS User;

CREATE TABLE
    User (
        username TEXT PRIMARY KEY NOT NULL,
        password TEXT NOT NULL,
        date_of_birth DATE NOT NULL,
        description TEXT,
        real_first_name TEXT NOT NULL,
        real_last_name TEXT NOT NULL,
        avatar TEXT NOT NULL,
        is_admin BOOLEAN
    );

INSERT INTO
    User (
        username,
        password,
        date_of_birth,
        description,
        real_first_name,
        real_last_name,
        avatar,
        is_admin
    )
VALUES
    (
        'johndoe',
        'password123',
        '1990-05-15',
        'A regular user',
        'John',
        'Doe',
        'avatar1.png',
        FALSE
    ),
    (
        'janedoe',
        'securepass',
        '1985-08-25',
        'An admin user',
        'Jane',
        'Doe',
        'avatar2.png',
        TRUE
    ),
    (
        'alexsmith',
        'mypassword',
        '2000-01-10',
        'Loves coding',
        'Alex',
        'Smith',
        'avatar3.png',
        FALSE
    ),
    (
        'emilyjones',
        'pass1234',
        '1992-07-19',
        NULL,
        'Emily',
        'Jones',
        'avatar4.png',
        FALSE
    ),
    (
        'michaelbrown',
        'mypass',
        '1988-12-30',
        'Admin and developer',
        'Michael',
        'Brown',
        'avatar5.png',
        TRUE
    );

SELECT
    *
FROM
    User;