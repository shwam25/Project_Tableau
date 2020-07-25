/*Queries  */
SELECT *
FROM olympicinfo

/*Renaming column name  */
SELECT olympicinfo.namee
alter table  olympicinfo rename column namee to athlete;

/*Dropping column  */
select * from olympicinfo;
alter table olympicinfo drop column noc;

/*ELT Staging  */
select * into table staging_olympic from olympicinfo where 1=1;
select * from staging_olympic;
SELECT * INTO TABLE final_olympicinfo FROM staging_olympic WHERE year between '1999' AND '2017';
select * from final_olympicinfo;