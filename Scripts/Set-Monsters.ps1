[CmdletBinding()]
param (
	[Parameter()]
	[ValidateNotNullOrEmpty()]
	[String]
	$ServerDirectory = "/home/minecraft/Server",

	[Parameter()]
	[bool]
	$MonstersEnabled
)

$file = Get-Content -path "$ServerDirectory/server.properties";
$file -replace "^spawn-monsters=(.)*$", "spawn-monsters=$MonstersEnabled" | Out-File "$ServerDirectory/server_new.properties"