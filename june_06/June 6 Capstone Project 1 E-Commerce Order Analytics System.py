# import csv
#
# #1 & 2 display all records
# with open("orders.csv", "r") as file:
#     reader = csv.reader(file)
#
#     for row in reader:
#         print(row)

#3 Count total orders
# count = 0
# with open("orders.csv", "r") as file:
#     reader = csv.reader(file)
#     next(reader)
#     for row in reader:
#         count += 1
# print("Total Orders:", count)

#4 Calculate total revenue
# total_rev=0
# with open("orders.csv") as file:
#     reader=csv.reader(file)
#     next(reader)
#     for row in reader:
#         quantity=int(row[5])
#         price=int(row[6])
#         total_rev+=quantity*price
# print("Total Revenue:",total_rev)

#5 Find highest order value
# import csv
# highest = 0
# with open("orders.csv","r") as file:
#     reader = csv.reader(file)
#     next(reader)
#     for row in reader:
#         value=int(row[5])*int(row[6])
#         if values > highest:
#             highest=value
# print("Highest-Order Value:",highest)

#6 Find lowest order value.
# import csv
# lowest = float('inf')
# with open("orders.csv", "r") as file:
#     reader = csv.reader(file)
#     next(reader)
#     for row in reader:
#         value = int(row[5]) * int(row[6])
#         if value < lowest:
#             lowest = value
# print("Lowest Order Value:", lowest)

#7 Find average order value.
# total = 0
# count = 0
# with open("orders.csv", "r") as file:
#     reader = csv.reader(file)
#     next(reader)
#     for row in reader:
#         total += int(row[5]) * int(row[6])
#         count += 1
# print("Average Order Value:", total / count)

# #8 Display all unique customers
# customers = set()
# with open("orders.csv", "r") as file:
#     reader = csv.reader(file)
#     next(reader)
#     for row in reader:
#         customers.add(row[1])
# print(customers)
#
# #9 Count unique customers
# customers = set()
# with open("orders.csv", "r") as file:
#     reader = csv.reader(file)
#     next(reader)
#     for row in reader:
#         customers.add(row[1])
# print("Unique Customers:", len(customers))
#
# #10 Customer with highest purchase amount
# customer_revenue = {}
# with open("orders.csv", "r") as file:
#     reader = csv.reader(file)
#     next(reader)
#     for row in reader:
#         customer = row[1]
#         revenue = int(row[5]) * int(row[6])
#         customer_revenue[customer] = customer_revenue.get(customer, 0) + revenue
# top_customer = max(customer_revenue, key=customer_revenue.get)
# print("Top Customer:", top_customer)
#
# #11 Count orders by product
# product_count = {}
# with open("orders.csv", "r") as file:
#     reader = csv.reader(file)
#     next(reader)
#     for row in reader:
#         product = row[3]
#         product_count[product] = product_count.get(product, 0) + 1
# print(product_count)
#
# #12 Revenue by product
# product_revenue = {}
# with open("orders.csv", "r") as file:
#     reader = csv.reader(file)
#     next(reader)
#     for row in reader:
#         product = row[3]
#         revenue = int(row[5]) * int(row[6])
#         product_revenue[product] = product_revenue.get(product, 0) + revenue
# print(product_revenue)
#
# #13 Most sold product
# product_quantity = {}
# with open("orders.csv", "r") as file:
#     reader = csv.reader(file)
#     next(reader)
#     for row in reader:
#         product = row[3]
#         quantity = int(row[5])
#         product_quantity[product] = product_quantity.get(product, 0) + quantity
# top_product = max(product_quantity, key=product_quantity.get)
# print("Most Sold Product:", top_product)
#
# #14 Least sold product
# print(min(product_quantity, key=product_quantity.get))

# #15 Revenue by category
# import csv
# category_revenue = {}
# with open("orders.csv", "r") as file:
#     reader = csv.reader(file)
#     next(reader)
#     for row in reader:
#         category = row[4]
#         revenue = int(row[5]) * int(row[6])
#         category_revenue[category] = category_revenue.get(category, 0) + revenue
# print(category_revenue)
#
# #16 Count orders by city
# city_orders = {}
# with open("orders.csv", "r") as file:
#     reader = csv.reader(file)
#     next(reader)
#     for row in reader:
#         city = row[2]
#         city_orders[city] = city_orders.get(city, 0) + 1
# print(city_orders)
#
# #17 Revenue by city
# city_revenue = {}
# with open("orders.csv", "r") as file:
#     reader = csv.reader(file)
#     next(reader)
#     for row in reader:
#         city = row[2]
#         revenue = int(row[5]) * int(row[6])
#         city_revenue[city] = city_revenue.get(city, 0) + revenue
# print(city_revenue)
#
# #18 City generating highest revenue
# print(max(city_revenue, key=city_revenue.get))

