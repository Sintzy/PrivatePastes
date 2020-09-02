cls
@ECHO Off
title Sintzy     Private Paste
if EXIST "Meu computador.{20d04fe0-3aea-1069-a2d8-08002b30309d}" goto UNLOCK
if NOT EXIST Private goto MDLOCKER
:CONFIRM
color 5
echo ######   ##         ###       ###    ##     ## #######    ###
echo ##    ## ##       ##   ##   ##   ##  ##     ## ##       ##   ##
echo ##    ## ##      ##     ## ##     ## ##     ## ##      ##     ##
echo ######   ##      ##     ## ##     ## ##     ## #####   ##     ##
echo ##    ## ##      ##     ## ##     ## ##     ## ##      ## ### ##
echo ##    ## ##       ##   ##   ##   ##   ##   ##  ##      ##     ##
echo ######   ########   ###        ##       ###    ####### ##     ##
echo Sistema criado por ! Sintzy#7135                              
echo Tem certeza, que deseja bloquear a pasta? (Y/N)
set /p "cho="
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Comando Invalido.
pause > nul
goto CONFIRM


:LOCK
ren "Private" "Meu computador.{20d04fe0-3aea-1069-a2d8-08002b30309d}"
echo Folder locked
goto End


:UNLOCK
cls
color 7
echo Digite a senha para desbloquear a pasta Private!!!
set /p "pass="
if NOT %pass%== 123 goto FAIL
ren "Meu computador.{20d04fe0-3aea-1069-a2d8-08002b30309d}" "Private"
cls
color 2
echo !!! PASTA DESBLOQUEADA !!!
echo    Para sair aperte Enter
set /p "cho="
if %cho%==enter goto ENTER
goto End


:RELOCK
color c
echo Tentar Novamente? (Y/N)
set /p "cho="
if %cho%==Y goto UNLOCK
if %cho%==y goto UNLOCK
if %cho%==n goto END
if %cho%==N goto END
pause > nul
goto UNLOCK


:FAIL
cls
echo Senha Invalida
goto RELOCK


:MDLOCKER
md Private
color 2
echo A Pasta Private Foi Criada Com Sucesso.
echo Avancar aperte ENTER!!!
pause > nul
cls
goto CONFIRM


:End

:ENTER
exit
 