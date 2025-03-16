@echo off
echo Creating project files...

REM Create HTML file with basic structure, links to CSS, and JS
(
echo ^<!DOCTYPE html^>
echo ^<html lang="en"^>
echo ^<head^>
echo     ^<meta charset="UTF-8"^>
echo     ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^>
echo     ^<title^>Your Project^</title^>
echo     ^<link rel="stylesheet" href="style.css"^>
echo ^</head^>
echo ^<body^>
echo     ^<h1 id="title"^>Hello, World!^</h1^>
echo     ^<button onclick="changeText()"^>Click Me^</button^>
echo     ^<script src="script.js"^>^</script^>
echo ^</body^>
echo ^</html^>
) > index.html

REM Create CSS file with basic styling
(
echo body ^{
echo     font-family: Arial, sans-serif;
echo     background-color: #f0f0f0;
echo     text-align: center;
echo     margin-top: 50px;
echo ^}
echo.
echo h1 ^{
echo     color: #333;
echo ^}
echo.
echo button ^{
echo     padding: 10px 20px;
echo     background-color: #4CAF50;
echo     color: white;
echo     border: none;
echo     border-radius: 5px;
echo     cursor: pointer;
echo ^}
echo button:hover ^{
echo     background-color: #45a049;
echo ^}
) > style.css

REM Create JS file with a simple function to change text on button click
(
echo function changeText^(^) ^{
echo     document.getElementById^("title"^).innerHTML = "You clicked the button!";
echo ^}
) > script.js

echo Files created and project is ready: index.html, style.css, script.js
pause