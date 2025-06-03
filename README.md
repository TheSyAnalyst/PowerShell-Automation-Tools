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


<h1>🕵️ PowerShell – File Integrity Monitor (FIM)</h1>

---

<h2>📄 Overview</h2>

Monitors directories for unauthorized file modifications by comparing current file hashes to a **baseline** snapshot. Ideal for detecting tampering in critical system files.

---

<h2>🧩 Features</h2>

- Baseline creation with file hashes  
- Change detection via periodic scan  
- Supports logging and alerting via Task Scheduler  

---

<h2>🚨 Security Features</h2>

- 💾 **Baseline Mode** – Save known-good file hashes  
- 📣 **Alerts** – Email or system alert integration (optional)  
- 🧾 **Logs** – Maintain a timestamped log of all changes  

---

<h2>🧰 Tools Required</h2>

- PowerShell  
- `Get-FileHash`  
- Optional SMTP or event forwarding

---

<h2>📁 Contents</h2>

- `fim.ps1` – Main FIM script  
- `baseline.txt` – Initial hash state  
- `log.txt` – Detected changes  


<h1>🌍 PowerShell – Geo IP Mapping from RDP Event Logs</h1>

---

<h2>📄 Overview</h2>

This script extracts **RDP login attempts** from Windows Event Logs and maps **source IP addresses** to **geographic locations** using public geolocation APIs.

---

<h2>🧩 Features</h2>

- Parses Event ID 4624 (logon events)  
- Filters by RDP logon type (10)  
- Looks up IP location via `ipinfo.io` or `MaxMind`  

---

<h2>📈 Use Cases</h2>

- Detect brute-force login attempts  
- Monitor from foreign IPs  
- Export to CSV or integrate with SIEM  

---

<h2>📁 Files in Repository</h2>

- `GeoIP_RDP.ps1` – Main script  
- `output.csv` – Exported results  
- `log.txt` – Event log scan summary  



- `bulk_users.csv` – Sample user data  
- `Create-BulkUsers.ps1` – Main script  
- `log.txt` – Output log file  

