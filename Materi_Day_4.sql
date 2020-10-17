USE day4;

SELECT SIN(0.5), COS(0.5), PI(), RADIANS(180),DEGREES(2.25),DEGREES (PI());
SELECT LOG(1), POW(2,3), POWER (10,3), EXP (9), (RAND()*100),(FLOOR (RAND()*100))
SELECT (ROUND((FLOOR(RAND()*10))+(RAND()*1)),3)

SELECT (((ROUND RAND()*2)),2)
((SELECT ROUND(RAND()*POW(10,8))),'nama', (SELECT ROUND((2+(RAND()*2)),2)))


CREATE TABLE mhs_random (
nim INT,
nama VARCHAR (50),
semester_1 DECIMAL (3,2),
semester_2 DECIMAL (3,2),
semester_3 DECIMAL (3,2)
);

INSERT INTO mhs_random VALUE (
(SELECT ROUND(RAND()*POW(10,8))),
'Rina Kumala Sari',
(SELECT ROUND((2+(RAND()*2)),2)),
(SELECT ROUND((2+(RAND()*2)),2)),
(SELECT ROUND((2+(RAND()*2)),2))
);

INSERT INTO mhs_random VALUE (
(SELECT ROUND(RAND()*POW(10,8))),
'Riana Putria',
(SELECT ROUND((2+(RAND()*2)),2)),
(SELECT ROUND((2+(RAND()*2)),2)),
(SELECT ROUND((2+(RAND()*2)),2))
);

SELECT * FROM mhs_random;


SELECT MIN (semester_1) AS 'nilai_min',
	MAX(semester_1) AS 'nilai_max',
	ROUND(AVG(semester_1),2) AS 'nilai_avg',
	SUM (semester_1) AS 'nilai_sum',
	STD(semester_1) AS 'nilai_std' FROM mhs_random;
	

/* format nilai mata uang*/
SELECT FORMAT (1000000.4000,0); 
SELECT FORMAT (3.5,2,'es_US');

/* format string UPPER*/
SELECT LOWER("SAYA MAU MAKAN AYAM GORENG");
SELECT LCASE("SAYA MAU MAKAN AYAM GORENG");

/* format string LOWER*/
SELECT UPPER("saya mau makan nasi uduk");
SELECT UCASE("saya mau makan nasi uduk");

/*Tugas 2*/

CREATE TABLE data_mhs (
nim INT,
nama VARCHAR (50),
ipk DECIMAL (3,2),
spp INT,
jurusan VARCHAR (20)
);
DESC data_mhs;

INSERT INTO data_mhs (
(SELECT ROUND(RAND()*POW(10,8))),'ANGGA REVANA',(SELECT ROUND((2+(RAND()*2)),2)),(1000000.4000,0),'INFORMATIKA');

);

SELECT * FROM t_tbc;