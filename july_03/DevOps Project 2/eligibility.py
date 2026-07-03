class Customer:

    def __init__(self, customer_id, name, salary, credit_score, employment_status):
        self.customer_id = customer_id
        self.name = name
        self.salary = salary
        self.credit_score = credit_score
        self.employment_status = employment_status


class LoanEligibility:

    def check_eligibility(self, customer):

        if (
            customer.salary >= 50000
            and customer.credit_score >= 700
            and customer.employment_status.lower() == "employed"
        ):
            return "Eligible"
        else:
            return "Not Eligible"

    def display_result(self, customer):

        print("-----------------------------------")
        print("Loan Eligibility Result")
        print("-----------------------------------")
        print(f"Customer ID       : {customer.customer_id}")
        print(f"Customer Name     : {customer.name}")
        print(f"Salary            : {customer.salary}")
        print(f"Credit Score      : {customer.credit_score}")
        print(f"Employment Status : {customer.employment_status}")
        print(f"Loan Status       : {self.check_eligibility(customer)}")
        print("-----------------------------------")


# -------------------------
# Main Program
# -------------------------

loan = LoanEligibility()

customer1 = Customer(
    101,
    "Rahul Sharma",
    75000,
    760,
    "Employed"
)

customer2 = Customer(
    102,
    "Priya Kumar",
    35000,
    650,
    "Unemployed"
)

loan.display_result(customer1)

loan.display_result(customer2)