[CmdletBinding()]
param (
	[Parameter()]
	[ValidateNotNullOrEmpty()]
	[String]
	$ServerDirectory = "/home/minecraft/Server",

	[Parameter()]
	[String]
	$Motd
)

# get resources path.
$ResourcesDir = Join-Path -Path $PSScriptRoot -ChildPath ..\Resources

if ($null -eq $Motd) {
	$message = Get-Content $ResourcesDir/MessageOfTheDay.txt | Get-Random;
}
else {
	$message = $Motd
}

$file = Get-Content -path "${ServerDirectory}/server.properties";
$file -replace '^motd=(.)*$', "motd=$message" | Out-File "${ServerDirectory}/server_new.properties"