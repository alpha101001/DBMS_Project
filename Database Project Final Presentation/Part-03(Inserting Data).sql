

insert into users (user_id,user_name,e_mail,password,registration_date,last_login,date_of_birth) values (01,'Avi','Avi@gmail.com',1807053,'01-july-2022','1-august-2022','22-November-1998');

insert into users (user_id,user_name,e_mail,password,registration_date,last_login,date_of_birth) values (02,'Swassow','Swassow@gmail.com',1807064,'03-july-2022','29-july-2022','22-October-1999');

insert into users (user_id,user_name,e_mail,password,registration_date,last_login,date_of_birth) values (03,'Tashin','Tashin@gmail.com',1807083,'01-july-2022','02-august-2022','03-august-1999');

insert into users (user_id,user_name,e_mail,password,registration_date,last_login,date_of_birth) values (04,'Mehedy','Mehedy@gmail.com',1807062,'04-july-2022','01-august-2022','01-july-1996');

insert into users (user_id,user_name,e_mail,password,registration_date,last_login,date_of_birth) values (05,'Elora','Elora@gmail.com',1807112,'05-july-2022','05-august-2022','16-september-1999');

insert into users (user_id,user_name,e_mail,password,registration_date,last_login,date_of_birth) values (06,'Farhan','Farhan@gmail.com',1807094,'06-july-2022','01-august-2022','06-january-1999');

insert into users (user_id,user_name,e_mail,password,registration_date,last_login,date_of_birth) values (07,'jami','jami@gmail.com',1807093,'07-july-2022','07-august-2022','02-october-1998');

insert into users (user_id,user_name,e_mail,password,registration_date,last_login,date_of_birth) values (08,'kowshik','kowshik@gmail.com',1807105,'08-july-2022','04-august-2022','04-july-2000');

insert into users (user_id,user_name,e_mail,password,registration_date,last_login,date_of_birth) values (09,'Roni','Roni@gmail.com',1807055,'09-july-2022','09-august-2022','13-November-1997');

insert into users (user_id,user_name,e_mail,password,registration_date,last_login,date_of_birth) values (10,'Abrar','Abrar@gmail.com',1807024,'10-july-2022','04-august-2022','05-November-2001');



insert into category (category_id,category_name,User_ID) values (01,'computer',01);

insert into category (category_id,category_name,User_ID) values (02,'SQL',01);

insert into category (category_id,category_name,User_ID) values (03,'TOC',01);

insert into category (category_id,category_name,User_ID) values (04,'website',02);

insert into category (category_id,category_name,User_ID) values (05,'peripherals',02);

insert into category (category_id,category_name,User_ID) values (06,'medicine',03);

insert into category (category_id,category_name,User_ID) values (07,'drinks',03);

insert into category (category_id,category_name,User_ID) values (08,'ECE',04);

insert into category (category_id,category_name,User_ID) values (09,'cooking',05);

insert into category (category_id,category_name,User_ID) values (10,'game-development',06);

insert into category (category_id,category_name,User_ID) values (11,'politics',07);

insert into category (category_id,category_name,User_ID) values (12,'software',08);

insert into category (category_id,category_name,User_ID) values (13,'sports',08);

insert into category (category_id,category_name,User_ID) values (14,'job',09);

insert into category (category_id,category_name,User_ID) values (15,'github',10);



insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (01,01,01,'Analog computers','Many many years ago,analog computers are hard compared to computers now a days','30-july-2022','12.00AM','computer');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (02,01,02,'Why is SQL so Important?','in rdbms we use sql to find the requied data efficiently','25-july-2022','04.00PM','SQL');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (03,01,03,'Introduction of Theory of Computation','Automata theory which is also known as Theory Of Computation is a theoretical branch of Computer Science and Mathematics','28-july-2022','08.00PM','TOC');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (04,02,04,'What Does Website Mean?','A website is a collection of publicly accessible and interlinked Web pages that share a single domain name','26-july-2022','09.00PM','website');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (05,02,05,'Peripheral','a peripheral is a hardware input device or output device that gives a computer additional functionality','22-july-2022','04.00PM','peripherals');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (06,03,06,'What is medical marijuana?','Medical marijuana uses the marijuana plant or chemicals in it to treat diseases or conditions','20-july-2022','05.00PM','medicine');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (07,03,07,'Side-Effects with Allergies of Brandy','The only side effects of brandy include those equal to that of a general alcohol induced hangover','25-july-2022','07.00PM','drinks');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (08,04,08,'Benefits of studying ECE course','Expanse of ECE isnt limited to only a particular industry and the world these days aims at developing products that are multi-functioning','15-july-2022','07.00PM','ECE');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (09,05,09,'Chefs Pencil','Chefs Pencil deserves a spot on the list of best food blogs out there and On Chefs Pencil you can find information about pretty much any cuisine in the world','20-july-2022','07.00PM','cooking');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (10,06,10,'Video game development','Video game development is the process of developing a video game','20-july-2022','08.00PM','game-development');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (11,07,11,'Politics','Politics is the set of activities that are associated with making decisions in groups or other forms of power relations among individuals such as the distribution of resources or status','20-july-2022','09.00PM','politics');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (12,08,12,'Software','Software is a set of computer programs and associated documentation and data','23-july-2022','04.00PM','software');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (13,08,13,'History of basketball','The history of basketball began with its invention in 1891 in Springfield Massachusetts by Canadian physical education instructor James Naismith as a less injury prone sport than football','19-july-2022','10.00PM','sports');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (14,09,14,'How to Handle Promotion Over Peers?','you must plan on how to establish authority without compromising your relationships with the team','26-july-2022','01.00PM','job');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (15,10,15,'GitHub','GitHub is a provider of Internet hosting for software development and version control using Git','20-july-2022','09.00PM','github');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (16,01,02,'Introduction to SQL','Structure Query Language is a database query language used for storing and managing data in Relational DBMS','15-july-2022','02.00AM','SQL');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (17,01,03,'Formal Language Theory','Formal Language Theory is a branch of Computer Science and Mathematics dealing with representing languages as a collection of operations on an alphabet','12-july-2022','04.00AM','TOC');
insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (18,03,07,'Coffee','Coffee lovers around the world who reach for their favorite morning brew probably are not thinking about its health benefits or risks','17-july-2022','04.00PM','drinks');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (19,02,05,'What exactly is a mechanical keyboard?','Mechanical keyboards are more expensive and much more reliable and underneath the keycap you would find a plastic mechanism that presses down supported by a spring','28-july-2022','06.00PM','peripherals');

