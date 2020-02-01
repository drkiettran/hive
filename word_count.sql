drop table if exists othello;

create table othello (line string);

dfs -cp /user/student/shakespeare/tragedy/othello.txt /tmp;

load data inpath '/tmp/othello.txt' overwrite into table othello;

drop table if exists word_count;

create table word_count as 
select word, count(1) as count from 
  (select explode(split(line, ' ')) as word from othello) w
group by word
order by word;

