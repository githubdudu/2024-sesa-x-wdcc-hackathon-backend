
DROP TABLE IF EXISTS Article;
--article_id, like, title, content, release_timestamp can't be null.
--image, edit_timestamp can be null 
CREATE TABLE
    Article (
        article_id INTEGER PRIMARY KEY,
        image TEXT,--not every article need a image
        like INTEGER DEFAULT 0 NOT NULL,
        title TEXT NOT NULL,
        content TEXT NOT NULL,
        release_timestamp DATETIME NOT NULL,        
        edit_timestamp DATETIME,
        username TEXT NOT NULL,
        FOREIGN KEY (username) REFERENCES User(username) ON DELETE CASCADE
    );
INSERT INTO
    Article (
        article_id,
        image,
        like,
        title,
        content,
        release_timestamp,
        edit_timestamp,
        username
    )
VALUES(1, 'image1.png', 10, 'First Article', 'This is the content of the first article.', '2023-01-01 10:00:00', '2023-01-02 11:00:00','johndoe'),
    (2, NULL, 5, 'Second Article', 'This is the content of the second article.', '2023-01-05 12:00:00', NULL,'johndoe'),
    (3, 'image3.png', 20, 'Third Article', 'This is the content of the third article.', '2023-01-10 14:00:00', '2023-01-11 15:00:00','johndoe'),
    (4, 'image4.png', 0, 'Fourth Article', 'This is the content of the fourth article.', '2023-01-15 16:00:00', NULL,'johndoe'),
    (5, NULL, 15, 'Fifth Article', 'This is the content of the fifth article.', '2023-01-20 18:00:00', '2023-01-21 19:00:00','johndoe');

    SELECT * FROM Article;