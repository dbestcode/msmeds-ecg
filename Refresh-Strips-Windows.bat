:: Refresh-strips-windows.abt
:: Creates new html pages for any PDF files located in this direcory
:: also make the list of html files in 'list.htm'  which is the index
:: Make header for 12 lead list

@echo off
setlocal enabledelayedexpansion enableextensions

:: prompt user before making a new set of files 

SET /P a=Delete all HTML file in this directory?(y/n)

if "%a%" == "y" (
	ECHO Searching for pdf files...
) else (
	ECHO Closing....
	TIMEOUT 1 >nul
	GOTO CLOSERX
)

:: Make header of the links file "list.html
echo >list.html
echo ^<!DOCTYPE html^>>list.html
echo ^<html^>>>list.html
echo ^<head^>>>list.html
echo ^<title^>"$file"^<^/title^>>>list.html
echo ^<link rel="stylesheet" href="../css/main.css"^>^<^/head^>>>list.html
echo ^<body^>>>list.html
echo ^<a href="../index.html" class='button'^>HOME^<^/a^>^<^/ br^>>>list.html
echo ^<h1 style="text-align:center;"^>12 Lead Orders^<^/h1^>^<h1^> Patients:^<^/h1^>>>list.html


:: Find all pdfs and make a page for each one and add a link in the list page
for %%# in (*.pdf) do (
	echo Found %%#
	set PDFFile=%%#
	set NewPage=%%~n#.html
	echo ^<div class='grid-item'^>^<a href='!NewPage!' class='button'^>!NewPage!^<^/a^>^<^/div^>>>list.html
	echo ^<!DOCTYPE html^>>!NewPage!
	echo ^<html^>^<head^>>>!NewPage!
	echo ^<title^>!PDFFile!^<^/title^>>>!NewPage!
	echo ^<link rel="stylesheet" href="../css/main.css"^>>>!NewPage!
	echo ^<^/head^>^<body^>>>!NewPage!
	echo ^<a href="../index.html" class='button'^>HOME^<^/a^>>>!NewPage!
	echo ^<a href="../send.html" class='button'^>SEND RESULTS TO PROVIDER^<^/a^>^<^/ br^>>>!NewPage!
	echo ^<iframe src=!PDFFile! width="100%%" height='700px'^>^<^/iframe^>>>!NewPage!
	echo ^<^/body^>^<^/html^>>>!NewPage!
)
echo ^<^/body^>^<^/html^>>>list.html

echo New list of 12 leads have been completed.

timeout 5


:CLOSERX