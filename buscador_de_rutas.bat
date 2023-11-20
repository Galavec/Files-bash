@ECHO OFF

SETLOCAL ENABLEDELAYEDEXPANSION

TITLE Galavec's Technology

CLS

ECHO.
ECHO ** No olvides que puedes visitar mis repositorios en GitHub: https://github.com/Galavec/
ECHO.
ECHO ****** Busca la ruta completa y correcta de un directorio indicado ******
ECHO.

REM Este script Bash está diseñado para buscar e imprimir las rutas de instalación de diferentes versiones del KIT de Desarrollo de Java (JDK)
REM en tu sistema Windows. Utiliza un FOR "J" para iterar sobre un conjunto de posibles nombres de carpetas de JDK. Para cada nombre, el script
REM busca en la ruta especificada cualquier directorio que coincida con ese nombre. Sin embargo, para evitar confusiones con nombres de directorios
REM similares (por ejemplo, "jdk-17" y "jdk-1.7"), el script utiliza una variable adicional "nombreCortoCarpeta" para asegurarse de que el nombre
REM del directorio coincide exactamente con el nombre que se está buscando.

SET "rutaJdk=C:\Program Files\Java"
SET "nombreCompletoCarpeta="
SET "nombreCortoCarpeta="
SET "jdk6=C:\Program Files\Java\"
SET "jdk8=C:\Program Files\Java\"
SET "jdk11=C:\Program Files\Java\"
SET "jdk17=C:\Program Files\Java\"

REM "FOR para actualizar la ruta donde se encuentre instalado el JDK correspondiente."
FOR %%j IN ("jdk6" "jdk1.6" "jdk-6" "jdk-1.6" "jdk8" "jdk1.8" "jdk-8" "jdk-1.8" "jdk11" "jdk-11" "jdk17" "jdk-17") DO (
    SET "encontrado=0"

	REM "FOR que obtiene la ruta completa."
    FOR /D %%A IN ("!rutaJdk!\*%%~j*") DO (
        IF EXIST "%%~A" (
			REM "FOR que obtiene el nombre de la carpeta."
			FOR /F "delims=" %%B IN ("%%~nxA") DO (
				SET "nombreCompletoCarpeta=%%~B"
				
				IF "!encontrado!"=="0" (
					SET "encontrado=1"
					
					SET "nombreCortoCarpeta=!nombreCompletoCarpeta:~0,4!"
					IF "%%~j"=="jdk6" (
						IF "%%~j"=="!nombreCortoCarpeta!" (
							SET "jdk6=%%~A"
						)
					)
					
					SET "nombreCortoCarpeta=!nombreCompletoCarpeta:~0,6!"
					IF "%%~j"=="jdk1.6" (
						IF "%%~j"=="!nombreCortoCarpeta!" (
							SET "jdk6=%%~A"
						)
					)
					
					SET "nombreCortoCarpeta=!nombreCompletoCarpeta:~0,5!"
					IF "%%~j"=="jdk-6" (
						IF "%%~j"=="!nombreCortoCarpeta!" (
							SET "jdk6=%%~A"
						)
					)
					
					SET "nombreCortoCarpeta=!nombreCompletoCarpeta:~0,7!"
					IF "%%~j"=="jdk-1.6" (
						IF "%%~j"=="!nombreCortoCarpeta!" (
							SET "jdk6=%%~A"
						)
					)
					
					
					SET "nombreCortoCarpeta=!nombreCompletoCarpeta:~0,4!"
					IF "%%~j"=="jdk8" (
						IF "%%~j"=="!nombreCortoCarpeta!" (
							SET "jdk8=%%~A"
						)
					)
					
					SET "nombreCortoCarpeta=!nombreCompletoCarpeta:~0,5!"
					IF "%%~j"=="jdk-8" (
						IF "%%~j"=="!nombreCortoCarpeta!" (
							SET "jdk8=%%~A"
						)
					)
					
					SET "nombreCortoCarpeta=!nombreCompletoCarpeta:~0,7!"
					IF "%%~j"=="jdk-1.8" (
						IF "%%~j"=="!nombreCortoCarpeta!" (
							SET "jdk8=%%~A"
						)
					)
				
					
					SET "nombreCortoCarpeta=!nombreCompletoCarpeta:~0,5!"
					IF "%%~j"=="jdk11" (
						IF "%%~j"=="!nombreCortoCarpeta!" (
							SET "jdk11=%%~A"
						)
					)
					
					SET "nombreCortoCarpeta=!nombreCompletoCarpeta:~0,6!"
					IF "%%~j"=="jdk-11" (
						IF "%%~j"=="!nombreCortoCarpeta!" (
							SET "jdk11=%%~A"
						)
					)
					
					
					SET "nombreCortoCarpeta=!nombreCompletoCarpeta:~0,5!"
					IF "%%~j"=="jdk17" (
						IF "%%~j"=="!nombreCortoCarpeta!" (
							SET "jdk17=%%~A"
						)
					)
					
					SET "nombreCortoCarpeta=!nombreCompletoCarpeta:~0,6!"
					IF "%%~j"=="jdk-17" (
						IF "%%~j"=="!nombreCortoCarpeta!" (
							SET "jdk17=%%~A"
						)
					)
				)
			)
        )
    )
	
    SET "encontrado=0"
)

ECHO La ruta donde se encuentra instalado el...
ECHO JDK 6 es: !jdk6!
ECHO JDK 8 es: !jdk8!
ECHO JDK 11 es: !jdk11!
ECHO JDK 17 es: !jdk17!
