!macro customInstall
  WriteRegStr SHCTX "SOFTWARE\RegisteredApplications" "Pine" "Software\Clients\StartMenuInternet\Pine\Capabilities"

  WriteRegStr SHCTX "SOFTWARE\Classes\Pine" "" "Pine web page document"
  WriteRegStr SHCTX "SOFTWARE\Classes\Pine\Application" "AppUserModelId" "Pine"
  WriteRegStr SHCTX "SOFTWARE\Classes\Pine\Application" "ApplicationIcon" "$INSTDIR\Pine.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Classes\Pine\Application" "ApplicationName" "Pine"
  WriteRegStr SHCTX "SOFTWARE\Classes\Pine\Application" "ApplicationCompany" "Pine"      
  WriteRegStr SHCTX "SOFTWARE\Classes\Pine\Application" "ApplicationDescription" "Your favorite web browser"      
  WriteRegStr SHCTX "SOFTWARE\Classes\Pine\DefaultIcon" "DefaultIcon" "$INSTDIR\Pine.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Classes\Pine\shell\open\command" "" '"$INSTDIR\Pine.exe" "%1"'

  WriteRegStr SHCTX "SOFTWARE\Classes\.htm\OpenWithProgIds" "Pine" ""
  WriteRegStr SHCTX "SOFTWARE\Classes\.html\OpenWithProgIds" "Pine" ""

  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Pine" "" "Pine"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Pine\DefaultIcon" "" "$INSTDIR\Pine.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Pine\Capabilities" "ApplicationDescription" "Your favorite web browser"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Pine\Capabilities" "ApplicationName" "Pine"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Pine\Capabilities" "ApplicationIcon" "$INSTDIR\Pine.exe,0"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Pine\Capabilities\FileAssociations" ".htm" "Pine"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Pine\Capabilities\FileAssociations" ".html" "Pine"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Pine\Capabilities\URLAssociations" "http" "Pine"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Pine\Capabilities\URLAssociations" "https" "Pine"
  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Pine\Capabilities\StartMenu" "StartMenuInternet" "Pine"

  WriteRegDWORD SHCTX "SOFTWARE\Clients\StartMenuInternet\Pine\InstallInfo" "IconsVisible" 1

  WriteRegStr SHCTX "SOFTWARE\Clients\StartMenuInternet\Pine\shell\open\command" "" "$INSTDIR\Pine.exe"
!macroend
!macro customUnInstall
  DeleteRegKey SHCTX "SOFTWARE\Classes\Pine"
  DeleteRegKey SHCTX "SOFTWARE\Clients\StartMenuInternet\Pine"
  DeleteRegValue SHCTX "SOFTWARE\RegisteredApplications" "Pine"
!macroend
