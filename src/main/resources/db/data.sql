INSERT INTO users(id,user_name,name,surname,email,password,last_ip) VALUES (1,"admin","admin","admin","admin@admin.com","$2a$12$.dHYtMdVyvz7nKHsLgav8eYdHgpxZEMJcndo1PiWM48mojIqrxvjm","0:0:0:0:0:0:0:1");
INSERT INTO users(id,user_name,name,surname,email,password,last_ip) VALUES (2,"anonymousUser","anonymous","anonymous","anonymous@anonymous.com","$2a$12$AmkMa.sPDaMZy8hGVdPs5.ijFrrluxl5dc8px8qQF2pNGGpFlODOC","0:0:0:0:0:0:0:1");
INSERT INTO users(id,user_name,name,surname,email,password,last_ip) VALUES (3,"user_1","Name1","Surname1","Name1.Surname1@blog.com","$2a$12$l3JLoBWXM7e7YpJ4ZqB8GOCx6tz5GZeD9EQsFw.nMtt9CMEUHuNSC","192.168.1.1");
INSERT INTO users(id,user_name,name,surname,email,password,last_ip) VALUES (4,"user_2","Name2","Surname2","Name2.Surname2@blog.com","$2a$12$siKZc.z1uwFf.5.6.jAf.OHMX8abXnEzwHBWCIMu6H0gROtheL4A.","192.168.1.2");
INSERT INTO users(id,user_name,name,surname,email,password,last_ip) VALUES (5,"user_3","Name3","Surname3","Name3.Surname3@blog.com","$2a$12$4NHLxR7zH0HQZZlWewOugOby6oNrccYoGL26GRwquV44DB.1Ha.Jy","192.168.1.3");
INSERT INTO users(id,user_name,name,surname,email,password,last_ip) VALUES (6,"user_4","Name4","Surname4","Name4.Surname4@blog.com","$2a$12$LvxgW8Z2KFv/tvDySbKjDOmOS6fr85YIod2QdsjdYgx5daGhiTG6m","192.168.1.4");
INSERT INTO users(id,user_name,name,surname,email,password,last_ip) VALUES (7,"user_5","Name5","Surname5","Name5.Surname5@blog.com","$2a$12$J6TLi/LbzT/Alwv/.0R1C.H0IMSDhXwZYAwne.m9Lf.u9Wn0dwaZ2","192.168.1.5");
INSERT INTO users(id,user_name,name,surname,email,password,last_ip) VALUES (8,"user_6","Name6","Surname6","Name6.Surname6@blog.com","$2a$12$WD5u.3mdGhDEVofmmP3qg.k8Lao.DWvKGOkcuhI1hFfTZGZLgiTMu","192.168.1.6");
INSERT INTO users(id,user_name,name,surname,email,password,last_ip) VALUES (9,"user_7","Name7","Surname7","Name7.Surname7@blog.com","$2a$12$B2AJw/qp5banlXiEHP20U.TT/8ZOAo.5Rf0igihrwMeSCkhTaIZXy","192.168.1.7");
INSERT INTO users(id,user_name,name,surname,email,password,last_ip) VALUES (10,"user_8","Name8","Surname8","Name8.Surname8@blog.com","$2a$12$xvSrJcOkiv7AdJZUxWqQHOAoXd6Q.OMymB7xsEj4SXCAyaSq/wKRq","192.168.1.8");

INSERT INTO roles(id,role) VALUES (1,"USER");
INSERT INTO roles(id,role) VALUES (2,"MODERATOR");
INSERT INTO roles(id,role) VALUES (3,"ADMIN");

INSERT INTO users_roles(user_id, roles_id) VALUES (1, 1);
INSERT INTO users_roles(user_id, roles_id) VALUES (1, 2);
INSERT INTO users_roles(user_id, roles_id) VALUES (1, 3);
INSERT INTO users_roles(user_id, roles_id) VALUES (3, 1);
INSERT INTO users_roles(user_id, roles_id) VALUES (3, 2);
INSERT INTO users_roles(user_id, roles_id) VALUES (3, 3);
INSERT INTO users_roles(user_id, roles_id) VALUES (4, 1);
INSERT INTO users_roles(user_id, roles_id) VALUES (4, 2);
INSERT INTO users_roles(user_id, roles_id) VALUES (4, 3);
INSERT INTO users_roles(user_id, roles_id) VALUES (8, 1);
INSERT INTO users_roles(user_id, roles_id) VALUES (8, 2);


