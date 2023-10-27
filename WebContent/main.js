const ring_ = document.querySelector(".ring");
const leftbtn = document.getElementById('left-icon');
const rightbtn = document.getElementById('right-icon');

let isAutoScrolling = false;
let scrollDirection = 1; 

const scrollSpeed = 2; 
const scrollInterval = 10;

const startAutoScroll = () => {
    if (!isAutoScrolling) {
        isAutoScrolling = true;
        autoScroll();
    }
}

const stopAutoScroll = () => {
    isAutoScrolling = false;
}

leftbtn.addEventListener('click', () => {
    scrollDirection = -1;
    startAutoScroll();
});

rightbtn.addEventListener('click', () => {
    scrollDirection = 1;
    startAutoScroll();
});

ring_.addEventListener("mouseenter", stopAutoScroll);
ring_.addEventListener("mouseleave", startAutoScroll);

function autoScroll() {
    if (isAutoScrolling) {
        ring_.scrollLeft += scrollDirection * scrollSpeed;
        setTimeout(autoScroll, scrollInterval);
    }
}

// Initial start for auto-scrolling
startAutoScroll();

let isDragStart = false;
let prvPageX, prvScrollLeft;

const dragStart = (e) => {
    isDragStart = true;
    prvPageX = e.pageX;
    prvScrollLeft = ring_.scrollLeft;
}

const dragging = (e) => {
    if (!isDragStart) return;
    e.preventDefault();
    let positionDiff = e.pageX - prvPageX;
    ring_.scrollLeft = prvScrollLeft - positionDiff;
}

const dragStop = () => {
    isDragStart = false;
}

ring_.addEventListener("mousedown", dragStart);
ring_.addEventListener("mousemove", dragging);
ring_.addEventListener("mouseup", dragStop);
//----------------------------------------------------------------------

function navTOregister(){
	  window.location.href = "/event-planning-system/User/registration.jsp"
}
function navToLoggin(){
	 window.location.href = "/event-planning-system/User/loggin.jsp"
}