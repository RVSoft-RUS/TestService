
create table if not exists public.organization
(
    id         integer,
    name       varchar(100),
    inn        varchar,
    residence  varchar(20),
    store_date date,
    block_date date,
    region     integer
);

alter table public.organization
    owner to postgres;

insert into organization(id, name, inn, residence, store_date, block_date, region)
VALUES (0, 'Компания не определена', 'Не определен', 'Не определен', '01.01.2000 00:00:00', '01.01.2000 00:00:00', 21);

insert into organization(id, name, inn, residence, store_date, block_date, region)
VALUES (1, 'СП Урожай ООО', '0205008145', 'Резидент РФ', '01.01.2021 00:00:00', null, 77);

insert into organization(id, name, inn, residence, store_date, block_date, region)
VALUES (2, 'Шкаповское ГПП ООО', '0255017547', 'Резидент РФ', '01.01.2021 00:00:00', null, 34);

insert into organization(id, name, inn, residence, store_date, block_date, region)
VALUES (3, 'Газпром Нефтехим Салават ООО', '0266048970', 'Резидент РФ', '01.01.2021 00:00:00', null, 34);

insert into organization(id, name, inn, residence, store_date, block_date, region)
VALUES (4, 'АНК Башнефть ПАО', '0274051582', 'Резидент РФ', '01.01.2021 00:00:00', null, 71);

insert into organization(id, name, inn, residence, store_date, block_date, region)
VALUES (5, 'Разрез Тугнуйский АО', '0314002305', 'Резидент РФ', '01.01.2021 00:00:00', null, 71);

insert into organization(id, name, inn, residence, store_date, block_date, region)
VALUES (6, 'Угольный разрез ООО', '0318015873', 'Резидент РФ', '01.01.2021 00:00:00', null, 25);

insert into organization(id, name, inn, residence, store_date, block_date, region)
VALUES (7, 'Бурятнефтепродукт АО', '0323031768', 'Резидент РФ', '01.01.2021 00:00:00', null, 25);

insert into organization(id, name, inn, residence, store_date, block_date, region)
VALUES (8, 'РН-Ингушнефтепродукт ООО', '0603285282', 'Резидент РФ', '01.01.2021 00:00:00', null, 22);

insert into organization(id, name, inn, residence, store_date, block_date, region)
VALUES (9, 'НК Роснефть - Карачаево-Черкескнефтепродукт АО', '0901021415', 'Резидент РФ', '01.01.2021 00:00:00', null, 22);

insert into organization(id, name, inn, residence, store_date, block_date, region)
VALUES (10, 'Карелиянефтепродукт АО', '1001011293', 'Резидент РФ', '01.01.2021 00:00:00', null, 14);

insert into organization(id, name, inn, residence, store_date, block_date, region)
VALUES (11, 'Газпром переработка ООО', '1102054991', 'Резидент РФ', '01.01.2021 00:00:00', null, 72);

insert into organization(id, name, inn, residence, store_date, block_date, region)
VALUES (12, 'ЛУКОЙЛ-УНП ООО', '1102057865', 'Резидент РФ', '01.01.2021 00:00:00', null, 19);

insert into organization(id, name, inn, residence, store_date, block_date, region)
VALUES (13, 'Воркутауголь АО', '1103019252', 'Резидент РФ', '01.01.2021 00:00:00', null, 22);

insert into organization(id, name, inn, residence, store_date, block_date, region)
VALUES (14, 'Интауголь АО', '1104014112', 'Резидент РФ', '01.01.2021 00:00:00', null, 16);

insert into organization(id, name, inn, residence, store_date, block_date, region)
VALUES (15, 'ННК-Печоранефть АО', '1105004639', 'Резидент РФ', '01.01.2021 00:00:00', null, 11);

insert into organization(id, name, inn, residence, store_date, block_date, region)
VALUES (16, 'ЛУКОЙЛ-Коми ООО', '1106014140', 'Резидент РФ', '01.01.2021 00:00:00', null, 56);

insert into organization(id, name, inn, residence, store_date, block_date, region)
VALUES (17, 'Таас-Юрях Нефтегазодобыча ООО', '1433015633', 'Резидент РФ', '01.01.2021 00:00:00', null, 54);

insert into organization(id, name, inn, residence, store_date, block_date, region)
VALUES (18, 'Якутуголь ХК АО', '1434026980', 'Резидент РФ', '01.01.2021 00:00:00', null, 52);

insert into organization(id, name, inn, residence, store_date, block_date, region)
VALUES (19, 'Эльгауголь ООО', '1434045743', 'Резидент РФ', '01.01.2021 00:00:00', null, 45);
