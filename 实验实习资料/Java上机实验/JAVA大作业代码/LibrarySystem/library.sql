create database library;

use library;

create table users
(
   user_id              char(10) not null,
   user_name            char(20),
   user_pass            char(32),
   primary key (user_id)
);

create table books
(
   book_id              int(10) not null auto_increment,
   book_name            char(20),
   book_author          char(20),
   book_publisher       char(20),
   book_classify        char(20),
   book_status          int(1),  /*0表示已被借阅，1表示可借阅*/
   primary key (book_id)
);

create table borrows
(
   borrow_id            int(10) not null auto_increment,
   user_id              char(20),
   book_id              int(10),
   borrow_date          char(60),
   return_date          char(60),
   primary key (borrow_id)
);


INSERT INTO `library`.`users` VALUES
('root', 'root', 'root');