INSERT INTO posts(title,post_text,author_id,posted_ip,propose_to_delete,comments_locked)VALUES  ("Firs post in this blog","Renowned for their pan- African presence and with a reputation for delivering world-class Digital CustorT
Experience and Technology Services, DSC's impact sourcing solution, in partnership with the Maharishi
Institute drives the education and skills development of South Africa's youth workforce while simultaneol
reduchg youth unemployment, a glaring concern in the country and even more so in a post-pandemic
economic climate. ", 9,"192.168.1.1",1,1);

INSERT INTO posts(title,post_text,author_id,posted_ip,propose_to_delete)VALUES  ("Second post in this blog","OSG in partnership With the Maharishi Institute, the first virtually free university in South Africa and NPO,
offers an integrated Customer Experience, which seeks to drive consistent, unique, and differentiated
customer experiences across complex channels. With a proven track record and industry recognised
approach to managing a 24/7 x 365 contact centre, this unique solution in the management Of people,
processes and technologies ensures that we remain effective while offering flexible operating models
including an occupied hour approach. ", 10,"192.168.1.2",1);

INSERT INTO posts(title,post_text,author_id,posted_ip,comments_locked)VALUES  ("Third post in this blog","This pioneering and collaborative expansion between Digital Solutions Group (OSG) and the Maharishi
Institute has resulted in a joint venture and impact sourcing solution that supports Black-Economic
Empowerment, addresses youth unemployment, affordable education socio-economic upliftment and
relevant skills taught to thousands of underprivileged Black South African Youths.", 3,"192.168.1.3",1);

INSERT INTO posts(title,post_text,author_id,posted_ip,admin_locked)VALUES  ("Fourth post in this blog","In publishing and graphic design, Lorem ipsum is a placeholder text commonly
used to demonstrate the visual form of a document or a typeface without relying
on meaningful content.", 4,"192.168.1.4",1);

INSERT INTO posts(title,post_text,author_id,posted_ip)VALUES  ("Fifth post in this blog","As a developer Kindly use write lorem and press enter to write a long text
that you don't want to write.
/*Happy Programming*/", 5,"192.168.1.5");

INSERT INTO posts(title,post_text,author_id,posted_ip)VALUES  ("Sixth post in this blog","Why do we use it?
It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).", 6,"192.168.1.6");

INSERT INTO posts(title,post_text,author_id,posted_ip)VALUES  ("Seventh post in this blog","Where can I get some?
There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.", 7,"192.168.1.7");

INSERT INTO posts(title,post_text,author_id,posted_ip)VALUES  ("Eighth post in this blog","What is Lorem Ipsum?
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", 8,"192.168.1.8");

INSERT INTO comments (temporary_nic,user_id,parent_post_id,comment_text,commented_ip,admin_locked)VALUES("I introduce my self 1",3,1,"Comment for post 1","192.168.1.1",1);
INSERT INTO comments (temporary_nic,user_id,parent_post_id,comment_text,commented_ip)VALUES("I introduce my self 2",4,2,"Comment for post 2","192.168.1.2");
INSERT INTO comments (temporary_nic,user_id,parent_post_id,comment_text,commented_ip)VALUES("I introduce my self 3",5,3,"Comment for post 3","192.168.1.3");
INSERT INTO comments (temporary_nic,user_id,parent_post_id,comment_text,commented_ip)VALUES("I introduce my self 4",6,4,"Comment for post 4","192.168.1.4");
INSERT INTO comments (temporary_nic,user_id,parent_post_id,comment_text,commented_ip)VALUES("I introduce my self 5",7,5,"Comment for post 5","192.168.1.5");
INSERT INTO comments (temporary_nic,user_id,parent_post_id,comment_text,commented_ip)VALUES("I introduce my self 6",8,6,"Comment for post 6","192.168.1.6");
INSERT INTO comments (temporary_nic,user_id,parent_post_id,comment_text,commented_ip)VALUES("I introduce my self 7",2,7,"Comment for post 7","192.168.1.7");
INSERT INTO comments (temporary_nic,user_id,parent_post_id,comment_text,commented_ip)VALUES("I introduce my self 8",2,8,"Comment for post 2","192.168.1.8");