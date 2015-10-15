<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<title>CSS Transition Demonstration</title>

<style> 
div {
    width: 100px;
    height: 100px;
    background: red;
    -webkit-transition: width 2s, height 4s, box-shadow 6s, border-radius 8s; /* For Safari 3.1 to 6.0 */
    transition: width 2s, height 4s, box-shadow 6s, border-radius 8s;
    transition-delay: 1s;
    transition-duration: 2s;
    transition-timing-function: ease-in; /*linear, ease-out ease-in-out*/
}

div:hover {
    width: 300px;
    height: 300px;
    box-shadow: 0px 0px 10px 0px black;
    border-radius: 10px;
}

@keyframes example {
	/*from{}
	to{}*/
    0%   {background-color: red; left:0px; top:0px;}
    25%  {background-color: yellow; left:200px; top:0px;}
    50%  {background-color: blue; left:200px; top:200px;}
    75%  {background-color: green; left:0px; top:200px;}
    100% {background-color: red; left:0px; top:0px;}
}

/* The element to apply the animation to */
div#A {
	/*animation: example 5s linear 2s infinite alternate;*/
    width: 100px;
    height: 100px;
    position: relative;
    background-color: red;
    animation-name: example;
    animation-duration: 2s;
    animation-delay: 1s;
    animation-iteration-count: 3; /*infinite*/
    animation-direction: reverse;
    column-count: 3;
}

div.B
{
    column-count: 3;
}


</style>
</head>
<body>

<p><b>Note:</b> This example does not work in Internet Explorer 9 and earlier versions.</p>

<div></div><br/>

<div id="A" class="B">
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.

</div>

<p>Hover over the div element above, to see the transition effect.</p>

</body>
</html>
