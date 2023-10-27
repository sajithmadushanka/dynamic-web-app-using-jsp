<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event Page</title>
  
   <link rel="stylesheet" href="/event-planning-system/Event/CSS/eventPage.css">
</head>
<body>
     <!-- navbar -->
     <div class="navbar">
        <img src="/event-planning-system/assets/images/logo.png" alt="logo">
    <div class="header">
        <ul>
            <li><a href ="index.jsp">home</a></li>
                <li><a href ="GetEventsServlet">event</a></li>
                <li><a href ="#">benefit</a></li>
                <li><a href ="#">help</a></li>
        </ul>
    </div>
        <button>Get Started</button>
</div>
<!-- nav bar end -->

<!-- seacrh bar -->
    <div class="search-bar-outer">
        <div class="serach-bar-inner">
            <input type="text" name="search" placeholder="Search..">
        </div>
    </div>
<!--end of search........... -->

<!-- card section -->

<div class="card-container">
    <div class="row row-one">
     <c:forEach var="event" items="${eventList}" varStatus="loop">
         <c:if test="${loop.index < 3}">
        <div class="col-one column">
            <p>Event Title:${event.title}</p>
            <p>Location : ${event.location}</p>
            <p>No of Guests : ${event.noOfGuest}</p>
            <p>Theme : ${event.theme}</p>
            <p>Data and Time : ${event.dateAndTime}</p>
            <button >select</button>
        </div>
        </c:if>
       </c:forEach>
    </div>
    
    <div class="row row-one">
     <c:forEach var="event" items="${eventList}" varStatus="loop">
         <c:if test="${loop.index >= 3}">
        <div class="col-one column">
            <p>Event Title:${event.title}</p>
            <p>Location : ${event.location}</p>
            <p>No of Guests : ${event.noOfGuest}</p>
            <p>Theme : ${event.theme}</p>
            <p>Data and Time : ${event.dateAndTime}</p>
            <button>select</button>
        </div>
        </c:if>
       </c:forEach>
    </div>
    
</div>
<!-- end of card section---------------- -->

<!-- fotter section -->
<div class="fotter">
    <div class="fotter-log">
            <img src="/event-planning-system/assets/images/logo.png" alt="">
    </div>
    <div class="box1 box ">
      
     <div class="fotter-links">
        <ul>
            <h2> Get in Touch</h2>
            <li>About Us</li>
            <li>Start Plan Festival</li>
            <li>Pricing</li>
          </ul>
     </div>
    </div>
    <div class="box2 box">
        <div class="fotter-links">
            
            <ul>
                <h2>Services</h2>
                <li>Strategy</li>
                <li>Research & Insight</li>
                <li>Creative Concepts</li>
              </ul>
         </div>
    </div>
    <div class="box3 box">
        <div class="fotter-links">
           
            <ul>
                 <h2>Community</h2>
                <li>Blog</li>
                <li>Partner</li>
                <li>Charity</li>
              </ul>
         </div>
    </div>
    <div class="box4 box">
        <div class="fotter-links">
           
            <ul>
                <h2>Support</h2>
                <li>Contact Us</li>
                <li>FAQ</li>
                <li>Legal Notices</li>
              </ul>
         </div>
    </div>
</div>
<!-- end of fotter section -->


<!-- copyright section -->
<hr>
<div class="copy-right">
  
   <p>@EventGo 2023 - All rights reserved - GoEvent.com</p>
   <div class="social-media-icons">
        <img src="/event-planning-system/assets/images/social-icon/fb.png " alt="fb">
        <img src="/event-planning-system/assets/images/social-icon/youtube.png" alt="linkedin">
        <img src="/event-planning-system/assets/images/social-icon/linkedin.png" alt="youtube">
   </div>
</div>
<!-- end of copyright --> 

</body>
</html>