insert into post (post_id,User_ID,category_id,post_title,post_body,last_update,post_time,post_tags) values (20,05,09,'How are noodles made?','Pour in two cups of water bring it to boil add the noodle and the taste mixer cook it for five minuters and dish it out and then Enjoy.','14-july-2022','04.00PM','cooking');




insert into comments (comment_id,post_id,user_id,comment_title,time) values (01,02,05,'SQL is important','05.00PM');

insert into comments (comment_id,post_id,user_id,comment_title,time) values (02,05,07,'okay','05.00PM');

insert into comments (comment_id,post_id,user_id,comment_title,time) values (03,06,09,'Thanks','04.00PM');

insert into comments (comment_id,post_id,user_id,comment_title,time) values (04,03,07,'hii','02.00PM');

insert into comments (comment_id,post_id,user_id,comment_title,time) values (05,08,04,'ECE is cool','08.00PM');

insert into comments (comment_id,post_id,user_id,comment_title,time) values (06,03,03,'Compiler design as a example','05.00PM');

insert into comments (comment_id,post_id,user_id,comment_title,time) values (07,11,08,'No Comments','03.00PM');

insert into comments (comment_id,post_id,user_id,comment_title,time) values (08,20,10,'Yummyy','02.00PM');

insert into comments (comment_id,post_id,user_id,comment_title,time) values (09,15,05,'Life is on github','08.00PM');

insert into comments (comment_id,post_id,user_id,comment_title,time) values (10,17,07,'TOC is so interesting','09.00PM');

insert into comments (comment_id,post_id,user_id,comment_title,time) values (11,01,09,'Wanna know about digital computers','10.00PM');

insert into comments (comment_id,post_id,user_id,comment_title,time) values (12,04,01,'making a website using asp.net in this month','11.00PM');

insert into comments (comment_id,post_id,user_id,comment_title,time) values (13,08,03,'Ece is interesting','12.00PM');

insert into comments (comment_id,post_id,user_id,comment_title,time) values (14,09,05,'wow','11.00PM');

insert into comments (comment_id,post_id,user_id,comment_title,time) values (15,10,02,'video game development is awesome','09.00PM');





insert into tags (tag_id,post_id,post_tags) values (01,01,'computer');

insert into tags (tag_id,post_id,post_tags) values (02,02,'SQL');

insert into tags (tag_id,post_id,post_tags) values (03,03,'TOC');

insert into tags (tag_id,post_id,post_tags) values (04,04,'website');

insert into tags (tag_id,post_id,post_tags) values (05,05,'peripherals');

insert into tags (tag_id,post_id,post_tags) values (06,06,'medicine');

insert into tags (tag_id,post_id,post_tags) values (07,07,'drinks');

insert into tags (tag_id,post_id,post_tags) values (08,08,'ECE');

insert into tags (tag_id,post_id,post_tags) values (09,09,'cooking');

insert into tags (tag_id,post_id,post_tags) values (10,10,'game-development');

insert into tags (tag_id,post_id,post_tags) values (11,11,'politics');

insert into tags (tag_id,post_id,post_tags) values (12,12,'software');

insert into tags (tag_id,post_id,post_tags) values (13,13,'sports');

insert into tags (tag_id,post_id,post_tags) values (14,14,'job');

insert into tags (tag_id,post_id,post_tags) values (15,15,'github');

insert into tags (tag_id,post_id,post_tags) values (16,16,'SQL');

insert into tags (tag_id,post_id,post_tags) values (17,17,'TOC');

insert into tags (tag_id,post_id,post_tags) values (18,18,'drinks');

insert into tags (tag_id,post_id,post_tags) values (19,19,'peripherals');

insert into tags (tag_id,post_id,post_tags) values (20,20,'cooking');  

