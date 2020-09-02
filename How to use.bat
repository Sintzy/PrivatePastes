@echo off
cls
:menu
cls
color 80


                   
echo            MENU DE AJUDA
echo  ==================================
echo * 1. Autores                       * 
echo * 2. Como usar?                    *
echo * 3. Discord                       *
echo * 4. Sair    *
echo  ==================================

set /p opcao= Escolha uma opcao: 
echo ------------------------------
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4



:opcao1
cls

echo ===========================================
echo *                Sintzy                   *
echo ===========================================
pause
goto menu

:opcao2
cls
echo =============================
echo *      Como usar?           *
echo =============================
echo O Private Pastes e um sistema de Pastas Seguras que precisam de senha para desbloquear.- O uso e muito facil, basta seguir as instruçoes dentro da aplicaçao.     A senha padrao para desbloquear a pasta é: 123   Espero que goste.   :)  
pause
goto menu

:opcao3
cls
echo =====================
echo *     Discord      *
echo =====================
start Chrome
echo  https://discord.gg/B8uUwvJ
pause
goto menu


:opcao4
cls
exit






