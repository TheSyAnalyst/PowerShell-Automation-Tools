<h1>👥 PowerShell – AD Bulk User Creation</h1>

---

<h2>📄 Overview</h2>

This script simplifies onboarding by creating **multiple Active Directory users** from a CSV file. Perfect for labs or enterprise IT environments managing user provisioning at scale.

---

<h2>📋 Features</h2>

- Imports users from a structured `.csv` file  
- Creates users with passwords and usernames  
- Can assign users to specific **AD groups**  
- Optional **OU targeting** per entry

---

<h2>🛡️ Enhancements</h2>

- ✅ **Input Validation** – Prevents duplicates or malformed entries  
- 📦 **Group Assignment** – Automatically add users to designated groups  
- 📄 **Logging** – Records each account creation status (success/failure)

---

<h2>🧰 Requirements</h2>

- PowerShell 5.1+  
- Active Directory Module  
- Admin rights on the domain controller  

---

<h2>📁 Included</h2>

- `bulk_users.csv` – Sample user data  
- `Create-BulkUsers.ps1` – Main script  
- `log.txt` – Output log file  

