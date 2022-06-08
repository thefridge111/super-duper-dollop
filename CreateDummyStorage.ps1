$Year=2018                              #Will create 4 years worth of "backups"
$Location = "C:\Temp"             #sets the location of where to drop files. LOCATION VARIABLE WILL NEED TO BE CHANGED PRIOR TO EXECUTION###

###Creates Dummy Backup Files###

for ($Year; $Year -lt 2022; $Year++)
    {
    New-Item "$Location\$Year" -ItemType directory
    New-Item "$Location\$Year\Accounting" -ItemType Directory
        New-Item "$Location\$Year\Accounting\data.csv"
        New-Item "$Location\$Year\Accounting\data2.txt"
        New-Item "$Location\$Year\Accounting\somuchdata.txt"
        New-Item "$Location\$Year\Accounting\ActualBooks.csv"
        New-Item "$Location\$Year\Accounting\CookedBooks.csv"
    New-Item "$Location\$Year\Finance" -ItemType Directory
        New-Item "$Location\$Year\Finance\data.txt"
        New-Item "$Location\$Year\Finance\muchmoredata.txt"
    New-Item "$Location\$Year\Engineering" -ItemType Directory
        New-Item "$Location\$Year\Engineering\VoltDrop.txt"
        New-Item "$Location\$Year\Engineering\VoltDropCalcs.csv"
        New-Item "$Location\$Year\Engineering\StructuralLoadBanks.csv"
        New-Item "$Location\$Year\Engineering\Brainst0rms.txt"
    New-Item "$Location\$Year\Marketing" -ItemType Directory
        New-Item "$Location\$Year\Marketing\AdCampaignPlan.csv"
        New-Item "$Location\$Year\Marketing\AdCampaignRecoveryPlan.csv"
        New-Item "$Location\$Year\Marketing\CancelCultureRemedy_HowToSaveFaceWhileNotActuallyAppologizingForAnything.txt"
        New-Item "$Location\$Year\Marketing\AdvertisementSensitivityTraining.ppt"
        New-Item "$Location\$Year\Marketing\AppologyLetter_FromCEO.txt"
        New-Item "$Location\$Year\Marketing\NewAndImprovedPCAdCampaignPlan.txt"
    New-Item "$Location\$Year\Reception" -ItemType Directory
        New-Item "$Location\$Year\Reception\ListofPhoneNumbers.csv"
        New-Item "$Location\$Year\Reception\data.txt"
    New-Item "$Location\$Year\IT" -ItemType Directory
        New-Item "$Location\$Year\IT\HOWTO_SecurityOnion.txt"
        New-Item "$Location\$Year\IT\KibanaExplained.txt"
        New-Item "$Location\$Year\IT\KibanaExplained2.txt"
        New-Item "$Location\$Year\IT\NewGuyTraining.ppt"
        New-Item "$Location\$Year\IT\HowtoNotGetOwned.txt"
        New-Item "$Location\$Year\IT\PentestAwarenessTraining.ppt"
        New-Item "$Location\$Year\IT\DisasterRecoveryPlan.txt"
        New-Item "$Location\$Year\IT\EvasionandDetection.txt"
    New-Item "$Location\$Year\Security" -ItemType Directory
        New-Item "$Location\$Year\Security\ACTUALSecurityOnionTraining.txt"
        New-Item "$Location\$Year\Security\DontListentoITTheyDontKnowWhatTheyreDoing.txt"
        New-Item "$Location\$Year\Security\PenTest Vulnerability Report.ppt"
    New-Item "$Location\$Year\Clients" -ItemType Directory
        New-Item "$Location\$Year\Clients\PII.txt"
        New-Item "$Location\$Year\Clients\PII2.csv"
        New-Item "$Location\$Year\Clients\HighProfileCustomerList.txt"
        New-Item "$Location\$Year\Clients\CustomersWhoTriedToBribeUs.csv"
    New-Item "$Location\$Year\Directory" -ItemType Directory
        New-Item "$Location\$Year\Directory\MaterDirectory.txt"
    New-Item "$Location\$Year\Procurement" -ItemType Directory
    New-Item "$Location\$Year\Public Affairs" -ItemType Directory
    New-Item "$Location\$Year\Efficiency" -ItemType Directory
        New-Item "$Location\$Year\Efficiency\HowToBeMoreEfficient.txt"
    New-Item "$Location\$Year\QC" -ItemType Directory
    New-Item "$Location\$Year\Regulatory" -ItemType Directory
    New-Item "$Location\$Year\Ops" -ItemType Directory
    New-Item "$Location\$Year\R&D" -ItemType Directory
        New-Item "$Location\$Year\R&D\Brainstorming.txt"
        New-Item "$Location\$Year\R&D\SensitiveHighProfileNewIdeas.txt"
    New-Item "$Location\$Year\IT2" -ItemType Directory
        New-Item "$Location\$Year\IT2\CIOMutanyPlan.txt"
        echo "how could they possibly promote Bill over me?" > "$Location\$Year\IT2\CIOMutanyPlan.txt"
    New-Item "$Location\$Year\Customer Service" -ItemType Directory
        New-Item "$Location\$Year\Customer Service\CallLogs.csv"
        New-Item "$Location\$Year\Customer Service\SensitivityTraining.txt"
    New-Item "$Location\$Year\Schedules" -ItemType Directory
    }
