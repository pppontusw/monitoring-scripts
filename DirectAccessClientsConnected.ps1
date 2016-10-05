$DAServer = $args[0]

$PSSession = New-PSSession -ComputerName $DAServer

$PRTGString = Invoke-Command -Session $PSSession -ScriptBlock {
    $a = Get-RemoteAccessConnectionStatisticsSummary
    return $a.TotalConnections  
}

write-host $PRTGString