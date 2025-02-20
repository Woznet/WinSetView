; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "WinSetView"
#define MyAppVersion "3.1.2"
#define MyAppPublisher "LesFerch"
#define MyAppURL "https://lesferch.github.io/WinSetView/"
#define MyAppExeName "WinSetView.exe"
#define MyEmail "lesferch@gmail.com"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{C91B741C-99CD-458D-B952-8E37E9503EF2}
AppName={#MyAppName}
VersionInfoVersion={#MyAppVersion}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName}
AppPublisher={#MyAppPublisher}
AppCopyright={#MyEmail}
AppSupportURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputBaseFilename={#MyAppName}-Setup
Compression=lzma
SolidCompression=yes
WizardStyle=modern
SetupIconFile={#MyAppName}.ico
UninstallDisplayIcon={app}\{#MyAppExeName}
CloseApplications=force
RestartApplications=no

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "WinSetView\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "WinSetView\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

