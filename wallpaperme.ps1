$wc = New-Object System.Net.WebClient
$wallpaper_url = "https://raw.github.com/appetiteoven/ducky/master/the_bobs.png"
$dest = [System.IO.Path]::GetTempFileName() + ".png"

$wc.DownloadFile($wallpaper_url, $dest)

write-host "Setting wallpaper to $dest"

for($i=0; $i -lt 5; $i++)
{
Set-ItemProperty -path "HKCU:\Control Panel\Desktop\" -name wallpaper -value $dest
RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,2 ,True
rundll32.exe user32.dll, UpdatePerUserSystemParameters
}

 
