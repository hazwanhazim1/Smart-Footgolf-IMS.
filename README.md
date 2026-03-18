# Smart Footgolf Inventory Management System (SFIMS)

A robust backend inventory and facility management solution built with C++ and SQL. This system streamlines facility operations by providing real-time tracking of sports equipment, secure role-based access for staff, and automated transaction and maintenance scheduling.

**Development Period:** 01-10-2025 to 31-01-2026

## 🚀 Key Features

* **Advanced Inventory Control:** Real-time stock tracking with low-stock alerts and categorization (Rent/Sale).
* **Secure Role-Based Authentication:** Distinct access levels for Managers, Inventory Staff, Counter Staff, and Maintenance Staff, including forced password changes on first login.
* **Transaction Management:** ACID-compliant database operations for recording sales and equipment rentals, with automated stock deduction and tax calculation.
* **Maintenance Timetables:** Automated scheduling and tracking for facility repairs, complete with staff assignment capabilities.
* **Analytics & Reporting:** Generates dynamic, data-driven reports including Monthly Revenue, High Demand Items, and Daily Average Sales Analysis.

## 🛠️ Technology Stack

* **Core Logic:** C++
* **Database Management:** MySQL
* **Integration:** MySQL Connector/C++ (JDBC)

## 🗄️ Database Architecture

The system utilizes a fully relational SQL database (`smartfootgolfims`). Key tables include:
* `users` - Manages staff credentials and roles.
* `inventory` - Tracks item quantities, pricing, and rentable status.
* `sales` & `sales_items` - Handles transactional data and invoice generation.
* `maintenance_tasks` - Logs facility repair schedules and assigned staff.

## ⚙️ How to Run

1. **Database Setup:** * Install MySQL Server.
   * Import the provided `database_schema.sql` file to create the `smartfootgolfims` schema and required tables.
2. **C++ Environment:**
   * Ensure you have a C++ compiler (like GCC or MSVC) installed.
   * Install and link the `MySQL Connector/C++` library in your project settings.
3. **Execution:** Compile and run `main.cpp`. Log in using default staff credentials to access the system dashboard.

---
*Developed as part of a university degree project.*
