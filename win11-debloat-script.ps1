# List of preinstalled UWP apps to remove
$AppPackages = @(
    "Microsoft.Microsoft3DViewer"             # 3D Viewer
    "Microsoft.WindowsAlarms"                 # Alarms & Clock
    "microsoft.windowscommunicationsapps"     # Calendar / Mail
    "Clipchamp.Clipchamp"                     # Clipchamp
    "Microsoft.Copilot"                       # Copilot
    "Microsoft.549981C3F5F10"                 # Cortana
    "Microsoft.WindowsFeedbackHub"            # Feedback Hub
    "Microsoft.GetHelp"                       # Get Help
    "Microsoft.WindowsMaps"                   # Maps
    "Microsoft.ZuneMusic"                     # Media Player
    "Microsoft.Messaging"                     # Messaging
    "Microsoft.MicrosoftSolitaireCollection"  # Microsoft Solitaire Collection
    "MicrosoftTeams"                          # Microsoft Teams
    "Microsoft.Todos"                         # Microsoft To Do
    "Microsoft.Whiteboard"                    # Microsoft Whiteboard
    "Microsoft.MixedReality.Portal"           # Mixed Reality Portal
    "Microsoft.OneConnect"                    # Mobile Plans
    "Microsoft.ZuneVideo"                     # Movies & TV
    "Microsoft.BingNews"                      # News
    "Microsoft.MicrosoftOfficeHub"            # Office
    "Microsoft.Office.OneNote"                # OneNote
    "Microsoft.OutlookForWindows"             # Outlook (new)
    "Microsoft.MSPaint"                       # Paint 3D
    "Microsoft.People"                        # People
    "Microsoft.PowerAutomateDesktop"          # Power Automate
    "Microsoft.Print3D"                       # Print 3D
    "MicrosoftCorporationII.QuickAssist"      # Quick Assist
    "Microsoft.SkypeApp"                      # Skype
    "Microsoft.MicrosoftStickyNotes"          # Sticky Notes
    "Microsoft.Getstarted"                    # Tips
    "Microsoft.BingWeather"                   # Weather
    "Microsoft.GamingApp"                     # Xbox
    "Microsoft.Xbox.TCUI"                     # Xbox / Associated Services
    "Microsoft.XboxApp"                       # Xbox / Associated Services
    "Microsoft.XboxGameOverlay"               # Xbox / Associated Services
    "Microsoft.XboxGamingOverlay"             # Xbox / Associated Services
    "Microsoft.XboxIdentityProvider"          # Xbox / Associated Services
    "Microsoft.XboxSpeechToTextOverlay"       # Xbox / Associated Services
    "Microsoft.YourPhone"                     # Your Phone
)

foreach ($App in $AppPackages) {
    $Package = Get-AppxPackage -Name $App -ErrorAction SilentlyContinue
    if ($Package) {
        Write-Host "Removing $($Package.Name)..."
        Remove-AppxPackage -Package $Package.PackageFullName
    }
}
