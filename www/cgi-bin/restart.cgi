#!/bin/sh
echo "Content-type: text/html"
echo
echo "<html><head><title>Restart</title></head>"
echo "<body>"
echo "<h1>Restart</h1>"
echo "<p>Running the startup script now.</p>"
echo "</body></html>"

../../startup.sh & > /dev/null


