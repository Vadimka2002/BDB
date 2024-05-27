create table Управление_Вдовкин
(
	ID INT PRIMARY KEY ,
    Вид VARCHAR(20) DEFAULT ''    
);
create table Страны_Вдовкин
(
	Страна VARCHAR(100) PRIMARY KEY NOT NULL,
    Столица VARCHAR(100),
    Часть_света VARCHAR(100),
    Население INT,
    Площадь INT,
    Тип_управления INT CHECK(Тип_управления < 6)
);
create table Цветы_Вдовкин
(
	ID INT PRIMARY KEY UNIQUE,
    Класс VARCHAR(100) DEFAULT 'Двудольные'
);
create table Животные_Вдовкин
(
	ID INT PRIMARY KEY UNIQUE,
    Отряд VARCHAR(100) DEFAULT 'Хищные'
);