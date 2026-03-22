// OP1: insertMany() — insert all 3 documents

db.products.insertMany([
  {
    product_id: "E001",
    name: "iPhone 14",
    category: "Electronics",
    price: 80000,
    warranty: "1 year",
    specs: {
      battery: "3279mAh",
      ram: "6GB",
      storage: "128GB"
    }
  },
  {
    product_id: "C001",
    name: "Men T-Shirt",
    category: "Clothing",
    price: 999,
    sizes: ["S", "M", "L", "XL"],
    material: "Cotton",
    brand: "H&M"
  },
  {
    product_id: "G001",
    name: "Milk",
    category: "Groceries",
    price: 60,
    expiry_date: new Date("2024-12-31"),
    nutrition: {
      protein: "3.4g",
      fat: "3.6g"
    }
  }
]);



// OP2: find() — retrieve all Electronics products with price > 20000

db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});



// OP3: find() — retrieve all Groceries expiring before 2025-01-01

db.products.find({
  category: "Groceries",
  expiry_date: { $lt: new Date("2025-01-01") }
});



// OP4: updateOne() — add a "discount_percent" field to a specific product

db.products.updateOne(
  { product_id: "E001" },
  { $set: { discount_percent: 10 } }
);



// OP5: createIndex() — create an index on category field

db.products.createIndex({ category: 1 });

// Explanation:
// Index on category improves query performance when filtering by category