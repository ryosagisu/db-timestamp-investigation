-- compare timezone for timestamp and datetime
create table tz_behavior (tsz timestamptz, ts timestamp);
insert into tz_behavior values('2022-01-01 12:00:00', '2022-01-01 13:00:00');

-- observe modifying default value to existing column
create table ts_default (id int, updated_at timestamp);
insert into ts_default (id) values(1);
insert into ts_default (id) values(2);
insert into ts_default (id, updated_at) values(10, '2022-01-01 12:00:00');
insert into ts_default (id, updated_at) values(20, '2022-01-01 12:00:00');
alter table ts_default alter column updated_at set default current_timestamp;
insert into ts_default (id) values(100);
insert into ts_default (id) values(200);
