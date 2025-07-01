# 🖥️ Server Health Check (PowerShell)

A lightweight PowerShell script that checks and logs key system health indicators on a Windows machine.

## ✅ Features

- Monitors:
  - ✅ CPU Usage
  - ✅ Disk Space (C:\ drive)
  - ✅ Memory Availability
- Saves logs to `logs/health_log.txt`
- Easy to run manually or automate with Task Scheduler

## 🚀 How to Use

1. Clone the repo or download the `.ps1` file
2. Open PowerShell and navigate to the folder
3. Run the script:

```powershell
powershell -ExecutionPolicy Bypass -File .\health_check.ps1
