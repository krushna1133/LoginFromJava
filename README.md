# Working
# 📋 Task Manager & Project Dashboard  
**Java Web Application (JSP | Servlet | JDBC | MySQL | Tomcat)**

This project is a **Task Manager & Project Dashboard** built using **Java Web Technologies**.  
It allows users to **register, login, manage daily tasks**, and **view task analytics using a pie chart**.  
Each user sees **only their own data** using **session-based authentication**.

---

## 🚀 Features

- User Signup & Login  
- Session-based authentication  
- Add daily tasks  
- Task categorization (Work / Study / Personal)  
- Task status tracking (Completed / Pending)  
- User-specific dashboard  
- Pie chart visualization of tasks  
- Secure logout  

---

## 🛠️ Technologies Used

- Java (JDK 8 / 11 / 17 / 21)
- JSP & Servlets
- JDBC
- MySQL
- Apache Tomcat 9
- Eclipse IDE (Enterprise / EE)
- HTML & CSS
- Chart.js (for pie chart)

---

## 📂 Project Directory Structure
LoginForm/
│
├── src/main/java/
│ └── loginPage/
│ ├── LoginServlet.java
│ ├── SignupServlet.java
│ ├── AddTaskServlet.java
│ ├── DashboardServlet.java
│ └── LogoutServlet.java
│
├── src/main/webapp/
│ ├── index.jsp (Login Page)
│ ├── signup.jsp (Signup Page)
│ ├── welcome.jsp (Welcome Screen)
│ ├── task.jsp (Add Task Page)
│ ├── dashboard.jsp (Dashboard + Pie Chart)
│ └── WEB-INF/
│ ├── web.xml
│ └── lib/
│ └── mysql-connector-j-*.jar
│
└── README.md


---

## ⚙️ Step 1: Software Requirements

Install the following:

1. **Java JDK**  
   https://adoptium.net/

2. **Eclipse IDE for Enterprise Java Developers**  
   https://www.eclipse.org/downloads/

3. **Apache Tomcat 9**  
   https://tomcat.apache.org/download-90.cgi

4. **MySQL Server & MySQL Workbench**  
   https://dev.mysql.com/downloads/

---

## 🗄️ Step 2: Database Setup (MySQL Workbench)

### Create Database
```sql
CREATE DATABASE login_db;
USE login_db;


## User Table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE,
    password VARCHAR(50)
);

## Task Table
CREATE TABLE tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    task_name VARCHAR(100),
    category VARCHAR(30),
    status VARCHAR(20),
    task_date DATE
);


# Download MySQL Connector/J
https://dev.mysql.com/downloads/connector/j/

Copy only the .jar file

Paste it into:

src/main/webapp/WEB-INF/lib/

