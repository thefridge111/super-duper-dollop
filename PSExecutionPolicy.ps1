# This defines and creates a Group Policy Object (GPO) that sets the exection policy to Bypass. 
# It then associates that policy with the domain for propagation to other machines.
# Note: the running of this script requires an Admin session as well as the local execution policy
# to be set to Bypass.

New-GPO -name "ExecPolicyGPO" 
Set-GPPermissions -name "ExecPolicyGPO" -permissionlevel "gpoedit" -targetname "haxxor" -targettype "group" 
Set-GPRegistryValue -Name "ExecPolicyGPO" -Context User -Key "HKEY_CURRENT_USER\SOFTWARE\Microsoft\PowerShell\1\ShellIds\Microsoft.PowerShell" -ValueName "ExecutionPolicy" -Value "Bypass" -Type String -Action Update
Set-GPLink -name "ExecPolicyGPO" -target "ou=marketing,dc=contoso,dc=com" 
