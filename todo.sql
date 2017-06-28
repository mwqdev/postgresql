CREATE TABLE todos
(
  id           SERIAL,
  title        VARCHAR(256) NOT NULL,
  details      TEXT,
  priority     INT          NOT NULL DEFAULT 1,
  created_at   TIMESTAMP    NOT NULL DEFAULT NOW(),
  completed_at TIMESTAMP,
  PRIMARY KEY (id)
);

INSERT INTO todos (
  title, priority)
VALUES ('Take out the trash', 8);

INSERT INTO todos (
  title, priority, completed_at)
VALUES ('Do the dishes', 5, 'tomorrow');

INSERT INTO todos (
  title, priority)
VALUES ('Walk the dog', 7);

INSERT INTO todos (
  title, priority, details)
VALUES ('Do homework', 10, 'details text');

INSERT INTO todos (
  title, details)
VALUES ('Do the laundry', 'details text');

SELECT *
FROM todos
WHERE completed_at IS NULL
ORDER BY id ASC;

SELECT *
FROM todos
WHERE priority > 1
ORDER BY id ASC;

UPDATE todos
SET completed_at = NOW()
WHERE id = 4;

DELETE FROM todos
WHERE completed_at IS NOT NULL;