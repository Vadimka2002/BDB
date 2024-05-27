#1
select Название, round(cast(Площадь AS FLOAT)*100/(select sum(Площадь) from cтраны),3) as Процент from cтраны order by Процент desc;
#2
select Название from cтраны where (Население / Площадь) > (select (sum(Население) / sum(Площадь)) from cтраны);
#3
select *from (select*from cтраны where Континент = 'Европа') A where Население < 5000000; 
#4
select Название, round(cast(Площадь AS FLOAT)*100/(select sum(Площадь) from cтраны Б where А.Континент = Б.Континент),3) as Процент from cтраны А order by Процент desc;
#5
select*from cтраны А where Площадь > (select avg(Площадь) from cтраны Б where Б.Континент = А.Континент);
#6?????
select*from cтраны where Континент in(select Континет from cтраны group by Континент having avg(Население) > (select avg(Население) from cтраны));
#7
select*from cтраны where Континент = 'Южная Америка' AND Население > ALL(select Население from cтраны where Континент = 'Африка');
#8
select*from cтраны where Континент = 'Африка' AND Население > ANY(select Население from cтраны where Континент = 'Южная Америка');
#9
select*from cтраны where Континент = 'Африка' AND exists(select*from cтраны where Континент = 'Африка' AND Площадь > 2000000);
#10
select*from cтраны where Континент = (select Континент from cтраны where Название = 'Бенин');
#11
select*from cтраны where Население <= (select Население from cтраны where Название = 'Бенин');
#12
select*from cтраны where Население = (select max(Мин_Нас) from (select min(Население) as Мин_Нас from cтраны group by Континент) А);