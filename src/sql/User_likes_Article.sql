
DROP TABLE IF EXISTS User_likes_Article;

CREATE TABLE
    User_likes_Article (
        username TEXT NOT NULL,
        article_id INTEGER NOT NULL,
        PRIMARY KEY (username, article_id),
        FOREIGN KEY (username) REFERENCES User(username) ON DELETE CASCADE,
        FOREIGN KEY (article_id) REFERENCES Article(article_id) ON DELETE CASCADE
    );

INSERT INTO
    User_likes_Article (username, article_id)
VALUES
    ('johndoe', 1),
    ('janedoe', 2),
    ('alexsmith', 1),
    ('alexsmith', 3),
    ('emilyjones', 4),
    ('michaelbrown', 2),
    ('michaelbrown', 3),
    ('johndoe', 5);

SELECT
    *
FROM
    User_likes_Article;