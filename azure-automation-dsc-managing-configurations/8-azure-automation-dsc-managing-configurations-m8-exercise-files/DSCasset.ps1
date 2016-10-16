Configuration AssetDemo
{

$samplestr = Get-AutomationVariable –Name 'SampleString'

    Node "localhost"
    {
        File CreateFile {
            DestinationPath = 'C:\DSCAsset.txt'
            Ensure = "Present"
            Contents = $samplestr
        }
     
    }
}