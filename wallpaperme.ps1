$wc = New-Object System.Net.WebClient
$wallpaper_url = "http://ibankcoin.com/chessnwine/files/2013/10/lumberg.jpg"
$dest = "$env:temp\lumberg_wallpaper.jpg"

$wc.DownloadFile($wallpaper_url, $dest)

write-host "Setting wallpaper to $dest"
Set-ItemProperty -path "HKCU:\Control Panel\Desktop\" -name wallpaper -value $dest
RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,2 ,True
rundll32.exe user32.dll, UpdatePerUserSystemParameters


 
