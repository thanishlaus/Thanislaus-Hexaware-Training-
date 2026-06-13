use inventory_management

db.audit_logs.insertMany([
{
product_id:101,
reason:"Stock Correction",
quantity_changed:-5,
date:new Date()
},
{
product_id:102,
reason:"Damaged Product",
quantity_changed:-2,
date:new Date()
}
])

db.audit_logs.find()

db.audit_logs.createIndex(
{
product_id:1
}
)