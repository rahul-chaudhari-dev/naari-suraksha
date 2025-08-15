# Naari Suraksha: Women Safety Alert System  

Naari Suraksha is a **Java-based web application** aimed at enhancing women’s safety by allowing users to send **real-time emergency alerts** to authorities or registered contacts. The platform includes role-based access for **Users**, **Police/Admin**, and **Super Admin**.  

---

## 📌 Features  

### 👩 User  
- Register & Login  
- Send safety alerts with location  
- View past alerts and their status  
- Change password  

### 🛡️ Police/Admin  
- View real-time alerts with location data  
- Update alert status (responded, in-progress, resolved)  
- Manage user reports  

### 🏢 Super Admin  
- Add/Delete police admin accounts  
- Monitor alerts, responses, and user activity  

---

## 🛠️ Tech Stack  

| Layer     | Technologies |  
|-----------|--------------|  
| Backend   | Java, JSP, Servlets, JDBC |  
| Frontend  | HTML, CSS, JavaScript, Bootstrap |  
| Database  | MySQL / PostgreSQL |  
| Server    | Apache Tomcat |  
| Tools     | Eclipse / IntelliJ, MySQL Workbench / pgAdmin |  

---

## 📁 Project Structure  

```
NaariSuraksha/
├── src/
│   └── com.naarisuraksha.* (Servlets, Model, DBConnect)
├── WebContent/ or webapp/
│   ├── JSP files
└── README.md
```

---

## ⚙️ Setup Instructions  

### 🔧 Prerequisites  
- Java JDK 8+  
- MySQL  
- Apache Tomcat (v7+)  
- Eclipse or IntelliJ IDE  

### 🧪 Steps  

1. **Clone the repository**  
   ```bash
   git clone https://github.com/rahul-chaudhari-dev/naari-suraksha.git
   ```

2. **Import the project** into your IDE as a Dynamic Web Project.  

3. **Set up the database**  
   - Create a new database: `naarisurakshaDB`  
   - Run the SQL script `naarisurakshaDB.sql`  
   - Update DB credentials in `DBConnection.java`  

4. **Deploy to Tomcat**  
   - Add project to Tomcat server  
   - Start server and open in browser:  
     ```
     http://localhost:8080/NaariSuraksha/
     ```

---

## 📂 SQL File (Database Schema)  

**Included SQL script:** `naarisurakshaDB.sql`  

Tables:  
- `users` (id, name, address, contact, email, password)  
- `alerts` (id, user_id, location, alert_type,description, date, status, message)  
- `admins` (id, email, password, role)  

---

## 👩‍💻 Author  

**Rahul Chaudhari**  
Java Developer | Full-Stack Web Development Enthusiast  
[GitHub](https://github.com/rahul-chaudhari-dev) • [LinkedIn](https://www.linkedin.com/in/rahul-chaudhari-496b22369)  
