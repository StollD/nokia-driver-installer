#define MyAppName "Nokia USB Driver"
#define MyAppVersion "1.1.0"
#define MyAppPublisher "HMD Global"

[Setup]
AppId={{C3863576-B663-43B9-B927-CDB79845D9D2}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} v{#MyAppVersion}
AppPublisher={#MyAppPublisher}
CreateAppDir=no
OutputDir=out
OutputBaseFilename=Phone_Nokia_USB_Driver_v{#MyAppVersion}
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "data\Phone_F_USB_Driver_v3.5.0.msi"; DestDir: "{tmp}"; Flags: ignoreversion
Source: "data\Phone_M_USB_Driver_v1.2.0.msi"; DestDir: "{tmp}"; Flags: ignoreversion
Source: "data\Phone_Nokia_USB_Driver_v1.1.0.msi"; DestDir: "{tmp}"; Flags: ignoreversion

[Run]
Filename: "msiexec.exe"; Parameters: "/i ""{tmp}\Phone_F_USB_Driver_v3.5.0.msi"" /qn"; StatusMsg: Installing Phone-F USB Driver;
Filename: "msiexec.exe"; Parameters: "/i ""{tmp}\Phone_M_USB_Driver_v1.2.0.msi"" /qn"; StatusMsg: Installing Phone-M USB Driver;
Filename: "msiexec.exe"; Parameters: "/i ""{tmp}\Phone_Nokia_USB_Driver_v1.1.0.msi"" /qn"; StatusMsg: Installing Nokia USB Driver;