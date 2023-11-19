@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION

TITLE Galavec's Technology

CLS

ECHO ** No olvides que puedes visitar mis repositorios en GitHub: https://github.com/Galavec/
ECHO.
ECHO ****** Verificar existencia de una carpeta ******

ECHO -- Introduce la ruta donde debo buscar (ejemplo: C:\Program Files\Java):
SET /P "folder="

ECHO -- Introduce la parte del nombre de la carpeta que estas buscando:
SET /P "partname="

SET "found=0"

FOR /D %%A IN ("%folder%\*%partname%*") DO (
    IF EXIST "%%~A" (
		IF "!found!"=="0" (
			ECHO Carpeta^(s^) encontrada^(s^)
			
			SET "found=1"
		)
        
		ECHO %%~A
    )
)

IF "!found!"=="0" (
    ECHO Carpeta no encontrada.
)
