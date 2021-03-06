; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "MouseClicker"
#define MyAppVersion "1.04"
#define MyAppPublisher "Ali G�kay Duman"
#define MyAppURL "https://www.aligokayduman.com/"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{AF6BF0B3-BAC3-4543-BBF4-D043BBC93272}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
SourceDir=C:\Users\smyrnof\Documents\NetBeansProjects\MouseClicker\
DisableProgramGroupPage=yes
OutputBaseFilename={#MyAppName}_x86_v1.04
SetupIconFile=MouseClicker.ico
Compression=lzma
SolidCompression=yes
ArchitecturesAllowed=x86

[Languages]
Name: english; MessagesFile: "compiler:Default.isl"
Name: turkish; MessagesFile: "compiler:Languages\Turkish.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "dist\MouseClicker.jar"; DestDir: "{app}"; Flags: ignoreversion
Source: "MouseClicker.ico"; DestDir: "{app}"
Source: "jre\windows\x86\1.8.0_151\*"; DestDir: "{app}\jre\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "dist\lib\*"; DestDir: "{app}\lib\"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "JIntellitype.dll"; DestDir: "{app}\jre\bin\";
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\jre\bin\javaw.exe"; WorkingDir: "{app}\jre\bin"; Parameters: "-jar -Duser.language=tr -Duser.country=TR ..\..\MouseClicker.jar"; Languages: turkish; IconFilename: "{app}\MouseClicker.ico"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\jre\bin\javaw.exe"; WorkingDir: "{app}\jre\bin"; Parameters: "-jar -Duser.language=tr -Duser.country=TR ..\..\MouseClicker.jar"; Languages: turkish; IconFilename: "{app}\MouseClicker.ico"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\jre\bin\javaw.exe"; WorkingDir: "{app}\jre\bin"; Parameters: "-jar -Duser.language=tr -Duser.country=TR ..\..\MouseClicker.jar"; Languages: turkish; IconFilename: "{app}\MouseClicker.ico"; Tasks: quicklaunchicon

Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\jre\bin\javaw.exe"; WorkingDir: "{app}\jre\bin"; Parameters: "-jar ..\..\MouseClicker.jar"; Languages: english; IconFilename: "{app}\MouseClicker.ico"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\jre\bin\javaw.exe"; WorkingDir: "{app}\jre\bin"; Parameters: "-jar ..\..\MouseClicker.jar"; Languages: english; IconFilename: "{app}\MouseClicker.ico"; Tasks: desktopicon
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}"; Filename: "{app}\jre\bin\javaw.exe"; WorkingDir: "{app}\jre\bin"; Parameters: "-jar ..\..\MouseClicker.jar"; Languages: english; IconFilename: "{app}\MouseClicker.ico"; Tasks: quicklaunchicon

