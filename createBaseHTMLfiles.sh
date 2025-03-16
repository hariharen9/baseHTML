#!/bin/bash
echo "Creating project files..."

# Create HTML file with basic structure, links to CSS, and JS
cat > index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Project</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1 id="title">Hello, World!</h1>
    <button onclick="changeText()">Click Me</button>
    <script src="script.js"></script>
</body>
</html>
EOF

# Create CSS file with basic styling
cat > style.css << 'EOF'
body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    text-align: center;
    margin-top: 50px;
}

h1 {
    color: #333;
}

button {
    padding: 10px 20px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}
button:hover {
    background-color: #45a049;
}
EOF

# Create JS file with a simple function to change text on button click
cat > script.js << 'EOF'
function changeText() {
    document.getElementById("title").innerHTML = "You clicked the button!";
}
EOF

echo "Files created and project is ready: index.html, style.css, script.js"
read -p "Press Enter to continue..."
