create table remote_employee (
	id INT primary key,
	first_name VARCHAR(50) not null,
	last_name VARCHAR(50) not null,
	email VARCHAR(50) default 'heehee',
	gender VARCHAR(50) not null,
	dob DATE not null,
	country VARCHAR(50) not null
);

-- use small alphabets for data
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (1, 'Lira', 'Causton', 'lcauston0@jugem.jp', 'Female', date '1938-10-12', 'China');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (2, 'Cecilio', 'Risbrough', 'crisbrough1@economist.com', 'Male', '2016-10-29', 'France');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (3, 'Aggie', 'Lyster', 'alyster2@boston.com', 'Female', date '1919-10-31', 'Colombia');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (4, 'Neils', 'Rove', 'nrove3@cargocollective.com', 'Male', '1969-07-04', 'France');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (5, 'Kellyann', 'Cargen', null, 'Female', '1904-04-23', 'Colombia');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (6, 'Jewelle', 'Flade', 'jflade5@imdb.com', 'Female', date '1951-07-07', 'Peru');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (7, 'Ilene', 'Slewcock', 'islewcock6@360.cn', 'Female', '1923-09-20', 'Tajikistan');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (8, 'Taber', 'Kayes', 'tkayes7@exblog.jp', 'Male', '1964-03-02', 'Iraq');
insert into remote_employee values (9, 'Cointon', 'Mildner', 'cmildner8@xrea.com', 'Male', '1992-03-21', 'China');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (10, 'Fredek', 'Hawksby', 'fhawksby9@uiuc.edu', 'Male', '1979-04-24', 'Serbia');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (11, 'Minta', 'Cuseick', 'mcuseicka@dot.gov', 'Female', '1906-02-15', 'Ireland');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (12, 'Delmer', 'Prudham', 'dprudhamb@twitter.com', 'Genderqueer', '2015-04-30', 'Sweden');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (13, 'Concordia', 'Spawton', 'cspawtonc@cornell.edu', 'Female', '2018-01-19', 'Philippines');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (14, 'Caty', 'Tohill', 'ctohilld@boston.com', 'Female', '1946-04-14', 'United Kingdom');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (15, 'Harland', 'Parkinson', 'hparkinsone@1688.com', 'Male', '1989-03-25', 'China');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (16, 'Remy', 'Legh', 'rleghf@live.com', 'Female', '1991-02-19', 'China');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (17, 'Hakim', 'Steptoe', 'hsteptoeg@istockphoto.com', 'Male', '1934-05-02', 'France');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (18, 'Nowell', 'Webster', 'nwebsterh@nasa.gov', 'Male', '1996-02-20', 'Democratic Republic of the Congo');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (19, 'Rogers', 'Swadlinge', 'rswadlingei@jalbum.net', 'Male', '1908-01-12', 'Mexico');
insert into remote_employee values (20, 'Chryste', 'Djuricic', 'cdjuricicj@desdev.cn', 'Female', '2006-11-06', 'Russia');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (21, 'Ethelred', 'Sanpere', 'esanperek@tripod.com', 'Male', '1900-12-21', 'Indonesia');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (22, 'Agosto', 'Wiltshier', 'awiltshierl@time.com', 'Male', '2017-12-28', 'Czech Republic');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (23, 'Fannie', 'Hartless', 'fhartlessm@linkedin.com', 'Female', '1954-10-11', 'Indonesia');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (24, 'Peg', 'O''Towey', 'potoweyn@phpbb.com', 'Female', '1954-12-31', 'Poland');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (25, 'Amabelle', 'Shreve', 'ashreveo@t-online.de', 'Female', '1998-04-12', 'Cameroon');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (26, 'Slade', 'McNickle', 'smcnicklep@prlog.org', 'Male', '1973-07-05', 'Greece');
insert into remote_employee values (27, 'Miquela', 'Wileman', 'mwilemanq@mlb.com', 'Bigender', '1987-02-28', 'Philippines');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (28, 'Aaron', 'Ahrend', 'aahrendr@biblegateway.com', 'Male', '1922-05-28', 'China');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (29, 'Corena', 'O''Loughnan', 'coloughnans@cbsnews.com', 'Female', '1957-04-30', 'Thailand');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (30, 'Sheila', 'Tierney', 'stierneyt@ebay.co.uk', 'Female', '1958-03-09', 'Dominican Republic');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (31, 'Dex', 'Lappine', default, 'Male', '2020-09-08', 'China');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (32, 'Osborne', 'Curnow', 'ocurnowv@prlog.org', 'Male', '1909-05-15', 'Poland');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (33, 'Anna-maria', 'Napton', 'anaptonw@123-reg.co.uk', 'Agender', '1994-05-25', 'Greece');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (34, 'Marion', 'Bellamy', 'mbellamyx@nature.com', 'Female', '1989-09-09', 'Sweden');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (35, 'Yancey', 'Petschel', 'ypetschely@cnet.com', 'Male', '1962-05-08', 'South Korea');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (36, 'Ludovika', 'Domonkos', 'ldomonkosz@buzzfeed.com', 'Female', '1948-03-02', 'Portugal');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (37, 'Nikola', 'Ogborne', 'nogborne10@yale.edu', 'Male', '1930-10-11', 'Sweden');
insert into remote_employee  values (38, 'Edy', 'Hammel', 'ehammel11@mtv.com', 'Female', '1944-02-15', 'China');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (39, 'Whitney', 'Sneller', 'wsneller12@macromedia.com', 'Female', '1932-05-23', 'China');
insert into remote_employee values (40, 'Velma', 'Copin', 'vcopin13@google.es', 'Female', '1914-09-03', 'Zambia');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (41, 'Henderson', 'McClure', 'hmcclure14@wunderground.com', 'Polygender', '1912-12-07', 'Poland');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (42, 'Benjy', 'Tyrie', 'btyrie15@liveinternet.ru', 'Male', '1995-03-28', 'Faroe Islands');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (43, 'Lynn', 'Eddie', 'leddie16@sciencedaily.com', 'Female', '2012-08-19', 'Syria');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (44, 'Udale', 'Roscamps', default, 'Male', '1971-09-10', 'Argentina');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (45, 'Zaria', 'Roxburgh', 'zroxburgh18@globo.com', 'Female', '1997-11-23', 'Colombia');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (46, 'Zaccaria', 'Mortimer', 'zmortimer19@myspace.com', 'Male', '2006-06-01', 'Honduras');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (47, 'Meagan', 'Joscelyne', 'mjoscelyne1a@amazon.co.jp', 'Female', '2012-07-02', 'Ukraine');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (48, 'Francisca', 'Kleewein', 'fkleewein1b@homestead.com', 'Female', '1996-02-16', 'Sweden');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (49, 'Orly', 'Abriani', 'oabriani1c@sbwire.com', 'Female', '1912-09-09', 'Pakistan');
insert into remote_employee values (50, 'Matias', 'Gamell', 'mgamell1d@miibeian.gov.cn', 'Male', '2011-04-19', 'United Kingdom');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (51, 'Fleurette', 'Billingsly', 'fbillingsly1e@rakuten.co.jp', 'Female', '1932-06-09', 'France');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (52, 'Evy', 'Flecknell', 'eflecknell1f@webeden.co.uk', 'Female', '1995-10-18', 'China');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (53, 'Bea', 'Hasselby', 'bhasselby1g@cdbaby.com', 'Female', '1934-07-04', 'Sweden');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (54, 'Graeme', 'Worsnup', 'gworsnup1h@latimes.com', 'Male', '1925-01-05', 'Portugal');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (55, 'Sumner', 'Nind', 'snind1i@huffingtonpost.com', 'Male', '1922-08-04', 'Colombia');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (56, 'Kris', 'Doorly', 'kdoorly1j@theatlantic.com', 'Female', '2005-07-11', 'Canada');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (57, 'Kiri', 'Bliss', 'kbliss1k@list-manage.com', 'Female', '1937-10-26', 'France');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (58, 'Caz', 'Jakucewicz', 'cjakucewicz1l@digg.com', 'Male', '1963-05-14', 'Russia');
insert into remote_employee values (59, 'Thorpe', 'Larmor', 'tlarmor1m@mlb.com', 'Male', '1953-07-15', 'China');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (60, 'Brandais', 'Mumbeson', 'bmumbeson1n@ask.com', 'Female', '1995-01-26', 'Japan');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (61, 'Wildon', 'Kembry', 'wkembry1o@google.com', 'Non-binary', '1936-10-25', 'China');
insert into remote_employee values (62, 'Gwenette', 'Epsley', 'gepsley1p@howstuffworks.com', 'Female', '2010-08-18', 'Canada');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (63, 'Maddie', 'Grushin', 'mgrushin1q@about.com', 'Female', '1960-10-22', 'Ukraine');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (64, 'Abba', 'Coggen', 'acoggen1r@so-net.ne.jp', 'Male', '2011-07-30', 'Vietnam');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (65, 'Olimpia', 'Moens', 'omoens1s@nytimes.com', 'Non-binary', '1945-02-07', 'Indonesia');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (66, 'Abdul', 'Meace', 'ameace1t@howstuffworks.com', 'Male', '1914-08-12', 'Colombia');
insert into remote_employee values (67, 'Vallie', 'Kamena', 'vkamena1u@seattletimes.com', 'Female', '1947-07-31', 'United States');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (68, 'Tami', 'Girdlestone', 'tgirdlestone1v@woothemes.com', 'Female', '1995-07-07', 'Thailand');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (69, 'Cassandry', 'Spurdens', 'cspurdens1w@whitehouse.gov', 'Female', '1955-07-19', 'Indonesia');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (70, 'Thalia', 'Finnigan', 'tfinnigan1x@cam.ac.uk', 'Female', '1982-08-07', 'Thailand');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (71, 'Jake', 'Vatini', 'jvatini1y@who.int', 'Male', '1959-12-14', 'Indonesia');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (72, 'Diandra', 'Vennings', 'dvennings1z@usa.gov', 'Female', '1965-06-25', 'Colombia');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (73, 'Daniela', 'Dowe', 'ddowe20@stumbleupon.com', 'Female', '2017-10-15', 'China');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (74, 'Dilan', 'Quarrington', default, 'Male', '1920-08-27', 'Germany');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (75, 'Anthia', 'Ginglell', 'aginglell22@360.cn', 'Female', '1930-05-22', 'Afghanistan');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (76, 'Henka', 'Cammell', 'hcammell23@ftc.gov', 'Female', '1972-08-02', 'Cuba');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (77, 'Gussi', 'Bradie', 'gbradie24@nsw.gov.au', 'Female', '1964-06-13', 'Poland');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (78, 'Kanya', 'Faulkes', 'kfaulkes25@senate.gov', 'Female', '1953-06-07', 'Russia');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (79, 'Orion', 'Marcroft', 'omarcroft26@ca.gov', 'Male', '1955-12-08', 'Tunisia');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (80, 'Susanne', 'Lowrance', 'slowrance27@cyberchimps.com', 'Female', '1940-10-11', 'Indonesia');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (81, 'Junina', 'McGeever', 'jmcgeever28@xinhuanet.com', 'Female', '1944-04-22', 'China');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (82, 'Reeba', 'Chillcot', 'rchillcot29@bandcamp.com', 'Female', '1947-04-13', 'Russia');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (83, 'Ansell', 'Peacock', 'apeacock2a@theguardian.com', 'Male', '1985-05-20', 'France');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (84, 'Bartlett', 'Padmore', 'bpadmore2b@acquirethisname.com', 'Male', '1910-10-10', 'China');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (85, 'Fonzie', 'McGeffen', 'fmcgeffen2c@phpbb.com', 'Male', '1919-05-31', 'France');
insert into remote_employee values (86, 'Peg', 'Geldeford', 'pgeldeford2d@tamu.edu', 'Female', '1904-06-13', 'Portugal');
insert into remote_employee values (87, 'Berte', 'Poetz', 'bpoetz2e@moonfruit.com', 'Female', '1961-12-12', 'Russia');
insert into remote_employee values (88, 'Maighdiln', 'Ducker', 'mducker2f@google.co.jp', 'Female', '1969-09-06', 'Belgium');
insert into remote_employee values (89, 'Beverley', 'Galliford', 'bgalliford2g@skype.com', 'Female', '1986-10-28', 'Belgium');
insert into remote_employee values (90, 'Bernadene', 'Wenderoth', 'bwenderoth2h@deliciousdays.com', 'Female', '1926-10-22', 'China');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (91, 'Sibbie', 'Boissieux', 'sboissieux2i@dailymail.co.uk', 'Female', '1971-11-21', 'Russia');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (92, 'Carolus', 'Spaxman', 'cspaxman2j@buzzfeed.com', 'Non-binary', '1930-05-09', 'Portugal');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (93, 'Andrus', 'Dullard', 'adullard2k@furl.net', 'Male', '1970-03-17', 'China');
insert into remote_employee values (94, 'Linnet', 'Castelyn', 'lcastelyn2l@intel.com', 'Female', '1963-10-27', 'Bosnia and Herzegovina');
insert into remote_employee values (95, 'Sutherlan', 'Rosenkranc', 'srosenkranc2m@com.com', 'Male', '1948-11-18', 'China');
insert into remote_employee values (96, 'Merralee', 'Murrie', 'mmurrie2n@nyu.edu', 'Female', '1956-07-06', 'Paraguay');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (97, 'Bonni', 'Cristofolini', 'bcristofolini2o@e-recht24.de', 'Female', '1992-04-05', 'Philippines');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (98, 'Merv', 'Hurring', 'mhurring2p@booking.com', 'Male', '1999-08-28', 'Brazil');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (99, 'Roddie', 'Fehely', 'rfehely2q@desdev.cn', 'Male', '1927-11-08', 'Indonesia');
insert into remote_employee (id, first_name, last_name, email, gender, dob, country) values (100, 'Pauletta', 'Barus', 'pbarus2r@list-manage.com', 'Female', '2019-07-30', 'Mexico');


