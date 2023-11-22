@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION
TITLE Galavec's Technology
CLS

REM El script permite configurar la versión del JDK en las variables de entorno de Windows, es decir, para las variables de entorno del sistema y del usuario.

SET punto=.
FOR /L %%i IN (1,1,4) DO (
	CLS
	
    DATE /t
    ECHO ** No olvides que puedes visitar mis repositorios en GitHub: https://github.com/Galavec/
    ECHO.
    ECHO ****** Configura versión de JDK ******
    
	ECHO.
    ECHO.
	
    ECHO Obteniendo version del JDK!punto!
    PING localhost -n 2 >NUL
    
    SET punto=!punto!.
)



ECHO ____
ECHO La version actual del JDK es:
java -version






REM Obtener la ruta correcta del JDK.
:parteDos
SET "puntos=...."
SET "signoExclamacion=^!"
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






REM Menú para configurar el JDK.

ECHO ____
ECHO.
ECHO Elija una version con la que desea trabajar:
ECHO 1) JDK 6.
ECHO 2) JDK 8.
ECHO 3) JDK 11.
ECHO 4) JDK 17.
ECHO 5) Salir.

ECHO.
SET /P opcion= ^> Seleccione una opcion [1-5]:

IF "%opcion%"=="1" GOTO op1
IF "%opcion%"=="2" GOTO op2
IF "%opcion%"=="3" GOTO op3
IF "%opcion%"=="4" GOTO op4
IF "%opcion%"=="5" GOTO salir

:op1
    ECHO.
	SETX JAVA_HOME "%jdk6%" /M
	SETX JAVA_HOME "%jdk6%"
    ECHO JDK 6 aplicado, por favor cierre todas las ventanas de comandos para que surja efecto.
    PAUSE
	GOTO:inicio
:op2
    ECHO.
	SETX JAVA_HOME "%jdk8%" /M
	SETX JAVA_HOME "%jdk8%"
    ECHO JDK 8 aplicado, por favor cierre todas las ventanas de comandos para que surja efecto.
    PAUSE
	GOTO:inicio
:op3
    ECHO.
	SETX JAVA_HOME "%jdk11%" /M
	SETX JAVA_HOME "%jdk11%"
    ECHO JDK 11 aplicado, por favor cierre todas las ventanas de comandos para que surja efecto.
    PAUSE
	GOTO:inicio
:op4
    ECHO.
	SETX JAVA_HOME "%jdk17%" /M
	SETX JAVA_HOME "%jdk17%"
    ECHO JDK 17 aplicado, por favor cierre todas las ventanas de comandos para que surja efecto.
    PAUSE
	GOTO:inicio
:salir
    ECHO.
	ECHO Gracias por usar el script.
    PAUSE
    @cls&exit
	
cmd /k








:inicio
CLS

DATE /t
ECHO ** No olvides que puedes visitar mis repositorios en GitHub: https://github.com/Galavec/
ECHO.
ECHO ****** Configura JDK ******

ECHO.
ECHO.

ECHO Obteniendo version del JDK....
ECHO ____
ECHO La version actual del JDK es:
ECHO No se pudo obtener version actual debido a que tiene que tiene que cerrar todas las Consolas y volver abrirla.
GOTO:parteDos


