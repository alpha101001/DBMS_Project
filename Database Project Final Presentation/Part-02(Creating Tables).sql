
--LAB 01:

CREATE TABLE users (
    User_ID INTEGER PRIMARY KEY,
    User_name VARCHAR2(20),
    E_mail VARCHAR2(20),
    Password VARCHAR2(10) unique, --lab 03 (using unique key constraints)
    Registration_date VARCHAR2(20),
    Last_login VARCHAR2(20),
    Date_of_Birth VARCHAR2(20)
);


create table category (
    Category_ID INTEGER,
    Category_name VARCHAR2(20),
    user_id INTEGER not null 
    --lab 03 (using not null key constraints
    -- foreign key (user_id) references users(User_ID)
);
----------------------------------------------------------------
--lab 03
ALTER TABLE category ADD CONSTRAINT pk_category
PRIMARY KEY (category_id);
ALTER TABLE category ADD CONSTRAINT fk_category
FOREIGN KEY (user_id) REFERENCES users(User_ID);
----------------------------------------------------------------

create table post (
    Post_ID INTEGER primary key,
    User_id integer,
    Category_ID INTEGER,
    Post_title VARCHAR2(40),
    Post_Body clob,
    Last_Update VARCHAR2(20),
    post_Time VARCHAR2(10),
    Post_Tags VARCHAR(20),
    foreign key (Category_ID) references category(Category_ID),
    foreign key (User_id) references users(User_ID)
);


create table comments (
    comment_id INTEGER primary key,
    post_id INTEGER,
    user_id INTEGER,
    comment_title VARCHAR(50),
    Time VARCHAR(15),
    foreign key (user_id) references users(User_ID)
);


create table tags (
    tag_id INTEGER primary key,
    post_id integer,
    post_tags VARCHAR2(20),
    foreign key (post_id) references post(Post_ID)
);
