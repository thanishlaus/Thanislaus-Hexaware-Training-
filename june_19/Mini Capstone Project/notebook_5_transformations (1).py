# Databricks notebook source
from pyspark.sql.functions import *

flights_df = spark.read.format("delta").load(
    "/Volumes/hexa_databrick_7405614050819600/default/hexa-volume/flights"
)

bookings_df = spark.read.format("delta").load(
    "/Volumes/hexa_databrick_7405614050819600/default/hexa-volume/bookings"
)

# COMMAND ----------

bookings_df = bookings_df.withColumn(
    "ticket_price",
    col("ticket_price").cast("double")
)

# COMMAND ----------

airline_df = bookings_df.join(
    flights_df,
    on="flight_id",
    how="inner"
)

airline_df.show()

# COMMAND ----------

bookings_df = bookings_df.withColumn(
    "revenue",
    col("ticket_price")
)

bookings_df.show()

# COMMAND ----------

bookings_df = bookings_df.withColumn(
    "price_band",
    when(col("ticket_price") > 20000, "Premium")
    .when(col("ticket_price") > 10000, "Standard")
    .otherwise("Budget")
)

bookings_df.show()

# COMMAND ----------

flights_df = flights_df.withColumn(
    "delay_flag",
    when(col("status") == "Delayed", "Yes")
    .otherwise("No")
)

flights_df.show()

# COMMAND ----------

bookings_df.printSchema()

flights_df.printSchema()

# COMMAND ----------

flights_df.write \
.mode("overwrite") \
.format("delta") \
.save("/Volumes/hexa_databrick_7405614050819600/default/hexa-volume/silver_flights")

bookings_df.write \
.mode("overwrite") \
.format("delta") \
.save("/Volumes/hexa_databrick_7405614050819600/default/hexa-volume/silver_bookings")

# COMMAND ----------

spark.read.format("delta").load(
    "/Volumes/hexa_databrick_7405614050819600/default/hexa-volume/silver_flights"
).show()

spark.read.format("delta").load(
    "/Volumes/hexa_databrick_7405614050819600/default/hexa-volume/silver_bookings"
).show()