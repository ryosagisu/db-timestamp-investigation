start:
	docker-compose up -d

stop:
	docker-compose down -v

query_mysql_tz_behavior:
	docker exec -it spark spark-submit --driver-class-path /spark_additional_jars/mysql-connector-java-8.0.28.jar --conf 'spark.driver.extraJavaOptions=-Duser.timezone=UTC','spark.executor.extraJavaOptions=-Duser.timezone=UTC' /spark_scripts/mysql.py

query_postgresql_tz_behavior:
	docker exec -it spark spark-submit --driver-class-path /spark_additional_jars/mysql-connector-java-8.0.28.jar:/spark_additional_jars/postgresql-42.3.3.jar --conf 'spark.driver.extraJavaOptions=-Duser.timezone=UTC','spark.executor.extraJavaOptions=-Duser.timezone=UTC' /spark_scripts/postgresql.py

query_mysql_ts_behavior:
	docker exec -it myid mysql -pexample -e "select * from foo.ts_default"

query_psql_ts_behavior:
	docker exec -it pgid psql -U postgres -d postgres -c 'SELECT * FROM ts_default'

