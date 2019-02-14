@echo off

set venv="%1"
if %venv% neq "" (
    %venv%\Scripts\activate
    goto :eof
)

if exist Scripts\activate (
    Scripts\activate
    goto :eof
) 

if exist venv\Scripts\activate (
    venv\Scripts\activate
    goto :eof
)

echo "Script de ativação não encontrado"