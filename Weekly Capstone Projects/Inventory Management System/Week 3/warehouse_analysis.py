from pyspark.sql import SparkSession
from pyspark.sql.functions import sum, when

# Create Spark Session
spark = SparkSession.builder \
    .appName("InventoryAnalysis") \
    .getOrCreate()

# Load CSV
df = spark.read.csv(
    "C:\Users\USER\Documents\Hexa role specific training\Weekly capstone project 2\Week 3\warehouse_stock.csv",
    header=True,
    inferSchema=True
)

print("Warehouse Data")
df.show()

# Aggregate stock per warehouse

warehouse_stock = (
    df.groupBy(
        "warehouse_id",
        "warehouse_name"
    )
    .agg(
        sum("quantity")
        .alias("total_stock")
    )
)

# Categorize warehouses

warehouse_stock = warehouse_stock.withColumn(
    "stock_status",
    when(
        warehouse_stock.total_stock < 30,
        "Understocked"
    )
    .when(
        warehouse_stock.total_stock > 150,
        "Overstocked"
    )
    .otherwise("Normal")
)

print("Warehouse Stock Summary")
warehouse_stock.show()

# Save output

warehouse_stock.toPandas().to_csv(
    "warehouse_status.csv",
    index=False
)

spark.stop()