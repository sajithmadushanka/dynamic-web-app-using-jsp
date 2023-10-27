<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="main.css">
</head>
<body>
    <!-- navbar -->
    <div class="navbar">
            <img src="./assets/images/logo.png" alt="logo">
        <div class="header">
            <ul>
                <li><a href ="#">home</a></li>
                <li><a href ="GetEventsServlet">event</a></li>
                <li><a href ="#">benefit</a></li>
                <li><a href ="#">help</a></li>
            </ul>
        </div>
            <button onclick="navToLoggin()">Login</button>
    </div>
    <!-- nav bar end --> 

    <!-- main section start -->
    <div class="main-section">
      <div class="dark-filter">
        <div class="left-side">
            <h1>Turn Your Event <br>
                Into <span>Memorable</span> <br>
                Experience</h1>
            <p>platform for planning and organizing your events.
                We provide you with <br> the best ideas for
                any evens,so that you can easily plan 
                and organize your events.
            </p>
            <button onclick="navTOregister()">Get Started</button>
        </div>
        <div class="right-side">
            <div class="column-one">
                <div class="box1">
                    <video autoplay muted  controls loop>
                        <source src="./assets/videos/m1.mp4"  type="video/mp4">
                    </video>
                </div>
                <div class="box2">
                        <video autoplay muted  controls loop>
                            <source src="./assets/videos/m0.mp4"  type="video/mp4">
                        </video>
                </div>
            </div>
            <div class="column-two">
                <div class="box3">
                    <video autoplay muted  controls loop>
                        <source src="./assets/videos/m4.mp4"  type="video/mp4">
                    </video>
            </div>
                <div class="box4">
                    <video autoplay muted  controls loop>
                        <source src="./assets/videos/m5.mp4"  type="video/mp4">
                    </video>
                </div>
            </div>
        </div>
      </div>
    </div>
    <!-- main section end -->

    <!-- second section start -->
    <div class="second-section">
        <div class="left-side">
            <h5>An incredible force</h5>
            <h3>Music is the <br>
                Greater Uniter
            </h3>
            <p>
                GoEvent is an event management platform that help you in planning
                and organizing events especially for music festival. You can share
                your event with family, friends, team members and the public to get
                more people interested. It also allows you to manage the RSVPs for
                your events and share your event on social media platforms.
            </p>
        </div>
        <div class="right-side">
          <div class="img-border">
            <img src="./assets/images/second-img.png" alt="second section image">
          </div>
        </div>
    </div>
      <!-- end of second section -->

     <!-- third section -->
     <div class="third-section">
        <div class="line-one">
            <img src="./assets/images/second-1.jpg" alt="">
            <h3>Unlimited sound</h3>
        </div>
        <div class="line-two">
            <img src="./assets/images/second-2.jpg" alt="">
            <h3>Video Document</h3>
        </div>
        <div class="line-three">
            <img src="./assets/images/second-3.jpg" alt="">
            <h3>Manage Larger <br>Events</h3>
        </div>
        <div class="line-four">
            <h2>Benefit <br>
                For <br>
                You</h2>
        </div>
    </div>
    <!-- end of third section -->

    <!-- fourth section -->
    <div class="fourth-section">
        <div class="row-one">
            <h2>Our Latest Work</h2>
        <a href="#">view more</a>
        </div>
        <div class="img-slider">
            <div class="container">
                <i class="fa-solid fa-angle-left" id="left-icon"></i>
                <div class="ring">
                 <img src="./assets/images/third-1.jpg" alt="image 1">
                 <img src="./assets/images/third-2.jpg" alt="image 2">
                 <img src="./assets/images/third-3.jpg" alt="image 3">
                 <img src="./assets/images/third-1.jpg" alt="image 1">
                 <img src="./assets/images/third-2.jpg" alt="image 2">
                </div>
                <i class="fa-solid fa-angle-right" id="right-icon"></i>
               </div>
        </div>
    </div>
    <!-- end of fourth section -->

    <!-- fifth section -->
    <div class="fifth-section">
        <h5>Get in touch</h5>
        <h2>Create Amazing Memories <br>
            Out of Your Next Festival
        </h2>
        <button onclick="navTOregister()">Get Started</button>
    </div>
    <!-- end of fifth section -->

    <!-- fotter section -->
    <div class="fotter">
        <div class="fotter-log">
                <img src="./assets/images/logo.png" alt="">
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
            <img src="./assets/images/social-icon/fb.png " alt="fb">
            <img src="./assets/images/social-icon/youtube.png" alt="linkedin">
            <img src="./assets/images/social-icon/linkedin.png" alt="youtube">
       </div>
    </div>
    <!-- end of copyright --> 

       

        <script src="./main.js"></script>
        <script src="https://kit.fontawesome.com/725be772fd.js" crossorigin="anonymous"></script>
</body>
</html>

<%
// Clear the attribute to prevent it from showing on page refresh
request.removeAttribute("invalidPs"); 

%>





