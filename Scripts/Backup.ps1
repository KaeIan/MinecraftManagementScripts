[CmdletBinding()]
param (
	[Parameter(Position = 0)]
	[ValidateNotNullOrEmpty()]
	[String]
	$ServerDirectory = "/home/minecraft/Server",

	[Parameter(Position = 1)]
	[ValidateNotNullOrEmpty()]
	[String]
	$BackupDirectory = "/home/minecraft/Server/Backups"
)

if(!(Test-Path $BackupDirectory)) {
	New-Item -Path $BackupDirectory -ItemType Directory
}

$BackupName = "MinecraftServerBackup-" + (Get-Date -Format "dd-MM-yyyy")
zip -r "$BackupDirectory/$BackupName.zip" $ServerDirectory