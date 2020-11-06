Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools

$pwd = ConvertTo-SecureString 'Pa55w.rd1234' -AsPlainText -Force
$dom = 'seminar.local'
$domnetbios = $dom.Split('\.')[0]
$pathes = 'C:\windows\ntds'

Install-ADDSForest -SkipPreChecks -DomainName $dom -SafeModeAdministratorPassword $pwd -DatabasePath $pathes -DomainNetbiosName $domnetbios -DomainMode WinThreshold -LogPath $pathes -ForestMode WinThreshold -SysvolPath $pathes