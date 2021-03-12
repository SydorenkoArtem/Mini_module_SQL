select * from users;

select concat('We have ', count(*), case when gender = 'm' then ' boys!' else ' girls!' end) from users group by gender;

select concat('This is ', name, case when gender = 'f' then ' she' else ' he' end, ' has email ', mail) from users;