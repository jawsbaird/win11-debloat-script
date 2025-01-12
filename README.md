# Windows 11 Debloat Script
A PowerShell script that removes preinstalled Universal Windows Platform (UWP) applications using PowerShell. Targeted for those who have Windows 11 installed on their PC.

## About
This script was written for readability using an array `$AppPackages` that contains the package names of all the preinstalled UWP applications I consider bloatware. It then iterates through each package name in the `$AppPackages` array using a foreach loop. Inside the loop, it uses `Get-AppxPackage` to retrieve the package information for the current package name. The `-ErrorAction SilentlyContinue` parameter suppresses any errors that may occur if the package is not found. If the package is found (`$Package` is not `$null`), it prints a message indicating that it's removing the package and then uses `Remove-AppxPackage` to remove the package using its full package name (`$Package.PackageFullName`).

## Learning Resources 
ErrorAction - https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_commonparameters?view=powershell-7.4#-erroraction
SilentlyContinue - https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_commonparameters?view=powershell-7.4#-erroraction
Get-AppxPackage - https://learn.microsoft.com/en-us/powershell/module/appx/get-appxpackage?view=windowsserver2022-ps
Remove-AppxPackage - https://learn.microsoft.com/en-us/powershell/module/appx/remove-appxpackage?view=windowsserver2022-ps
foreach - https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_foreach?view=powershell-7.4
