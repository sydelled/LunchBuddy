

var myIndex = 0;
carousel();

Function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  For (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  If (myIndex > x.length) Then {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2000); // Change image every 2 seconds
}
End Class

