@echo off
echo Ingrese el mensaje de commit: 
set /p CommitString=

git add .
if %errorlevel% neq 0 (
    echo Error al añadir los cambios al repositorio local
    pause
    exit
)

git commit -m "%CommitString%"
if %errorlevel% neq 0 (
    echo Error al realizar el commit
    pause
    exit
)

git push -u origin main
if %errorlevel% neq 0 (
    echo Error al realizar el push
    pause
    exit
)

echo Proceso finalizado con exito.
pause >nul
exit