create table car (
	model_id VARCHAR(50) not null primary key,
	model_name VARCHAR(50) not null,
	price VARCHAR(50) not null,
	make VARCHAR(50) not null
);

CREATE TABLE employee (
  emp_id INT PRIMARY KEY,
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  salary INT,
  car_id VARCHAR(50),
  -- foreign key(car_id) REFERENCES car(model_id) on delete CASCADE,
    foreign key(car_id) REFERENCES car(model_id) on delete set null,
  unique(car_id)
);

INSERT INTO employee(emp_id, first_name, last_name,salary, car_id) VALUES(101, 'Jan', 'Levinson', 40000, null);
INSERT INTO employee VALUES(102, 'san', 'Levinson', 50000);
INSERT INTO employee VALUES(103, 'dav', 'Levinson', 220000);
INSERT INTO employee VALUES(104, 'nan', 'Levinson', 200650);
INSERT INTO employee VALUES(105, 'kav', 'Levinson', 22300);
INSERT INTO employee VALUES(106, 'vav', 'Levinson', 200050);
INSERT INTO employee VALUES(107, 'pav', 'Levinson', 260000);
INSERT INTO employee VALUES(108, 'qav', 'Levinson', 220000);
INSERT INTO employee VALUES(109, 'lav', 'Levinson', 430000);

