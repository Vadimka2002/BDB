1.1)
Delimiter //
Create trigger year_insert before  insert
on people for each row 
begin
if new.Year > '2024-05-22' then
    set new.Year = '2024-05-22';
end if;
end
//

1.2)
Delimiter //
Create trigger description_update before update 
on people for each row 
begin
  if char_(new.phone) > 12 then
    set new.phone = '+7XXXXXXXXXX';
end if;
end//

 2. Delimiter //
Create trigger duplicate_table after delete 
on ychet.должности for each row 
begin
  insert into ychet_dup.должности (idDolshnost, nameDolshn)
  values (old.idDolshnost, old.nameDolshn);
end//
#3
 Delimiter ;
drop view spr;
Create view spr as
select idSpravka, count(amountVakansii) as Кол_во
from справочник
group by idOtdel
having Кол_во > 2;

#4
drop view multitable;
Create view multitable as
select справочник.idSpravka, должности.nameDolsh, отдел.NameOtdel
from справочник
join должности on справочник.idDolshnost = должности.idDolshnost
join отдел on справочник.idOtdel = отдел.idOtdel;

#5 Создать пользователя только с правами добавления, изменения, удаления и просмотра данных, 
# получения представлений для вашей базы данных.
CREATE USER 'user'@'127.0.0.1' IDENTIFIED BY 'password';
GRANT SELECT, INSERT, UPDATE, DELETE, ALTER ON ychet.* TO 'user'@'127.0.0.1';