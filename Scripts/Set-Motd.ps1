[CmdletBinding()]
param (
	[Parameter(Mandatory = $true)]
	[ValidateNotNullOrEmpty()]
	[String]
	$ServerDirectory = "/home/minecraft/Server",

	[Parameter(Mandatory = $false)]
	[String]
	$Motd
)

# get resources path.
$ResourcesDir = Join-Path -Path $PSScriptRoot -ChildPath ..\Resources

if ($null -ne $Motd) {
	$message = Get-Content $ResourcesDir/MessageOfTheDay.txt | Get-Random;
}
else {
	$message = $Motd
}

$file = Get-Content -path "${ServerDirectory}/server.properties";
$file -replace '^motd=(.)*$', "motd=$message" | Out-File "${ServerDirectory}/server_new.properties"