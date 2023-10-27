<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="/event-planning-system/Admin/CSS/dashboard.css">
</head>
<body>
    <div class="control-panel">
        <div class="profile">
            <img src="" alt="">
            <h3>Admin ${authResult}</h3>
        </div>
        <div class="dashborad">
            <h3>DASHBOARD</h3>
             <div class="link">
                <ul>
                    <li><a href="#">Overview</a></li>
                    <li><a href="#">Current Event</a></li>
                </ul>
             </div>
        </div>
        <div class="customer">
            <h3>CUSTOMERS</h3>
             <div class="link">
                <ul>
                    <li><a href="#">Approval Pending</a> </li>
                    <li><a href="#">Running Event</a></li>
                    <li><a href="#">Suspended</a></li>
                    <li><a href="#">Category</a></li>
                    <li><a href="#">Tickets</a></li>
                    <li><a href="#">Messages</a></li>
                </ul>
             </div>
        </div>
        <div class="report">
            <h3>REPORTS</h3>
             <div class="link">
                <ul>
                    <li><a href="#">Survey</a></li>
                    <li><a href="#">Scheduled Report</a></li>
                </ul>
             </div>
        </div>
        <div class="setting">
            <h3>SETTINGS</h3>
             <div class="link">
                <ul>
                    <li><a href="#">profile</a> </li>
                    <li><a href="#">theam</a></li>
                </ul>
             </div>
        </div>

        <button>logout</button>
    </div>
    <div class="content">
       <div class="main-row">
        <div class="box1">
            <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
            <lottie-player src="https://lottie.host/ac2c7793-b944-43f4-89ed-9c3c0b295980/IOvUAURDFX.json"
            background=""
            speed="1"
            style="width: 50vw; height: 300px; margin-top: 50px"
            loop
            autoplay
            direction="1"
            mode="normal">
            </lottie-player>

        </div>
        <div class="box2">
            <script src="https://unpkg.com/@lottiefiles/lottie-player@latest/dist/lottie-player.js"></script>
            <lottie-player src="https://lottie.host/44985419-97dd-4793-bba5-4725ba7b0aef/4WZaTnnyOH.json"
            background=""
            speed="1"
            style="width: 30vw; height: 300px; margin-top: 50px; margin-left: 0; padding: 0;"
            loop
            autoplay
            direction="1"
            mode="normal">
            </lottie-player>
           <div class="bar">
            <div class="bar1"></div>
            <div class="bar2"></div>
           </div>
        </div>
       </div>

    
        <div class="btn">
            <button onclick="navigateTo()">Add Event</button> &nbsp; &nbsp; &nbsp;
            <button onclick="navigateToEvent()">View Events</button>
        </div>
    </div>

</body>
</html>
   <script src="/event-planning-system/Admin/JS/admin.js"></script>
</body>
</html>