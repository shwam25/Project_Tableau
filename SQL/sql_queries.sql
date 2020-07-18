select * from olympicinfo;
alter table olympicinfo drop column noc;
select * into table staging_olympic from olympicinfo where 1=1;
select * from staging_olympic;
SELECT * INTO TABLE final_olympicinfo FROM staging_olympic WHERE year between '1999' AND '2017';
select * from final_olympicinfo;