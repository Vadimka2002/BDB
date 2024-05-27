SELECT*FROM академики ORDER BY length(ФИО);
SELECT trim(ФИО) AS ФИО, Дата_рождения, Специализация, Год_присвоения_звания FROM академики;
SELECT ФИО, locate('ов', ФИО) AS Позиция_ов FROM академики;
SELECT ФИО, right(Специализация, 2) FROM академики;
SELECT concat(left(ФИО, locate(' ', ФИО)), SUBSTRING(ФИО, locate(' ', ФИО)+1,1),'.',SUBSTRING(ФИО, locate(' ', ФИО, locate(' ',ФИО)+1)+1,1),'.') FROM академики;
SELECT DISTINCT Специализация, REVERSE(Специализация) FROM академики;
SELECT REPEAT('Вдовкин', 22);
SELECT ROUND(ABS(POW(SIN(PI()/2),2)-COS(3*PI()/2)),2);
SELECT DATEDIFF(CAST("2024-06-01" as date),current_date());
SELECT ((EXTRACT(YEAR FROM current_date())-EXTRACT(YEAR FROM '2002-01-17'))*12)+(EXTRACT(MONTH FROM current_date())-EXTRACT(MONTH FROM '2002-01-17'));

select *
From
(select фио, year(дата_рождения) as год_рождения
from академики)a
where год_рождения % 4 = 0;

SELECT Специализация
, case 
    When length(Специализация) > 12 then 'Длинный'
    else 'Короткий'
    end as Длина
from академики; 
SELECT DISTINCT Специализация, IF(length(Специализация) > 12 ,'Длинный','Короткий') AS Длина FROM академики;
SELECT DISTINCT Специализация,CASE WHEN length(Специализация) > 12 THEN 'Длинный'ELSE 'Короткий'END AS Длина FROM академики;