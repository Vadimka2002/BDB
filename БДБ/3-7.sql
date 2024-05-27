#1
select*from cтраны where Площадь < 500
union
select*from cтраны where Площадь > 5000000;
#2
select*from cтраны where Площадь > 1000000 
except
select*from cтраны where Население < 100000000;
#3
select*from cтраны where Площадь < 500
union
select*from cтраны where Население < 100000;