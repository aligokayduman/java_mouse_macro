copy ..\JIntellitype.dll ..\run\JIntellitype.dll /Y
timeout /t 2 /nobreak > NUL
..\jre\windows\x86\1.8.0_151\bin\javaw -jar -Duser.language=tr -Duser.country=TR ..\dist\MouseClicker.jar