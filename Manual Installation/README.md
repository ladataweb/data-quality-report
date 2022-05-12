# Manual Installation
Data Quality Report can be installed manually. It consists in four files:
- DataQualityReport.json
- DataQualityReport.pbit
- DataQualityReport.bat
- LaDataWeb_DataQualityReport.pbitool.json 

Two of those files will need modifications in order to work out. Let's understand how this works and then how we are distribution and modifying files
<br>First the button from the external tools menú will open cmd batch script in windows and run the bat file. That file captures the server and database of the current instance of PowerBiDesktop Analysis Service endpoint and writes it in the json file.
<br>Before finishing the script it opens the Power Bi Template (pbit file). The template asks for the location of the json file to read the server and database in order to start the analysis.
<br>Once added the parameter you can select windows current credentials 
<br>![Windows_Current_Credential](media/Windows_Credentials.png "Instruction to pick correct credentials.")
<br>The first refresh WILL fail. You need to open the Power Bi Settings/Option and change the privacy levels to Ignore them. The main page of the report contains a GIF teaching you how to do it.

### Now let's talk about the files.
#### Distribution
We recommend copying the first three files in the same folder. It might be better under Users folder because windows ask for admin permission outside that structure.
<br>Be sure to copy the last file (pbitool.json) to the following folder: "C:\Program Files (x86)\Common Files\Microsoft Shared\Power BI Desktop\External Tools"
#### Modifications
You need to modify "DataQualityReport.bat". You can open it with a simple text editor like notepad, vs code, notepad++, etc.
<br>The first lines will show you the paths to specify where it should write the json file and where to open the pbit file. If you have everything in the same folder it might be easier.
<br>![CMDmodification](media/CMDedit.png "Instruction to change bat file.")
<br>You also need to edit "LaDataWeb_DataQualityReport.pbitool.json". The file that let PowerBi understand you have an external tool and what to do with it.
<br>There is another path here to modify. This one is asking for the ps1 path. Again if you have save the three first files in the same folder it would be easy to change it.
<br>![pbitool_edit](media/external_json.png "Instruction to change external tool json file.")

We hope that's clear. If you can't make it you can always try the installer that will do this automatically.