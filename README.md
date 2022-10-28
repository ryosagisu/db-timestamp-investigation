# db-timestamp-investigation
observing timestamp behavior in mysql and postgresql

table only contain single row in timestamp with timezone and timestamp without timezone
`'2022-01-01 12:00:00', '2022-01-01 13:00:00'`
third columns will indicate current timestamp
and only first column value should be changed to UTC

Database timezone is in Jakarta and Singapore
Spark is in UTC

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
