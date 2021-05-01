[CmdletBinding()]
param (
	[Parameter(Position = 0)]
	[ValidateNotNullOrEmpty()]
	[String]
	$ServerDirectory = "/home/minecraft/Server"
)

$BackupName = "MinecraftServerBackup-" + (Get-Date -Format "dd-MM-yyyy")
zip -r "$BackupName.zip" $ServerDirectory