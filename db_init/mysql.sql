-- compare timezone for timestamp and datetime
create database foo;
create table foo.tz_behavior (ts timestamp, dt datetime);
insert into foo.tz_behavior values('2022-01-01 12:00:00', '2022-01-01 13:00:00');

-- observe modifying default value to existing column
create table foo.ts_default (id int, updated_at timestamp);
insert into foo.ts_default (id) values(1);
insert into foo.ts_default (id) values(2);
insert into foo.ts_default (id, updated_at) values(10, '2022-01-01 12:00:00');
insert into foo.ts_default (id, updated_at) values(20, '2022-01-01 12:00:00');
alter table foo.ts_default modify column updated_at timestamp default current_timestamp;
insert into foo.ts_default (id) values(100);
insert into foo.ts_default (id) values(200);
