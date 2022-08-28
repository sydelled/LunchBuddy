<html>

<head>
<title>Welcome To Lunch Buddy</title>
    <link href="css/StyleSheet.css" rel="stylesheet" />


<meta name="viewport" content="width=device-width, initial-scale=1">
<meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.mySlides {display:none;}
</style>
</head>

<body>
    
<h2 class="head-style2">  Welcome To Lunch Buddy KSU!&nbsp; </h2>

<div class="w3-content w3-section" style="max-width:500px">
      <img class="mySlides" src="images/group1.jpg" style="width:100%">
      <img class="mySlides" src="images/group2.jpg" style="width:100%">
      <img class="mySlides" src="images/group3.jpg" style="width:100%">
     <img class="mySlides" src="images/kbbq.jpg" style="width:100%">
     <img class="mySlides" src="images/salad.jpg" style="width:100%">
     <img class="mySlides" src="images/sushi.jpg" style="width:100%">

    
</div>
   <div class="w3-content w3-section">
       

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       

<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AboutUs.aspx"><button class="button1" style="vertical-align:middle"><span>Join US </span></button></asp:HyperLink>
    </div>
    

<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>





</body>
</html>

