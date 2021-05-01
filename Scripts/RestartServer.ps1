[CmdletBinding()]
param (
	[Parameter(Position = 0)]
	[ValidateNotNullOrEmpty()]
	[String]
	$ServerDirectory = "/home/minecraft/Server"
)

# restart the server with the new properties.
supervisorctl stop minecraft
Copy-Item "${ServerDirectory}/server_new.properties" "${ServerDirectory}/server.properties"
supervisorctl start minecraft