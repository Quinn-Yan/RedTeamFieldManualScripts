Get-WmiObject -class win32_operatingsystem | select -property * | export-csv c:\os.txt
