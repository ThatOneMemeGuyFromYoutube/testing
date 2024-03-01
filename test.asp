<%
Response.ContentType = "text/html"
%>
<!DOCTYPE html>
<html>
<head>
    <title>ASP Clock</title>
    <script language="vbscript">
        Sub updateClock()
            Dim currentTime
            currentTime = Time()
            document.getElementById("clock").innerText = currentTime
        End Sub
        
        Sub startClock()
            updateClock
            window.setInterval "updateClock()", 1000
        End Sub
    </script>
</head>
<body onload="startClock()">
    <h1>Current Time:</h1>
    <div id="clock"></div>
</body>
</html>
