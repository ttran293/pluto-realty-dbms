INSERT INTO employee_email (id, email) VALUES 
('00001','1@gmail.com'),
('00002','2@gmail.com'),
('00003','3@gmail.com'),
('00001','11@gmail.com'),
('00001','12@gmail.com'),
('00004','4@gmail.com'),
('00005','5@gmail.com'),
('00006','6@gmail.com');

INSERT INTO leases (lease_id, lease_date, monthly_rent, deposit, duration, start, finish) VALUES 
('40001','2019-03-28',3000,1000,'3 months','2019-03-28','2019-06-28'),
('40002','2019-01-28',4000,1100,'4 months','2019-01-28','2019-05-28'),
('40003','2019-07-30',2000,2000,'2 months','2019-07-30','2019-09-30'),
('40004','2019-06-28',2200,2200,'3 months','2019-06-28','2019-09-28'),
('40005','2019-06-28',5000,1500,'6 months','2019-06-28','2019-12-28'),
('40006','2019-07-28',4000,1000,'1 year'  ,'2019-07-28','2020-07-28'),
('40007','2019-07-22',6000,1000,'2 year'  ,'2019-07-22','2021-07-22'),
('40008','2019-11-13',7200,1000,'6 months','2019-11-13','2020-05-13'),
('40009','2019-12-10',1000,1000,'6 months','2019-12-10','2020-06-10'),
('40010','2019-03-03',1000,1000,'3 months','2019-03-03','2020-06-03'),
('40011','2019-08-02',1000,1000,'3 months','2019-08-02','2020-11-02'),
('40012','2019-07-15',1200,1000,'3 months','2019-07-15','2020-10-15');

INSERT INTO rental_properties (id, owner_id, prop_type, area_sqr_footage, rent_month, rent_fee, status_prop, lease_id) VALUES 
('10001','60001','Commercial',2224,3000,100,1,'40001'),
('10002','60002','Commercial',4253,4000,200,1,'40002'),
('10003','60003','Commercial',6268,2000,300,1,'40003'),
('10004','60004','Commercial',3279,2200,400,1,'40004'),

('10005','60013','Commercial',6000,3300,300,0,NULL),
('10006','60014','Commercial',3000,2500,400,0,NULL),

('20001','60005','Industrial',7223,5000,130,1,'40005'),
('20002','60006','Industrial',8443,4000,110,1,'40006'),
('20003','60007','Industrial',7123,6000,220,1,'40007'),
('20004','60008','Industrial',8223,7200,210,1,'40018'),

('20005','60015','Industrial',7000,6000,220,1,NULL),
('20006','60016','Industrial',8000,7200,210,1,NULL),

('30001','60009','Residential',223,1000,300,1,'40009'),
('30002','60010','Residential',123,1000,200,1,'40010'),
('30003','60011','Residential',523,1000,500,1,'40011'),
('30004','60012','Residential',123,1200,600,1,'40012'),

('30005','60017','Residential',200,1200,600,0,NULL),
('30006','60018','Residential',100,1200,600,0,NULL);
INSERT INTO industrial_prop (id, address, city, state, zipcode) VALUES 
('20001','1902  Marie Street','Churchville','MD','21028'),
('20002','2249  Calvin Street','Baltimore','MD','21201'),
('20003','2587  Buffalo Creek Road','DHS','MD','20588'),
('20004','3383  Harron Drive','Hanover','MD','21076'),
('20005','25127  Buffalo Creek Road','DHS','MD','20588'),
('20006','338413  Harron Drive','Hanover','MD','21076');

INSERT INTO partners (id, owner_id, client_id, lease_id) VALUES 
('00004','50001','00007','40001'),
('00005','50002','00008','40002'),
('00006','50003','00009','40003'),
('00004','50004','00010','40004'),
('00005','50005','00011','40005'),
('00006','50006','00012','40006'),
('00004','50007','00013','40007'),
('00005','50008','00014','40008'),
('00006','50009','00015','40009'),
('00004','50010','00016','40010'),
('00005','50011','00017','40011'),
('00005','50012','00017','40012');

