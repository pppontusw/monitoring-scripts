$DAServer = $args[0]

$a = Get-RemoteAccessConnectionStatisticsSummary -ComputerName $DAServer

write-host $a.TotalConnections  
