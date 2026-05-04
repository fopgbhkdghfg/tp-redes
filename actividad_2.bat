@echo off
REM Crear carpeta principal
mkdir CARPETA_PRINCIPAL

REM Entrar en la carpeta principal
cd CARPETA_PRINCIPAL

REM Crear carpetas principales
mkdir HOGAR
mkdir JUEGOS
mkdir CONTAB
mkdir TRABAJO

REM Subcarpetas de HOGAR
mkdir HOGAR\JOSE
mkdir HOGAR\LUISA
mkdir HOGAR\HORARIOS
mkdir HOGAR\JUAN
mkdir HOGAR\SONIA

REM Subcarpetas de TRABAJO
mkdir TRABAJO\PROYEC1
mkdir TRABAJO\PROYEC2

REM Subcarpetas dentro de PROYEC2
mkdir TRABAJO\PROYEC2\BDD
mkdir TRABAJO\PROYEC2\SCRIPTS

REM Subcarpetas dentro de SCRIPTS
mkdir TRABAJO\PROYEC2\SCRIPTS\JS
mkdir TRABAJO\PROYEC2\SCRIPTS\PY

REM Mostrar estructura
tree

pause






@echo off

REM 1. Mostrar árbol de directorios
tree

REM 2. Copiar todos los archivos a BDD
copy *.* TRABAJO\PROYEC2\BDD

REM 3. Copiar archivos .EXE a LUISA
copy *.exe HOGAR\LUISA

REM 4. Ir a PROYEC2
cd TRABAJO\PROYEC2

REM 5. Mover archivos .JS de BDD a SCRIPTS\JS
move BDD*.js SCRIPTS\JS

REM 6. Ir a carpeta PY
cd SCRIPTS\PY

REM 7. Copiar archivos desde JS hacia PY
copy ..\JS*.js

pause
