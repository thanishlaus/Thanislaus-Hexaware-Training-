salaries = [45000, 55000, 65000, 75000, 85000]

#1
print(salaries)

#2
print("Maximum Salary:", max(salaries))
print("Minimum Salary:", min(salaries))

#3
print("Total Salary Payout:",sum(salaries))

#4
avg=sum(salaries)/len(salaries)
print("Average Salary:", avg)

#5
salaries.append(95000)
salaries.append(105000)

#6
salaries.remove(95000)
print(salaries)

#7
salaries.sort()
print(salaries)

#8
salaries.sort(reverse=True)
print(salaries)

#9
print(salaries[1])

#10
for sal in salaries:
    if sal>70000:
        print(sal)

employee=(101,"Rahul Sharma","Data Engineering",75000)

#11
print(employee)

#12
print("name:",employee[1])

#13
print("Department:",employee[2])

#14
emp_id, name, department, salary = employee
print(emp_id)
print(name)
print(department)
print(salary)

#15
print("Length:", len(employee))
print("First Element:", employee[0])
print("Last Element:", employee[-1])

batch_a = {
    "Rahul",
    "Priya",
    "Amit",
    "Sneha",
    "Farhan"
}
batch_b = {
    "Priya",
    "Sneha",
    "Neha",
    "Arjun",
    "Farhan"
}
#16
print(batch_b.intersection(batch_a))

#17
print(batch_b.difference(batch_a))

#18
print(batch_b.difference(batch_a))

#19
print(batch_a.union(batch_b))

#20
print(batch_a.symmetric_difference(batch_b))

employee_info = {
    "employee_id": 101,
    "name": "Rahul Sharma",
    "department": "Data Engineering",
    "salary": 75000,
    "city": "Hyderabad"
}

#21
print(employee_info["name"])

#22
print("Department:", employee_info["department"])
print("City:", employee_info["city"])

#23
employee_info["experience"] = 5
print(employee_info)

#24
employee_info["salary"] = 85000
print(employee_info)

#25
employee_info.pop("city")
print(employee_info)

#26
print(employee_info.keys())

#27
print(employee_info.values())

#28
print(employee_info.items())

employees = [
{
    "id": 101,
    "name": "Rahul",
    "department": "IT",
    "salary": 50000
},
{
    "id": 102,
    "name": "Priya",
    "department": "HR",
    "salary": 70000
},
{
    "id": 103,
    "name": "Amit",
    "department": "IT",
    "salary": 60000
},
{
    "id": 104,
    "name": "Sneha",
    "department": "Finance",
    "salary": 80000
},
{
    "id": 105,
    "name": "Farhan",
    "department": "IT",
    "salary": 90000
}
]

#29
for emp in employees:
    print(emp["name"])

#30
for emp in employees:
    if emp["department"] == "IT":
        print(emp)

#31
highest = max(employees, key=lambda emp: emp["salary"])
print(highest)

#32
lowest = min(employees, key=lambda emp: emp["salary"])
print(lowest)

#33
total = sum(emp["salary"] for emp in employees)
average = total / len(employees)
print("Average Salary:", average)

#34
total = sum(emp["salary"] for emp in employees)
print("Total Salary Payout:", total)

#35
for emp in employees:
    if emp["salary"] > 70000:
        print(emp)

#36
count = 0

for emp in employees:
    if emp["department"] == "IT":
        count += 1
print("IT Employees:", count)

#37
sorted_employees = sorted(
    employees,
    key=lambda emp: emp["salary"],
    reverse=True
)
for emp in sorted_employees:
    print(emp["name"], emp["salary"])

 #38
sorted_employees = sorted(
    employees,
    key=lambda emp: emp["salary"],
    reverse=True
)
print("Second Highest Salary Employee:")
print(sorted_employees[1])

#39
print(set(emp["department"] for emp in employees))




