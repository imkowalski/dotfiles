clear

echo "Hello There, $Env:UserName!"
$uptimeDays = (Get-Uptime).Days
$uptimeHours = (Get-Uptime).Hours
$uptimeMinutes = (Get-Uptime).Minutes
$uptimeFormatted = ""
if ($uptimeDays -eq 0) {
    if ($uptimeHours -eq 0) {
        $uptimeFormatted = "$uptimeMinutes minutes"
    } elseif ($uptimeHours -eq 1) {
        $uptimeFormatted = "1 hour and $uptimeMinutes minutes"
    } else {
        $uptimeFormatted = "$uptimeHours hours"
    }
} elseif ($uptimeDays -eq 1) {
    if ($uptimeHours -eq 0) {
        $uptimeFormatted = "$uptimeDays day"
    } else {
        $uptimeFormatted = "$uptimeDays day, $uptimeHours hours"
    }
} elseif ($uptimeDays -gt 1) {
    if ($uptimeHours -eq 0) {
        $uptimeFormatted = "$uptimeDays days"
    } else {
    $uptimeFormatted = "$uptimeDays days, $uptimeHours hours"
    }   
}

echo ""
echo "The system has been up for $uptimeFormatted"