insert into car (model_id, model_name, price, make) values ('2C3CDXBG5FH880206', 'Enclave', '$243394.08', 'Buick');
insert into car (model_id, model_name, price, make) values ('KNAFU5A23B5696464', 'E-Class', '$22062.48', 'Mercedes-Benz');
insert into car (model_id, model_name, price, make) values ('3GTU1YEJ2BG672803', 'Raider', '$221614.14', 'Mitsubishi');
insert into car (model_id, model_name, price, make) values ('1GYS3DEF8CR699358', 'SC', '$443562.71', 'Lexus');
insert into car (model_id, model_name, price, make) values ('KNAGM4AD7D5840973', '2500', '$337176.21', 'Ram');
insert into car (model_id, model_name, price, make) values ('WA1YD64B55N706049', 'Mirage', '$28692.81', 'Mitsubishi');
insert into car (model_id, model_name, price, make) values ('SCFEDCAD9CG681138', 'Fiero', '$163842.77', 'Pontiac');
insert into car (model_id, model_name, price, make) values ('1G6DE5EG8A0083302', 'GT500', '$456715.99', 'Ford');
insert into car (model_id, model_name, price, make) values ('SCBZK25E43C156081', 'Grand Prix', '$479187.48', 'Pontiac');
insert into car (model_id, model_name, price, make) values ('3C6JD6DK4CG587155', 'Prowler', '$102277.89', 'Plymouth');
insert into car (model_id, model_name, price, make) values ('2G4WB52K431811059', 'Achieva', '$278742.54', 'Oldsmobile');
insert into car (model_id, model_name, price, make) values ('1C3CDZEG6CN264864', 'Ram Wagon B150', '$157306.38', 'Dodge');
insert into car (model_id, model_name, price, make) values ('3N1CE2CP4EL979280', 'Envoy XUV', '$126044.21', 'GMC');
insert into car (model_id, model_name, price, make) values ('SALVN2BG2FH923662', 'Grand Prix', '$112875.66', 'Pontiac');
insert into car (model_id, model_name, price, make) values ('WA1AV74LX7D360652', 'XLR', '$82560.21', 'Cadillac');
insert into car (model_id, model_name, price, make) values ('2G4WD582271724350', 'Sonoma', '$119364.02', 'GMC');
insert into car (model_id, model_name, price, make) values ('3GYT4NEF6CG399115', 'Aspen', '$403001.50', 'Chrysler');
insert into car (model_id, model_name, price, make) values ('WBAWL13599P958697', '9-5', '$498138.18', 'Saab');
insert into car (model_id, model_name, price, make) values ('WA1WYAFE9AD420629', 'Avalon', '$454439.98', 'Toyota');
insert into car (model_id, model_name, price, make) values ('WBANF73516C370186', 'Armada', '$352681.34', 'Nissan');
insert into car (model_id, model_name, price, make) values ('WAURVAFA4AN861391', 'Cabriolet', '$222063.15', 'Audi');
insert into car (model_id, model_name, price, make) values ('19UUB3F75FA344963', 'Accord', '$172017.38', 'Honda');
insert into car (model_id, model_name, price, make) values ('3VW4T7AT3EM724180', '612 Scaglietti', '$406811.02', 'Ferrari');
insert into car (model_id, model_name, price, make) values ('WBAKB0C56AC460125', 'ZX2', '$242581.24', 'Ford');
insert into car (model_id, model_name, price, make) values ('YV4902DZ3C2396345', 'Astro', '$142467.53', 'Chevrolet');
insert into car (model_id, model_name, price, make) values ('WAUFFBFL7CA497582', 'M5', '$15565.14', 'BMW');
insert into car (model_id, model_name, price, make) values ('SCBLE47K89C213824', 'Dakota', '$337972.01', 'Dodge');
insert into car (model_id, model_name, price, make) values ('3C4PDDAG4FT613689', 'B-Series Plus', '$122957.60', 'Mazda');
insert into car (model_id, model_name, price, make) values ('WAUML54B32N749685', 'Diamante', '$295257.76', 'Mitsubishi');
insert into car (model_id, model_name, price, make) values ('2G4WB55K321301330', 'Colt', '$265150.01', 'Dodge');
insert into car (model_id, model_name, price, make) values ('JN8AZ1MU7EW085229', '62', '$259851.57', 'Maybach');
insert into car (model_id, model_name, price, make) values ('1C3ADEBZ7DV885506', 'Expedition', '$482186.25', 'Ford');
insert into car (model_id, model_name, price, make) values ('WAUAF48H08K025627', 'Optima', '$44285.94', 'Kia');
insert into car (model_id, model_name, price, make) values ('4USBU33588L846645', 'Cobalt', '$116474.28', 'Chevrolet');
insert into car (model_id, model_name, price, make) values ('WAUVC68E02A315228', 'CTS', '$184353.52', 'Cadillac');
insert into car (model_id, model_name, price, make) values ('WA1DMAFP0FA175006', 'Protege', '$279812.98', 'Mazda');
insert into car (model_id, model_name, price, make) values ('5NPDH4AE8DH301765', 'Optima', '$106071.43', 'Kia');
insert into car (model_id, model_name, price, make) values ('1N6AA0CC6AN206593', 'XK Series', '$205989.80', 'Jaguar');
insert into car (model_id, model_name, price, make) values ('2T1BURHE0EC403491', 'Century', '$118262.44', 'Buick');
insert into car (model_id, model_name, price, make) values ('KM8NU4CC8BU099293', 'Silhouette', '$150019.94', 'Oldsmobile');
insert into car (model_id, model_name, price, make) values ('JN8AZ2KR7CT531849', 'M-Class', '$234444.05', 'Mercedes-Benz');
insert into car (model_id, model_name, price, make) values ('WAUMGBFL6BA222093', 'Spectra', '$173791.19', 'Kia');
insert into car (model_id, model_name, price, make) values ('19UUA75657A884656', 'PT Cruiser', '$195053.18', 'Chrysler');
insert into car (model_id, model_name, price, make) values ('WVGAV7AX1CW547561', 'New Beetle', '$398883.96', 'Volkswagen');
insert into car (model_id, model_name, price, make) values ('SCFAB22373K015820', 'S40', '$36693.33', 'Volvo');
insert into car (model_id, model_name, price, make) values ('1GD312CG6CF212994', '9000', '$315095.54', 'Saab');
insert into car (model_id, model_name, price, make) values ('JTJBJRBZ3F2078577', 'Touareg 2', '$115798.80', 'Volkswagen');
insert into car (model_id, model_name, price, make) values ('WBSVA935X8E411413', '7 Series', '$75452.16', 'BMW');
insert into car (model_id, model_name, price, make) values ('1C3CDZAB1CN513808', 'Wrangler', '$448510.68', 'Jeep');
insert into car (model_id, model_name, price, make) values ('2T1BURHE5EC823702', 'Neon', '$157597.44', 'Dodge');
insert into car (model_id, model_name, price, make) values ('5NPET4AC0AH469901', 'Town Car', '$85362.80', 'Lincoln');
insert into car (model_id, model_name, price, make) values ('JH4CL95977C871890', 'Amigo', '$156923.24', 'Isuzu');
insert into car (model_id, model_name, price, make) values ('WBSBL934X3J958119', 'A8', '$215105.27', 'Audi');
insert into car (model_id, model_name, price, make) values ('WBALL5C54EJ598455', 'E-Series', '$479088.98', 'Ford');
insert into car (model_id, model_name, price, make) values ('1FAHP2D85FG988344', 'xA', '$487243.64', 'Scion');
insert into car (model_id, model_name, price, make) values ('WUARL48H75K235994', 'Ranger', '$368420.25', 'Ford');
insert into car (model_id, model_name, price, make) values ('3N1CE2CP7FL295311', 'TT', '$148916.08', 'Audi');
insert into car (model_id, model_name, price, make) values ('5NPDH4AEXCH243494', '57', '$313738.94', 'Maybach');
insert into car (model_id, model_name, price, make) values ('3C4PDDDG2DT337893', 'Dakota', '$431608.04', 'Dodge');
insert into car (model_id, model_name, price, make) values ('WAUFFAFL3FA692898', '57', '$193443.28', 'Maybach');
insert into car (model_id, model_name, price, make) values ('WBAKF3C54CE219063', 'Nubira', '$487292.22', 'Daewoo');
insert into car (model_id, model_name, price, make) values ('WAUEF78E87A057559', 'Sentra', '$341755.99', 'Nissan');
insert into car (model_id, model_name, price, make) values ('1G6DE8E54C0005652', 'Tracker', '$314656.87', 'Geo');
insert into car (model_id, model_name, price, make) values ('2C3CDXGJ1FH709053', 'Camry', '$369294.40', 'Toyota');
insert into car (model_id, model_name, price, make) values ('19UUA65684A439625', 'F350', '$453190.22', 'Ford');
insert into car (model_id, model_name, price, make) values ('1G6DP8ED4B0675654', 'Xtra', '$74450.05', 'Toyota');
insert into car (model_id, model_name, price, make) values ('3GYFNFE3XES033518', 'RX-8', '$133693.77', 'Mazda');
insert into car (model_id, model_name, price, make) values ('WBAWL735X8P632392', 'S-Series', '$409772.62', 'Saturn');
insert into car (model_id, model_name, price, make) values ('WAUDT48H76K555452', 'Justy', '$34722.92', 'Subaru');
insert into car (model_id, model_name, price, make) values ('4T1BF3EK5BU965012', 'S-Class', '$424827.27', 'Mercedes-Benz');
insert into car (model_id, model_name, price, make) values ('WBAPH5C51AA808832', 'Mustang', '$422731.54', 'Ford');
insert into car (model_id, model_name, price, make) values ('19XFB4F22DE290811', 'Cobalt SS', '$362477.08', 'Chevrolet');
insert into car (model_id, model_name, price, make) values ('1G6KH5EY8AU676299', 'Pathfinder', '$26554.41', 'Nissan');
insert into car (model_id, model_name, price, make) values ('1GD02ZCG2CF617176', 'Ranger', '$339048.39', 'Ford');
insert into car (model_id, model_name, price, make) values ('WAUDL74F36N519231', 'Caliber', '$486121.24', 'Dodge');
insert into car (model_id, model_name, price, make) values ('3VW507AT6EM960965', 'XT', '$480554.80', 'Subaru');
insert into car (model_id, model_name, price, make) values ('1N6AD0CW3EN436552', 'V8 Vantage', '$262051.43', 'Aston Martin');
insert into car (model_id, model_name, price, make) values ('WAUWFBFL7AA663063', 'Grand Am', '$345467.86', 'Pontiac');
insert into car (model_id, model_name, price, make) values ('WAUBH74F38N721689', 'H3T', '$124493.74', 'Hummer');
insert into car (model_id, model_name, price, make) values ('WBAEN33402E126871', 'Metro', '$162761.76', 'Geo');
insert into car (model_id, model_name, price, make) values ('WAUEH74F06N935601', 'Grand Prix', '$223903.28', 'Pontiac');
insert into car (model_id, model_name, price, make) values ('1FBNE3BL1DD699364', 'Firebird', '$342233.12', 'Pontiac');
insert into car (model_id, model_name, price, make) values ('1G6AZ5SX1F0642658', 'Range Rover', '$94618.12', 'Land Rover');
insert into car (model_id, model_name, price, make) values ('3N1AB6AP8BL892990', 'Touareg', '$131270.47', 'Volkswagen');
insert into car (model_id, model_name, price, make) values ('SCBLC37F24C586742', 'CTS', '$447500.37', 'Cadillac');
insert into car (model_id, model_name, price, make) values ('WP0AB2A8XCU444241', '599 GTB Fiorano', '$416565.34', 'Ferrari');
insert into car (model_id, model_name, price, make) values ('3D4PG6FV9AT570358', 'E350', '$355896.74', 'Ford');
insert into car (model_id, model_name, price, make) values ('JN1CV6EK0DM701943', 'Parisienne', '$225469.33', 'Pontiac');
insert into car (model_id, model_name, price, make) values ('1FTEW1C83FF150750', 'Savana 3500', '$71565.14', 'GMC');
insert into car (model_id, model_name, price, make) values ('1FTSW3A50AE888303', 'Sebring', '$33582.95', 'Chrysler');
insert into car (model_id, model_name, price, make) values ('WA1YL54B55N949082', 'Escalade', '$467965.63', 'Cadillac');
insert into car (model_id, model_name, price, make) values ('WBA3A5C56DJ580009', 'Q', '$278917.01', 'Infiniti');
insert into car (model_id, model_name, price, make) values ('1N6AF0LX8FN651963', 'S-Class', '$428104.60', 'Mercedes-Benz');
insert into car (model_id, model_name, price, make) values ('KMHFH4JG8FA031081', 'Crown Victoria', '$179171.54', 'Ford');
insert into car (model_id, model_name, price, make) values ('YV1902FH5D2348901', 'MKZ', '$173875.64', 'Lincoln');
insert into car (model_id, model_name, price, make) values ('WAUVC68EX3A953018', 'Equator', '$400163.91', 'Suzuki');
insert into car (model_id, model_name, price, make) values ('1G6AL5S32E0116150', 'Continental Mark VII', '$160815.00', 'Lincoln');
insert into car (model_id, model_name, price, make) values ('WBANF33597B083789', 'Supra', '$154820.49', 'Toyota');
insert into car (model_id, model_name, price, make) values ('WAUMFAFLXBN156668', 'Esprit', '$14696.58', 'Lotus');
insert into car (model_id, model_name, price, make) values ('WAUDF98E98A992582', 'Sundance', '$79437.16', 'Plymouth');


update employee set car_id='SALVN2BG2FH923662' where emp_id =106;
select * from employee where emp_id = 106;
select employee.*, car.make, car.model_id
from employee
join car
on employee.car_id=car.model_id;
select * from employee;
DELETE from car where model_id='SALVN2BG2FH923662'; -- cannot delete the row of this cuurent model because it still get REFERENCEs from employee table
-- for deleting this row, we either need to delete the person from employee table OR we can use ON DELETE set NULL / ON DELETE CASCADE
select * from employee; -- using on DELETE CASCADE deletes the person in employee table REFERENCing the [articular car model]
select * from car where model_id='SALVN2BG2FH923662';





