#19 sort alphabetically
# products = []
# with open("orders.csv", "r") as file:
#     reader = csv.reader(file)
#     next(reader)
#     for row in reader:
#         products.append(row[3])
# products.sort()
# print(products)
#
# #20 Store unique cities in a set
# cities = set()
# with open("orders.csv", "r") as file:
#     reader = csv.reader(file)
#     next(reader)
#     for row in reader:
#         cities.add(row[2])
# print(cities)
#
# #21 Create dictionary
# city_revenue = {}
# with open("orders.csv", "r") as file:
#     reader = csv.reader(file)
#     next(reader)
#     for row in reader:
#         city = row[2]
#         revenue = int(row[5]) * int(row[6])
#         city_revenue[city] = city_revenue.get(city, 0) + revenue
# print(city_revenue)
#
# #22
# product_quantity = {}
# with open("orders.csv", "r") as file:
#     reader = csv.reader(file)
#     next(reader)
#     for row in reader:
#         product = row[3]
#         quantity = int(row[5])
#         product_quantity[product] = product_quantity.get(product, 0) + quantity
# print(product_quantity)
#
# #23 Functions
# def calculate_total_revenue():
#     total = 0
#     with open("orders.csv", "r") as file:
#         reader = csv.reader(file)
#         next(reader)
#         for row in reader:
#             total += int(row[5]) * int(row[6])
#     return total
# print(calculate_total_revenue())
#
# #24
# def find_top_product():
#     product_quantity = {}
#     with open("orders.csv", "r") as file:
#         reader = csv.reader(file)
#         next(reader)
#         for row in reader:
#             product = row[3]
#             quantity = int(row[5])
#             product_quantity[product] = product_quantity.get(product, 0) + quantity
#     return max(product_quantity, key=product_quantity.get)
# print(find_top_product())
#
# #25
# def find_top_city():
#     city_revenue = {}
#     with open("orders.csv", "r") as file:
#         reader = csv.reader(file)
#         next(reader)
#         for row in reader:
#             city = row[2]
#             revenue = int(row[5]) * int(row[6])
#             city_revenue[city] = city_revenue.get(city, 0) + revenue
#     return max(city_revenue, key=city_revenue.get)
# print(find_top_city())
#
# #26
# def find_average_order_value():
#     total = 0
#     count = 0
#     with open("orders.csv", "r") as file:
#         reader = csv.reader(file)
#         next(reader)
#         for row in reader:
#             total += int(row[5]) * int(row[6])
#             count += 1
#     return total / count
# print(find_average_order_value())
#
# #27 Exception Handling
# try:
#     with open("orders.csv", "r") as file:
#         print(file.read())
# except FileNotFoundError:
#     print("CSV File Not Found")
#
# #28
# try:
#     quantity = int("abc")
# except ValueError:
#     print("Invalid Quantity Value")
#
# #29
# try:
#     price = int("xyz")
# except ValueError:
#     print("Invalid Price Value")

# #30  Packages numpy pandas
# import csv
# import numpy as np
# import pandas as pd
# order_values = []
# with open("orders.csv", "r") as file:
#     reader = csv.reader(file)
#     next(reader)
#     for row in reader:
#         revenue = int(row[5]) * int(row[6])
#         order_values.append(revenue)
# arr = np.array(order_values)
# print("Total Revenue:", np.sum(arr))
# print("Average Revenue:", np.mean(arr))
# print("Maximum Revenue:", np.max(arr))
# print("Minimum Revenue:", np.min(arr))
# print("Standard Deviation:", np.std(arr))
#
# #31
# df = pd.read_csv("orders.csv")
# print(df)
#
# #32
# df["Revenue"] = df["quantity"] * df["price"]
# print(df)
#
# #33 Top 5 Highest Value Orders
# top5 = df.sort_values(
#     by="Revenue",
#     ascending=False
# ).head(5)
# print(top5)
#
# #34 Group By City and Calculate Revenue
# print(df.groupby("city")["Revenue"].sum())
#
# #35
# print(df.groupby("product")["Revenue"].sum())
#
# #36
# top_products = df.groupby("product")["quantity"].sum()
# print(top_products.sort_values(ascending=False))
#
# #37 City Wise Order Count
# print(df.groupby("city")["order_id"].count())
#
# import pandas as pd
# import numpy as np
#
# #38
# with open("sales_summary_report.txt", "w") as file:
#
#     file.write("SALES SUMMARY REPORT\n")
#     file.write("====================\n\n")
#
#     file.write(f"Total Orders : {len(df)}\n")
#     file.write(f"Total Revenue : {df['Revenue'].sum()}\n")
#     file.write(f"Average Order Value : {df['Revenue'].mean()}\n")
#     file.write(f"Highest Order Value : {df['Revenue'].max()}\n")
#     file.write(f"Lowest Order Value : {df['Revenue'].min()}\n\n")
#
#     file.write("Revenue By City\n")
#     file.write(str(df.groupby("city")["Revenue"].sum()))
#     file.write("\n\n")
#
#     file.write("Revenue By Category\n")
#     file.write(str(df.groupby("category")["Revenue"].sum()))
#     file.write("\n\n")
#
#     top_product = df.groupby("product")["quantity"].sum().idxmax()
#     top_city = df.groupby("city")["Revenue"].sum().idxmax()
#
#     file.write(f"Top Selling Product : {top_product}\n")
#     file.write(f"Top Revenue City : {top_city}\n")
# print("Report Generated Successfully")
#
# high_value = df[df["Revenue"] > 50000]
#
# high_value.to_csv(
#     "high_value_orders.csv",
#     index=False
# )
# print("High Value Orders File Created")
#
# #39
# electronics = df[df["category"] == "Electronics"]
# electronics.to_csv(
#     "electronics_orders.csv",
#     index=False
# )
# print("Electronics Orders File Created")
#
# #40
# while True:
#     print("\n1. View Orders")
#     print("2. Revenue Analysis")
#     print("3. Product Analysis")
#     print("4. City Analysis")
#     print("5. Export Reports")
#     print("6. Exit")
#     choice = input("Enter Choice: ")
#     if choice == "1":
#         print(df)
#     elif choice == "2":
#         print("Total Revenue:", df["Revenue"].sum())
#     elif choice == "3":
#         print(df.groupby("product")["Revenue"].sum())
#     elif choice == "4":
#         print(df.groupby("city")["Revenue"].sum())
#     elif choice == "5":
#         print("Reports Exported")
#     elif choice == "6":
#         print("Thank You")
#         break
#     else:
#         print("Invalid Choice")


