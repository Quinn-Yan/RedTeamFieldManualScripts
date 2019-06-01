Get-Service | where_object {$_.status -eq "Running"}
