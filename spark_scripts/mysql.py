from pyspark.sql import SparkSession

def main() -> None:
	spark = SparkSession.builder.master("local").appName("mysql task").getOrCreate()

	spark.read.format("jdbc").option("url", "jdbc:mysql://myid:3306/foo?user=root&password=example&connectionTimeZone=UTC&forceConnectionTimeZoneToSession=true").option("query", "select *, now() from bar").load().show(1, False)
	print("^result from jakarta server represented in utc")


	spark.read.format("jdbc").option("url", "jdbc:mysql://mysg:3306/foo?user=root&password=example&connectionTimeZone=UTC&forceConnectionTimeZoneToSession=true").option("query", "select *, now() from bar").load().show(1, False)
	print("^result from singapore server represented in utc")


if __name__ == "__main__":
    main()
