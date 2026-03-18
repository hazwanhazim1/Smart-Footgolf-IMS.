# Smart Footgolf Inventory Management System (SFIMS)

This is my degree project built for managing a Footgolf facility. It is a C++ and SQL program designed to help sports facilities easily keep track of their equipment, manage staff duties, and record daily sales. 

**Development Period:** 01-10-2025 to 31-01-2026

## 🚀 What This System Does

* **Inventory Management:** Tracks how much equipment is in stock and gives warnings when items (like balls or shoes) are running low.
* **Staff Login System:** Different staff members (Managers, Counter Staff, Maintenance) have their own accounts and specific access levels. 
* **Sales & Rentals:** Records when items are sold or rented out. It automatically calculates the totals, adds tax, and updates the stock.
* **Maintenance Schedule:** Allows managers to assign repair and cleaning tasks to the maintenance team.
* **Reports:** Automatically creates easy-to-read reports showing monthly revenue and which items are used the most.

## 🛠️ Tools Used

* **Main Programming Language:** C++
* **Database:** MySQL
* **Connection:** MySQL Connector/C++ 

## 🗄️ Database Setup

The project uses a MySQL database named `smartfootgolfims` with a few main tables:
* `users` - Saves staff IDs, roles, and passwords.
* `inventory` - Keeps track of all items and prices.
* `sales` & `sales_items` - Stores all the receipt and transaction data.
* `maintenance_tasks` - Holds the schedule for facility repairs.

## ⚙️ How to Test the Project

1. **Set up the Database:** * Open your MySQL server.
   * Import the `database_schema.sql` file to create the tables.
2. **Set up the Code:**
   * Open the project in your C++ IDE (like Visual Studio).
   * Make sure the MySQL Connector library is linked.
3. **Run:** * Compile and run the `sfims_code.cpp` file. 
   * Log in using the default staff password to see the main menu!

   ---
*Developed as part of a university degree project.*
