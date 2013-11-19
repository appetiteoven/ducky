Function Set-WallPaper($Value)
{
 Set-ItemProperty -path 'HKCU:\Control Panel\Desktop\' -name wallpaper -value $value
 rundll32.exe user32.dll, UpdatePerUserSystemParameters
}
 

$source = "http://ibankcoin.com/chessnwine/files/2013/10/lumberg.jpg"
$Filename = [System.IO.Path]::GetFileName($source)
$dest = "$env:temp\lumberg.jpg"

$wc = New-Object System.Net.WebClient
$wc.DownloadFile($source, $dest)

Set-WallPaper $dest
 