INSERT INTO person (person_id, last_name, first_name, telephone, address, city, state, zipcode) VALUES 
('00001','Williams','Elsie','303-424-4211','4958  Cambridge Place','Sykesville','MD','21784'),
('00002','Smith','Jay','303-224-4211','2943  Village View Drive','Reston','MD','20191'),
('00003','Mahi','Cohen','313-424-4241','943  Doe Meadow Drive','Gaithersburg','MD','20877'),
('00004','Jodi','Barrow','718-733-4120','3454  Anmoore Road','DHS','MD','20588'),
('00005','Isadora','Tanner','443-396-4761','4298  Calvin Street','Baltimore','MD','21201'),
('00006','Luke','Hurley','443-212-8608','943  Five Points','Baltimore','MD','21201'),
('00007','Tonicha','Stafford','443-569-4834','2627  Harron Drive','Baltimore','MD','21201'),
('00008','Brian','Hubbard','240-898-7099','1842  Bobcat Drive','Washington','MD','20200'),
('00009','Marian','Hansen','404-627-2326','3653  Junior Avenue','DHS','MD','20588'),
('00010','Anabel','Tapia','240-845-6367','3466  Bobcat Drive','Washington','MD','20008'),
('00011','Ihsan','Kelley','240-897-4346','1045  Bobcat Drive','Washington','MD','20200'),
('00012','Noa','Levy','973-494-8234','1005  Granville Lane','DHS','MD','20588'),
('00013','Kaydan','Neville','410-501-1987','4831  Columbia Boulevard','Baltimore','MD','21202'),
('00014','Hart','Blackwell','301-528-7481','3956  Doe Meadow Drive','Germantown','MD','20767'),
('00015','Blaese','Collier','301-568-5010','4254  Doe Meadow Drive','Suitland','MD','20746'),
('00016','Timothy','Kramer','410-777-5353','2460  Woodhill Avenue','Baltimore','MD','21202'),
('00017','Elmer','Madden','443-803-7224','525  Green Gate Lane','Hanover','MD','21076'),
('00018','Elina','Baker','301-249-8660','1429  Roane Avenue','Upper Marlboro','MD','20870');

INSERT INTO property_owner (owner_id, property_id, first_name, last_name, corporation_name, address, phone, email) VALUES 
('60001','10001','Bianka','Scott','ASD REACTOR','2555  Bluff Street, Friendsville, MD','408-861-1241','ASD@gmail.com'),
('60002','10002','Anabia','Leigh','ASD REACTOR','25155  Bluff Street, Friendsville, MD','408-461-1661','ASD@gmail.com'),
('60003','10003','Izaa','Bone','ASD REACTOR','252455  Bluff Street, Friendsville, MD','408-866-2161','ASD@gmail.com'),
('60004','10004','Philip ','Feeney','ASD REACTOR','2555  Bluff Street, Friendsville, MD','408-861-1661','ASD@gmail.com'),
('60005','20001','Anabia','Cook',NULL,'1753  Doe Meadow Drive, Washington, MD','443-389-1535','ana@gmail.com'),
('60006','20002','Maisie','Vaughan',NULL,'1753  Doe Meadow Drive, Washington, MD','443-389-1535','ana@gmail.com'),
('60007','20003','Philip ','Mercer',NULL,'114  Pine Tree Lane, Beltsville, MD','410-766-8101','Philip@gmail.com'),
('60008','20004','Marlie','Jaramillo',NULL,'4190  Jail Drive, DHS, MD','301-888-5626','mj@gmail.com'),
('60009','30001','Faiza','Mcghee',NULL,'4122  Cambridge Place, Severna Park, MD','301-902-0475','fm@gmail.com'),
('60010','30002','Henna ','Jaramillo',NULL,'1585  Hickory Heights Drive, Linthicum Heights, MD','301-943-1277',''),
('60011','30003','Samira','Marshall','Google','1703  Marie Street, Woodlawn, Maryland','443-796-7035','sm@gmail.com'),
('60012','30004','Philip ','Mcghee','Amazon','3626  Cambridge Place, Baltimore, MD','301-839-9234','pm@gmail.com'),

('60013','10005','Samira','Bone', NULL,'3989  Calvin Street, Maryland','443-796-7035','smasd@gmail.com'),
('60014','10006','Henna','Cook', NULL,'1868  Flanigan Oaks Drive, Maryland','443-796-7035','smdfd@gmail.com'),
('60015','20005','Philip ','Bone', NULL,'949  Harron Drive, MD','301-839-9234','pvdm@gmail.com'),
('60016','20006','Anna','Marshall', NULL,'1754  Marie Street, Woodlawn, Maryland','443-716-7035','sasazm@gmail.com'),
('60017','30005','Henna ','Cook', NULL,'409  Beechwood Drive, Baltimore, MD','301-839-4434','fafwwf@gmail.com'),
('60018','30006','Anabia','Bone	', NULL,'2443  Five Points, Woodlawn, Maryland','411-796-7035','zzzxc@gmail.com');

