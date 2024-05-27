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
    ECHO ****** Configura version de JDK ******
    
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
SET "jdk6=GalavecDir"
SET "jdk8=GalavecDir"
SET "jdk11=GalavecDir"
SET "jdk14=GalavecDir"
SET "jdk17=GalavecDir"
SET "jdk21=GalavecDir"
SET "jdk22=GalavecDir"

REM "FOR para actualizar la ruta donde se encuentre instalado el JDK correspondiente."
FOR %%j IN ("jdk6" "jdk1.6" "jdk-6" "jdk-1.6" "jdk8" "jdk1.8" "jdk-8" "jdk-1.8" "jdk11" "jdk-11" "jdk14" "jdk-14" "jdk17" "jdk-17" "jdk21" "jdk-21" "jdk22" "jdk-22") DO (
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
					IF "%%~j"=="jdk14" (
						IF "%%~j"=="!nombreCortoCarpeta!" (
							SET "jdk14=%%~A"
						)
					)
					
					SET "nombreCortoCarpeta=!nombreCompletoCarpeta:~0,6!"
					IF "%%~j"=="jdk-14" (
						IF "%%~j"=="!nombreCortoCarpeta!" (
							SET "jdk14=%%~A"
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
					
					
					SET "nombreCortoCarpeta=!nombreCompletoCarpeta:~0,5!"
					IF "%%~j"=="jdk21" (
						IF "%%~j"=="!nombreCortoCarpeta!" (
							SET "jdk21=%%~A"
						)
					)
					
					SET "nombreCortoCarpeta=!nombreCompletoCarpeta:~0,6!"
					IF "%%~j"=="jdk-21" (
						IF "%%~j"=="!nombreCortoCarpeta!" (
							SET "jdk21=%%~A"
						)
					)
					
					
					SET "nombreCortoCarpeta=!nombreCompletoCarpeta:~0,5!"
					IF "%%~j"=="jdk22" (
						IF "%%~j"=="!nombreCortoCarpeta!" (
							SET "jdk22=%%~A"
						)
					)
					
					SET "nombreCortoCarpeta=!nombreCompletoCarpeta:~0,6!"
					IF "%%~j"=="jdk-22" (
						IF "%%~j"=="!nombreCortoCarpeta!" (
							SET "jdk22=%%~A"
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
SET /A count=1
IF EXIST %jdk6% (
    ECHO %count%^) JDK 6.
    SET "op%count%=%jdk6%"
    SET /A count+=1
)
IF EXIST %jdk8% (
    ECHO %count%^) JDK 8.
    SET "op%count%=%jdk8%"
    SET /A count+=1
)
IF EXIST %jdk11% (
    ECHO %count%^) JDK 11.
    SET "op%count%=%jdk11%"
    SET /A count+=1
)
IF EXIST %jdk14% (
    ECHO %count%^) JDK 14.
    SET "op%count%=%jdk14%"
    SET /A count+=1
)
IF EXIST %jdk17% (
    ECHO %count%^) JDK 17.
    SET "op%count%=%jdk17%"
    SET /A count+=1
)
IF EXIST %jdk21% (
    ECHO %count%^) JDK 21.
    SET "op%count%=%jdk21%"
    SET /A count+=1
)
IF EXIST %jdk22% (
    ECHO %count%^) JDK 22.
    SET "op%count%=%jdk22%"
    SET /A count+=1
)

ECHO %count%^) Salir.

ECHO.
SET /P opcion= ^> Seleccione una opcion [1-%count%]:

IF "%opcion%"=="%count%" GOTO:salir

CALL :aplicarJDK %opcion%
GOTO:inicio

:aplicarJDK
    ECHO.
    CALL SETX JAVA_HOME "%%op%1%%" /M
    CALL SETX JAVA_HOME "%%op%1%%"
    ECHO JDK aplicado, por favor cierre todas las ventanas de comandos para que surja efecto.
    PAUSE
    GOTO:EOF

:salir
    ECHO.
    ECHO Gracias por usar el script.
    PAUSE
    @cls&exit

cmd /k






REM Bloque que se ejecutará luego que se actualice el JDK.

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


