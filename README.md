[Léeme en Español](#archivos---batch)

[Readme in English](#files---batch)

---
# Archivos - Batch
Repositorio creado para agregar útiles archivos en codificación Batch.

Los archivos ".bat" o ".cmd" son archivos de lote o batch en inglés. Se los utilizan para ejecutar comandos con el Símbolo del sistema de Windows (cmd.exe).  
La principal diferencia entre Bash Shell (.sh) y Batch (.bat) es que Bash Shell es la interfaz de línea de comandos para sistemas UNIX y Linux, mientras que Batch es específico para Windows. Los scripts de Bash suelen tener una extensión ".sh", mientras que los archivos Batch tienen una extensión ".bat" o ".cmd".

## Archivos que contiene el repositorio
El repositorio contiene los siguientes archivos Batch:
1) verificar_existencia_carpeta.bat: Verifica que exista una carpeta donde el script solicita ingresar la ruta donde se debe buscar y también solicita introducir parte del nombre de la carpeta.
2) buscador_de_rutas.bat: Este script Batch está diseñado para buscar e imprimir las rutas de instalación de diferentes versiones del KIT de Desarrollo de Java (JDK) en tu sistema Windows. Utiliza un FOR "J" para iterar sobre un conjunto de posibles nombres de carpetas de JDK. Para cada nombre, el script busca en la ruta especificada cualquier directorio que coincida con ese nombre. Sin embargo, para evitar confusiones con nombres de directorios similares (por ejemplo, "jdk-17" y "jdk-1.7"), el script utiliza una variable adicional "nombreCortoCarpeta" para asegurarse de que el nombre del directorio coincide exactamente con el nombre que se está buscando.
3) configura_version_jdk.bat: El script permite configurar la versión del JDK en las variables de entorno de Windows, es decir, para las variables de entorno del sistema y del usuario.

## ¿Cómo ejecutarlo?
En el "cmd.exe" o en la Terminal de Windows, dirigirse a la carpeta donde se encuentre el archivo Batch y ejecutarlo poniendo el nombre completo del archivo y la extensión, por ejemplo: .\nombreDelArchivo.bat

## Apuntes y Ayuda
Ayúdanos a seguir mejorando estos archivos!! (●'◡'●)

---

# Files - Batch
Repository created to add useful files in Batch coding.

".bat" or ".cmd" files are batch files in English. They are used to run commands using the Windows Command Prompt (cmd.exe).    
The main difference between Bash Shell (.sh) and Batch (.bat) is that Bash Shell is the command-line interface for UNIX and Linux systems, while Batch is specific to Windows. Bash scripts typically have a ".sh" extension, while Batch files have a ".bat" or ".cmd" extension.

## Files contained in the repository
The repository contains the following Batch files:
1) verificar_existencia_carpeta.bat: Verify that there is a folder where the script asks to enter the path where it should be searched and also asks to enter part of the folder name.
2) buscador_de_rutas.bat: This Batch script is designed to find and print the installation paths of different versions of the Java Development KIT (JDK) on your Windows system. Use a "J" FOR to iterate over a set of possible JDK folder names. For each name, the script searches the specified path for any directory that matches that name. However, to avoid confusion with similar directory names (e.g., "jdk-17" and "jdk-1.7"), the script uses an additional variable "nombreCortoCarpeta" to ensure that the directory name exactly matches the name being searched for.
3) configura_version_jdk.bat: The script allows you to configure the version of the JDK on the Windows environment variables, that is, for the system and user environment variables.

## How to execute it?
In the "cmd.exe" or in the Windows Terminal, go to the folder where the Batch file is located and run it entering the full name of the file and the extension, for example: .\fileName.bat

## Notes & Help
Help us keep improving these files!! (●'◡'●)
