$DAServer = $args[0]

$a = Get-RemoteAccessConnectionStatisticsSummary -ComputerName $DAServer

if ($a) {

write-host "$($a.TotalConnections):OK"

} else {

write-host "-1:ERR"

}