$DAServer = $args[0]
$failures = ""

$health = Get-RemoteAccessHealth -ComputerName $DAServer

foreach ($entry in $health) {
	if (($entry.HealthState -ne "OK") -and ($entry.HealthState -ne "Disabled")) {
		$failures += "$($entry.Component):"
	}
}

if (failures.length -gt 0) {
    write-host "2:$failures.Substring(0,$failures.length-1)"
} else {
    write-host "0:OK"
}