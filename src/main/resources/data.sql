INSERT INTO users (email, encryptedpassword, enabled)
VALUES ('pateishv@sheridancollege.ca', '$2a$10$NewHashForPateishv', 1);
INSERT INTO users (email, encryptedpassword, enabled)
VALUES ('dobariax@sheridancollege.ca', '$2a$10$NewHashForDobariax', 1);

--password for dobariax is 1234 (as Admin)
--password for pateishv is 1111 (as User)

INSERT INTO roles (rolename)
VALUES ('ROLE_ADMIN');  --1 admin
INSERT INTO roles (rolename)
VALUES ('ROLE_USER'); --2 user

INSERT INTO user_role (userid, roleid)
VALUES (1, 1);
INSERT INTO user_role (userid, roleid)
VALUES (2, 2);


ALTER TABLE reviews
    ADD CONSTRAINT book_review_fk FOREIGN KEY (bookId)
        REFERENCES books (id);

INSERT INTO books (title, author)
VALUES ('The Power of Habit', 'Charles Duhigg');

INSERT INTO books (title, author)
VALUES ('The Alchemist', 'Paulo Coelho');

INSERT INTO reviews (text, bookId)
VALUES ('An insightful book about the science of habits and how they can be changed.', 3);

INSERT INTO reviews (text, bookId)
VALUES ('A captivating story about following your dreams and discovering your personal legend.', 4);

