# db-timestamp-investigation
observing timestamp behavior in mysql and postgresql

table contain single row with following information

| desc             | value                   | postgresql type                             | mysql type   |
| ---------------- | ----------------------- | ------------------------------------------- | ------------ |
| with timezone    | `'2022-01-01 12:00:00'` | `timestamptz` or `timestamp with timezone`  | `timestamp`  |
| without timezone | `'2022-01-01 13:00:00'` | `timestamp` or `timestamp without timezone` | `datetime`   |

third columns will indicate current timestamp

only timestamp with timezone information will be converted to UTC

Database timezone is in Jakarta and Singapore, and Spark is in UTC

run makefile to operate
```bash
# start all container
make start

# run spark to query mysql table
make query_mysql_tz_behavior

# run spark to query psql table
make query_psql_tz_behavior

# show content of mysql table
make query_mysql_ts_behavior

# show content of psql table
make query_psql_ts_behavior

# cleanup container
make stop

```

