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

# query mysql table
make query-mysql

# query postgresql table
make query-postgresql

# cleanup container
make stop

```
