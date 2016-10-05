$DAServer = $args[0]

$a = Get-RemoteAccessConnectionStatisticsSummary -ComputerName $DAServer

write-host 0:$($a.TotalConnections)