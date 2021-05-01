[CmdletBinding()]
param (
	[Parameter()]
	[ValidateNotNullOrEmpty()]
	[String]
	$ServerDirectory = "/home/minecraft/Server",

	[Parameter()]
	[String]
	[ValidateSet("easy", "medium", "hard")]
	$Difficulty
)

$file = Get-Content -path "$ServerDirectory/server.properties";
$file -replace '^difficulty=(.)*$', "difficulty=$Difficulty" | Out-File "$ServerDirectory/server_new.properties"