INSERT INTO supervisor (emp_id, spv_id) VALUES 
('00001','00002'),
('00002','00003'),
('00003', NULL),
('00004','00002'),
('00005','00002'),
('00006', '00002');


INSERT INTO associates (id, property_id, number_of_prop, prop_date_time) VALUES 
('00001','10002',2,'2014-03-26 00:00:00'),
('00002','20001',1,'2014-03-26 00:00:00'),
('00003','20003',1,'2014-03-26 00:00:00'),
('00001','30001',2,'2014-03-26 00:00:00');

INSERT INTO commercial_prop (id, address, city, state, zipcode) VALUES 
('10001','669  Flanigan Oaks Drive','Bethesda','MD','20817'),
('10002','3971  Roane Avenue','Rockville','MD','20852'),
('10003','2148  Green Gate Lane','Baltimore','MD','21201'),
('10004','222  Blue Spruce Lane','Annapolis','MD','21401'),
('10005','4622  Roane Avenue','Rockville','MD','20852'),
('10006','4252  Doe Meadow Drive','Suitland','MD','20746');

INSERT INTO employees (employee_id, roles, hired_date) VALUES 
('00001','Associate','2018-09-12'),
('00002','Associate','2019-03-26'),
('00003','Associate','2020-06-17'),
('00004','Partner','2020-06-23'),
('00005','Partner','2020-10-06'),
('00006','Partner','2020-10-08');

INSERT INTO residential_prop (id, address, city, state, zipcode, number_of_bedrooms, number_of_bathrooms) VALUES 
('30001','3475  Anmoore Road','DHS','MD','20588',1,1),
('30002','1698  Marshall Street','Cockeysville','MD','21030',2,3),
('30003','1188  Del Dew Drive','College Park','MD','20741',4,2),
('30004','3465  Adams Avenue','Beltsville','MD','20705',2,1),
('30005','4448  Woodhill Avenue','Glen Burnie','MD','21061',2,2),
('30006','915  Roane Avenue','College Park','MD','20741',3,3);

INSERT INTO property_viewings (property_viewing_id, property_id, client_id, associate_id) VALUES 
('12301','10005','00019','00001'),
('12302','10005','00019','00001'),
('12303','10006','00019','00001'),
('12304','10006','00019','00001'),
('12305','20005','00020','00002'),
('12306','20005','00020','00002'),
('12307','20006','00020','00002'),
('12308','20006','00020','00002'),
('12309','30005','00021','00003'),
('12310','30005','00021','00003'),
('12311','30006','00021','00003'),
('12312','30006','00021','00003');

INSERT INTO clients (client_id, email, prop_preference, rent_pay_rate) VALUES 
('00007','ts@gmail.com','Commercial',50000),
('00008','bh@gmail.com','Commercial',55000),
('00009','mh@hotmail.com','Commercial',60000),
('00010','at@gmail.com','Industrial',100000),
('00011','iks@gmail.com','Industrial',120000),
('00012','nl123@hotmail.com','Industrial',150000),
('00013','kay@gmail.com','Residental',10000),
('00014','hart@hotmail.com','Residental',20000),
('00015','bc@gmail.com','Residental',15000),
('00016','tim@hotmail.com','Residental',8000),
('00017','elmer@gmail.com','Residental',9000),
('00018','eb@gmail.com','Residental',11000),
('00019','eb@gmail.com','Residental',11000),
('00020','eb@gmail.com','Residental',11000),
('00021','eb@gmail.com','Residental',11000);

INSERT INTO prop_view_date (prop_view_id, date_time) VALUES 
('12301','2019-07-12 08:00:00'),
('12302','2019-08-03 08:00:00'),
('12303','2019-07-22 09:00:00'),
('12304','2019-01-12 09:00:00'),
('12305','2019-07-09 08:00:00'),
('12306','2019-12-30 08:00:00'),
('12307','2019-11-01 09:00:00'),
('12308','2019-07-20 09:00:00'),
('12309','2019-07-12 08:00:00'),
('12310','2019-08-03 08:00:00'),
('12311','2019-07-22 08:00:00'),
('12312','2019-01-12 08:00:00'),
('12312','2019-01-13 08:00:00');

