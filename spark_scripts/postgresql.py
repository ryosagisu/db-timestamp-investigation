from pyspark.sql import SparkSession

def main() -> None:
	spark = SparkSession.builder.master("local").appName("postgresql task").getOrCreate()

	spark.read.format("jdbc").option("url", "jdbc:postgresql://pgid:5432/postgres?user=postgres&password=example").option("query", "select *, now() from bar").load().show(1, False)
	print("^result from jakarta server represented in utc")

	spark.read.format("jdbc").option("url", "jdbc:postgresql://pgsg:5432/postgres?user=postgres&password=example").option("query", "select *, now() from bar").load().show(1, False)
	print("^result from singapore server represented in utc")


if __name__ == "__main__":
    main()
