# Create logs directory if it doesn't exist
if (!(Test-Path "logs")) {
    New-Item -ItemType Directory -Path "logs"
}

# Define log file path
$logFile = "logs\health_log.txt"

# Get system info
$timestamp = Get-Date
$cpu = (Get-WmiObject win32_processor).LoadPercentage
$disk = Get-PSDrive C
$memory = Get-WmiObject win32_OperatingSystem

# Write to log file
Add-Content $logFile "----- Health Check: $timestamp -----"
Add-Content $logFile "CPU Load: $cpu%"
Add-Content $logFile "Disk Free: $([math]::Round($disk.Free/1GB,2)) GB of $([math]::Round(($disk.Used + $disk.Free)/1GB,2)) GB"
Add-Content $logFile "Memory: $([math]::Round($memory.FreePhysicalMemory / 1MB, 2)) MB free of $([math]::Round($memory.TotalVisibleMemorySize / 1MB, 2)) MB"
Add-Content $logFile "-------------------------------------"
