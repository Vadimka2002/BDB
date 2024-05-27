SELECT ФИО,Дата_рождения,Специализация FROM Академики;
SELECT concat(ФИО, ' получил звание в ', Год_присвоения_звания) AS 'О присвоении звания' FROM Академики;
SELECT ФИО, Год_присвоения_звания + 5 AS 'Через 5 лет после присвоения звания' FROM Академики; 
SELECT DISTINCT Год_присвоения_звания FROM Академики;
SELECT ФИО FROM Академики ORDER BY ФИО DESC;
SELECT ФИО, Специализация, Год_присвоения_звания FROM Академики
ORDER BY Специализация DESC, Год_присвоения_звания DESC, ФИО;

SELECT * FROM  Академики ORDER BY  ФИО DESC LIMIT 1;
SELECT ФИО FROM Академики ORDER BY Год_присвоения_звания LIMIT 1;

SET @row_c=(SELECT count(*) FROM Академики);
SET @percent=10;
SET @count_row_for_view=@row_c*@percent/100;
SET @sql_query = (SELECT 
concat("SELECT * FROM `Академики`
ORDER BY `ФИО` LIMIT ", 
ROUND(@count_row_for_view)));
PREPARE run_query from @sql_query;
execute run_query;
DEALLOCATE PREPARE run_query;

SELECT ФИО, год
FROM 
(SELECT ФИО, Год_присвоения_звания as 'год'
FROM Академики) a
JOIN  
    (SELECT distinct Год_присвоения_звания  AS 'год2'
    FROM Академики 
    ORDER BY Год_присвоения_звания
    LIMIT 1) b 
on a.`год` = b.`год2`;

SET @row_c=(SELECT count(*) FROM Академики);
SET @count_row_for_view=@row_c-10;
SET @part1 = "SELECT * FROM `Академики`
ORDER BY `Дата_рождения` LIMIT 9, "
;
SET @sql_query = (SELECT 
concat(@part1, @count_row_for_view));
PREPARE run_query from @sql_query;
execute run_query;
DEALLOCATE PREPARE run_query;

SELECT * FROM Академики ORDER BY ФИО LIMIT 8, 2;