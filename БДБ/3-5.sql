SELECT * FROM cтраны where Площадь = (select min(Площадь) from cтраны);
select*from cтраны where Континент = "Северная Америка" union select * from(select *from cтраны where Континент = "Южная Америка" order by Население desc limit 1)b;
select round(avg(Население),1) from cтраны;
select  count(*) from cтраны where Название regexp "ан$" and Название not regexp "стан$"; 
select count(distinct континент) from cтраны where название regexp "^А";

set @big = (select площадь from cтраны order by площадь desc limit 1);
set @small = (select площадь from cтраны order by площадь asc limit 1);
select round(@big / @small,1) as v;

select континент , count(*) as amount_country from cтраны where Население > 100000000 group by континент order by amount_country asc;
select count(length(Название)) as колво, length(Название) as длина from cтраны group by длина order by колво desc;
select round(sum(Население) * 1.1) as сумма, континент from cтраны group by континент order by континент;
select континент from cтраны group by континент having max(площадь) <= 10000 * min(площадь);
select avg(length(Название)) as "ср.длина" from cтраны where континент = 'Африка';

select континент, avg(cast(Население as float) / Площадь) as Плотность
From cтраны
where Площадь > 1000000
group by континент
having avg(cast(Население as float) / Площадь) > 30
order by Плотность desc;
