Login-AzureRmAccount

$rgName = 'pluralsightauto'
$autoaccName = 'pluralsightauto'

$Node = Get-AzureRmAutomationDscNode -ResourceGroupName $rgName -AutomationAccountName $autoaccName -Name 'psvm1'
$report = Get-AzureRmAutomationDscNodeReport -ResourceGroupName $rgName -AutomationAccountName $autoaccName -NodeId $Node.Id -Latest

$report | Export-AzureRmAutomationDscNodeReportContent -OutputFolder 'C:\temp\'