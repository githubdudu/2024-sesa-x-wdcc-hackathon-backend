DROP TABLE IF EXISTS Comment;

CREATE TABLE
    Comment (
        comment_id INTEGER PRIMARY KEY,
        content TEXT NOT NULL,
        timestamp DATETIME,
        article_id INTEGER NOT NULL,
        comment_id_parent INTEGER,
        FOREIGN KEY (article_id) REFERENCES Article (article_id) ON DELETE CASCADE,
        FOREIGN KEY (comment_id_parent) REFERENCES Comment (comment_id) ON DELETE CASCADE
    );

INSERT INTO
    Comment (comment_id, content, timestamp, article_id, comment_id_parent)
VALUES
    (
        1,
        'This is a test comment.',
        '2024-05-21 12:34:56',
        1,
        NULL
    ),
    (
        2,
        'Another comment for testing.',
        '2024-05-20 09:00:00',
        1,
        1
    ),
    (
        3,
        'Testing with different time.',
        '2024-05-19 15:45:30',
        1,
        2
    ),
    (
        4,
        'Final test comment.',
        '2024-05-18 18:30:15',
        1,
        NULL
    );

SELECT
    *
FROM
    Comment;