/* 
Importing csv file into a table.
*/


create table carrier (code string, description string) row format delimited fields terminated by ',';

load data inpath '/tmp/carriers.csv' overwrite into table carrier;
