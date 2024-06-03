# run_server.ps1
$PORT = 5500
$HTML_FILE = "home.html"

# Start the Python HTTP server in the background
Start-Process -FilePath "python" -ArgumentList "-m", "http.server", "$PORT" -WindowStyle Hidden

# Wait for a moment to ensure the server is up
Start-Sleep -Seconds 2

# Open the HTML file in the default web browser
Start-Process "http://localhost:$PORT/$HTML_FILE" -Wait

# Kill the Python process once the browser is closed
Stop-Process -Name "python" -Force
