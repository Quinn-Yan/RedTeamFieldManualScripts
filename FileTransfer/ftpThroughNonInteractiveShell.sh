echo open $ip 21 > ftp.txt
echo $user >> ftp.txt
echo $pass >> ftp.txt
echo bin >> ftp.txt
echo GET $file >> ftp.txt
echo bye >> ftp.txt
ftp -s:ftp.txt
