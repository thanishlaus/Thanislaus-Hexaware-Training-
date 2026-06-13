import pandas as pd
import numpy as np

# Load dataset
df = pd.read_csv("stock_movements.csv")

print("Original Data")
print(df)

# Convert date column
df["movement_date"] = pd.to_datetime(df["movement_date"])

# Ensure quantity is integer
df["quantity"] = df["quantity"].astype(int)

# Calculate current stock
stock_summary = (
    df.groupby(["product_id", "product_name", "reorder_level"])
    ["quantity"]
    .sum()
    .reset_index()
)

stock_summary.rename(
    columns={"quantity": "current_stock"},
    inplace=True
)

# Flag low stock items
stock_summary["status"] = np.where(
    stock_summary["current_stock"] <
    stock_summary["reorder_level"],
    "Low Stock",
    "Sufficient Stock"
)

print("\nStock Summary")
print(stock_summary)

# Save low stock products
low_stock = stock_summary[
    stock_summary["status"] == "Low Stock"
]

low_stock.to_csv(
    "low_stock_report.csv",
    index=False
)

print("\nLow Stock Report Generated")