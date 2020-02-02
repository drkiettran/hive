/* 
Importing csv file into a table.
*/

drop table if exists carrier;

create table carrier (code string, description string) row format delimited fields terminated by ',';

dfs -cp /user/student/airline/carriers.csv /tmp;

load data inpath '/tmp/carriers.csv' overwrite into table carrier;
