Set-Location C:
$ip = Invoke-RestMethod -Uri "https://api.ipify.org?format=json"
$other = Invoke-RestMethod -Uri "https://ipinfo.io/?format=jsonp&callback=getIP"
$other | Out-File "ipinfo.txt"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/zaherbaveaur/ipgrabber/main/ipgrabber.html" -OutFile "ipgrabber.html"
Start-Process ipgrabber.html
Start-Process "notepad.exe" -ArgumentList "ipinfo.txt"