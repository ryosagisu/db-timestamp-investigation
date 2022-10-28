start:
	docker-compose up -d

stop:
	docker-compose down -v

query-mysql:
	docker exec -it spark spark-submit --driver-class-path /spark_additional_jars/mysql-connector-java-8.0.28.jar --conf 'spark.driver.extraJavaOptions=-Duser.timezone=UTC','spark.executor.extraJavaOptions=-Duser.timezone=UTC' /spark_scripts/mysql.py

query-postgresql:
	docker exec -it spark spark-submit --driver-class-path /spark_additional_jars/mysql-connector-java-8.0.28.jar:/spark_additional_jars/postgresql-42.3.3.jar --conf 'spark.driver.extraJavaOptions=-Duser.timezone=UTC','spark.executor.extraJavaOptions=-Duser.timezone=UTC' /spark_scripts/postgresql.py