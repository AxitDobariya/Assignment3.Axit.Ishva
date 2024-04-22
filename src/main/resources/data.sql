INSERT INTO users (email, encryptedpassword, enabled)
VALUES
    ('pateishv@sheridancollege.ca', '$2a$10$VeTOTsdXvxwblNQx10EhB.zgfNw0NUcl0cptrX12RTzR/bUsMAy6i', 1),
    ('dobariax@sheridancollege.ca', '$2a$10$oFFy45QcZYbJqn1eM8vZeuCuQpU6Emlif7kGAYJv9beYjMjMBNj4q', 1);

--Password: pateishv@sheridancollege.ca : 1234
--Password: dobariax@sheridancollege.ca : 1111

INSERT INTO roles (rolename)
VALUES ('ROLE_ADMIN');  --1 admin
INSERT INTO roles (rolename)
VALUES ('ROLE_USER'); --2 user

INSERT INTO user_role (userid, roleid)
VALUES (1, 1);
INSERT INTO user_role (userid, roleid)
VALUES (2, 2);


alter table reviews
    add constraint book_review_fk foreign key (bookId)
        references books (id);

INSERT INTO books (title, author)
VALUES ('The Power of Habit', 'Charles Duhigg');

INSERT INTO books (title, author)
VALUES ('The Alchemist', 'Paulo Coelho');

