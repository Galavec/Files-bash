MODE con:cols=140
COLOR E
@ECHO OFF

TITLE Galavec's Technology

CLS

DATE /t
ECHO  #####  ##### ##### #    # #    # ##### #    # ##### #####  ######   #     # #####        #####  ###### #     ###### #    # ######  #####  
ECHO  #    #   #   #     #    # #    # #     #    #   #   #    # #    #   #     # #    #       #      #    # #     #    # #    # #      #  
ECHO  #    #   #   #     ##   # #    # #     ##   #   #   #    # #    #   ##   ## #    #       #      #    # #     #    # #    # #      #   
ECHO  ####     #   ###   # #  # #    # ###   # #  #   #   #    # #    #   # # # # #####        #   ## ###### #     ###### #    # ####   #     
ECHO  #    #   #   #     #   ## #    # #     #   ##   #   #    # #    #   #  #  # #    #       #    # #    # #     #    # #    # #      #   
ECHO  #    #   #   #     #    #  #  #  #     #    #   #   #    # #    #   #     # #    # ###   #    # #    # #     #    #  #  #  #      #   
ECHO  #####  ##### ##### #    #   ##   ##### #    # ##### #####  ######   #     # #    # ###   #####  #    # ##### #    #   ##   ######  #####

ECHO:
ECHO.
ECHO Obteniendo version del JDK...
ECHO ..
PING localhost -n 2 >NUL
CLS

DATE /t
ECHO  #####  ##### ##### #    # #    # ##### #    # ##### #####  ######   #     # #####        #####  ###### #     ###### #    # ######  #####  
ECHO  #    #   #   #     #    # #    # #     #    #   #   #    # #    #   #     # #    #       #      #    # #     #    # #    # #      #  
ECHO  #    #   #   #     ##   # #    # #     ##   #   #   #    # #    #   ##   ## #    #       #      #    # #     #    # #    # #      #   
ECHO  ####     #   ###   # #  # #    # ###   # #  #   #   #    # #    #   # # # # #####        #   ## ###### #     ###### #    # ####   #     
ECHO  #    #   #   #     #   ## #    # #     #   ##   #   #    # #    #   #  #  # #    #       #    # #    # #     #    # #    # #      #   
ECHO  #    #   #   #     #    #  #  #  #     #    #   #   #    # #    #   #     # #    # ###   #    # #    # #     #    #  #  #  #      #   
ECHO  #####  ##### ##### #    #   ##   ##### #    # ##### #####  ######   #     # #    # ###   #####  #    # ##### #    #   ##   ######  #####

ECHO.
ECHO Obteniendo version del JDK...
ECHO ...
PING localhost -n 2 >NUL
CLS

DATE /t
ECHO  #####  ##### ##### #    # #    # ##### #    # ##### #####  ######   #     # #####        #####  ###### #     ###### #    # ######  #####  
ECHO  #    #   #   #     #    # #    # #     #    #   #   #    # #    #   #     # #    #       #      #    # #     #    # #    # #      #  
ECHO  #    #   #   #     ##   # #    # #     ##   #   #   #    # #    #   ##   ## #    #       #      #    # #     #    # #    # #      #   
ECHO  ####     #   ###   # #  # #    # ###   # #  #   #   #    # #    #   # # # # #####        #   ## ###### #     ###### #    # ####   #     
ECHO  #    #   #   #     #   ## #    # #     #   ##   #   #    # #    #   #  #  # #    #       #    # #    # #     #    # #    # #      #   
ECHO  #    #   #   #     #    #  #  #  #     #    #   #   #    # #    #   #     # #    # ###   #    # #    # #     #    #  #  #  #      #   
ECHO  #####  ##### ##### #    #   ##   ##### #    # ##### #####  ######   #     # #    # ###   #####  #    # ##### #    #   ##   ######  #####

ECHO.
ECHO Obteniendo version del JDK...
ECHO ....
PING localhost -n 2 >NUL

SET opcion=0
:inicio
CLS

DATE /t
ECHO  #####  ##### ##### #    # #    # ##### #    # ##### #####  ######   #     # #####        #####  ###### #     ###### #    # ######  #####  
ECHO  #    #   #   #     #    # #    # #     #    #   #   #    # #    #   #     # #    #       #      #    # #     #    # #    # #      #  
ECHO  #    #   #   #     ##   # #    # #     ##   #   #   #    # #    #   ##   ## #    #       #      #    # #     #    # #    # #      #   
ECHO  ####     #   ###   # #  # #    # ###   # #  #   #   #    # #    #   # # # # #####        #   ## ###### #     ###### #    # ####   #     
ECHO  #    #   #   #     #   ## #    # #     #   ##   #   #    # #    #   #  #  # #    #       #    # #    # #     #    # #    # #      #   
ECHO  #    #   #   #     #    #  #  #  #     #    #   #   #    # #    #   #     # #    # ###   #    # #    # #     #    #  #  #  #      #   
ECHO  #####  ##### ##### #    #   ##   ##### #    # ##### #####  ######   #     # #    # ###   #####  #    # ##### #    #   ##   ######  #####

ECHO.
ECHO ____
ECHO La version actual del JDK es:
java -version

ECHO ____
ECHO.
ECHO Elija una version con la que desea trabajar:
ECHO 1) JDK 6.
ECHO 2) JDK 8.
ECHO 3) JDK 11.
ECHO 4) JDK 17.
ECHO 5) Me mantengo en la actual.

ECHO.
SET /P opcion= ^> Seleccione una opcion [1-5]:

IF "%opcion%"=="1" GOTO op1
IF "%opcion%"=="2" GOTO op2
IF "%opcion%"=="3" GOTO op3
IF "%opcion%"=="4" GOTO op4
IF "%opcion%"=="5" GOTO salir

:op1
    ECHO.
	SETX JAVA_HOME "C:\Program Files\Java\jdk1.6.0_45" /M
	SETX JAVA_HOME "C:\Program Files\Java\jdk1.6.0_45"
    ECHO JDK 6 aplicado, por favor cierre todas las ventanas de comandos.
    PAUSE
	GOTO:inicio
:op2
    ECHO.
	SETX JAVA_HOME "C:\Program Files\Java\jdk-1.8u381" /M
	SETX JAVA_HOME "C:\Program Files\Java\jdk-1.8u381"
    ECHO JDK 8 aplicado, por favor cierre todas las ventanas de comandos.
    PAUSE
	GOTO:inicio
:op3
    ECHO.
	SETX JAVA_HOME "C:\Program Files\Java\jdk-11.0.13" /M
	SETX JAVA_HOME "C:\Program Files\Java\jdk-11.0.13"
    ECHO JDK 11 aplicado, por favor cierre todas las ventanas de comandos.
    PAUSE
	GOTO:inicio
:op4
    ECHO.
	SETX JAVA_HOME "C:\Program Files\Java\jdk-17" /M
	SETX JAVA_HOME "C:\Program Files\Java\jdk-17"
    ECHO JDK 17 aplicado, por favor cierre todas las ventanas de comandos.
    PAUSE
	GOTO:inicio
:salir
    ECHO.
	ECHO Has elegido seguir con el JDK actual.
    PAUSE
    @cls&exit
	
cmd /k

