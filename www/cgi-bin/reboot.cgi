#!/bin/sh
echo "Content-type: text/html"
echo
echo "<html><head><title>Server reboot</title></head>"
echo "<body>"
echo "<h1>Server reboot</h1>"
echo "<p>The server will reboot shortly. Please use your back button to return.</p>"
echo "</body></html>"

reboot &






