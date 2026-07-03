class Customer:

    def __init__(self, customer_id, name):
        self.customer_id = customer_id
        self.name = name


class CustomerManagement:

    def __init__(self):
        self.customers = {}

    # Add Customer
    def add_customer(self, customer):
        self.customers[customer.customer_id] = customer
        print("Customer added successfully.")

    # View Customers
    def view_customers(self):
        if not self.customers:
            print("No customer records found.")
        else:
            print("\nCustomer Records")
            print("----------------------------")
            for customer in self.customers.values():
                print(f"Customer ID   : {customer.customer_id}")
                print(f"Customer Name : {customer.name}")
                print("----------------------------")

    # Update Customer
    def update_customer(self, customer_id, new_name):
        if customer_id in self.customers:
            self.customers[customer_id].name = new_name
            print("Customer updated successfully.")
        else:
            print("Customer not found.")

    # Delete Customer
    def delete_customer(self, customer_id):
        if customer_id in self.customers:
            del self.customers[customer_id]
            print("Customer deleted successfully.")
        else:
            print("Customer not found.")


cms = CustomerManagement()

# Add Customers
cms.add_customer(Customer(101, "Rahul Sharma"))
cms.add_customer(Customer(102, "Priya Kumar"))

print("\nInitial Customer List")
cms.view_customers()

# Update Customer
print("\nUpdating Customer...")
cms.update_customer(102, "Priya Singh")

print("\nCustomer List After Update")
cms.view_customers()

# Delete Customer
print("\nDeleting Customer...")
cms.delete_customer(101)

print("\nFinal Customer List")
cms.view_customers()