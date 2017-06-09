# Getting Help

## Getting help 

Get-Help Update-Help -Detailed
Update Help

# Saving and updating
Save-help -DestinationPath \\path\to\share
Update-help -SourcePath \\path\to\share

# Searching Help
Get-Help *variable*
Get-Help about_automatic_variables | more # will not work in ISE

# Getting Help
help get-service -Detailed #parameters & examples
help get-service -Examples # examples
help get-service -Full # full help; params, examples, notes, input/output types
help get-service -Parameter d*

# Using help
help start-service -Online
help start-service -ShowWindow

Get-Service bi* -ComputerName Comp01, Comp02
Get-service bi* -ComputerName Comp01, Comp02 | Start-Service # input object parameter set
Start-service -DisplayName 'Background Intelligent Transfer Service' -c Comp01, Comp02 # displayname parameter set
Start-service bi* -ComputerName Compt01, Comp02 # default parameter set