---------------------------------------------------------------------------
-- From SQL Query Order of Operations

-- 1.FROM clause
-- 2.WHERE clause
-- 3.GROUP BY clause
-- 4.HAVING clause
-- 5.SELECT clause
-- 6.ORDER BY clause 

------------------------------------------------------------------------
-- select * from remote_employee;
-- select  country from remote_employee order by country;
-- a lot of duplicates so 
-- select distint(country) from remote_employee;
      --LIMITING
----------------------------------------------------------------------
-- select * from remote_employee where gender = 'Male' limit 10;
-- select * from remote_employee where gender='Female' limit 5;
-- select * from remote_employee offset 3 limit 5; -- fetch 5 employee after from id 4 or after id 3 [act independlty]
-- select * from remote_employee offset 3 fetch first 5 row only; -- same as above
-- select * from remote_employee offset 10; -- fetch after id 10

      --IN, BETWEEN
--------------------------------------------------------------------
-- select * from remote_employee where country in ('Russia', 'Japan','China');
-- select * from remote_employee where dob BETWEEN date '1992-04-05' and '2005-07-11';

      -- Wildcards like and ilike
----------------------------------------------------------------------
  -- select first_name from remote_employee where email like '%list-manage.com';
  -- select * from remote_employee where email like '%.co.%';
  -- select * from remote_employee where email like '________@%';
  -- -- select * from remote_employee where dob like date '____-11%';
  -- select * from remote_employee where country like 'J%';
  -- select * from remote_employee where country ilike 'j%'; -- ILIKE make case insensitive


--------------------------------------------------------------------
-- The HAVING clause specifies a search condition for a group or an aggregate.
-- The HAVING clause is often used with the GROUP BY clause to filter groups or aggregates based on a specified condition.
select count(gender), gender from remote_employee group by gender HAVING count(*)>20;
-- select count(country) People, country from remote_employee group by country;
-- select count(*) People, country from remote_employee group by country; -- same as above
select count(*) People, country from remote_employee group by country HAVING count(*) > 4 order by country;

-----------------------------------------------------------------------
        --basic OPerations
select 'ppp' = 'ppp';
select 6 <= 9;
select 6 <> 0; -- not equal
select 6 != 8;
select 'pop' <> 'hero';
select 8 + 0;
select 6 * 8;
select 6^8;
select 6/8;
-- select 6!; -- factorial
select 6%8;












































