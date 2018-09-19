<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>Collective Foot Store</title>
  
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
img {
    max-width: 100%;
    height: 100%;
    object-fit: cover;
}
</style>
  
</head>
<body>
<jsp:include page="Header.jsp"/>
<br>
<div class="container">
 
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="resources/images/img_bg_1.jpg" alt="Picture1">
      </div>

      <div class="item">
        <img src="resources/images/new.jpg" alt="Picture2" >
      </div>
    
      <div class="item">
        <img src="resources/images/img_bg_3.jpg" alt="Picture3">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div> <br><br>
<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading"> DEAL OF THE HOUR </div>
        <div class="panel-body"><img src="resources/images/item-1.jpg"  class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Get 10% off on all shopping above Rs.999</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-danger">
        <div class="panel-heading"> DEAL OF THE DAY</div>
        <div class="panel-body"><img src="resources/images/item-2.jpg"  class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Get 10% off on all shopping above Rs.1999</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-success">
        <div class="panel-heading"> DEAL OF THE WEEK</div>
        <div class="panel-body"><img src="resources/images/item-6.jpg"  class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Get 20% off on all shopping above Rs.1599</div>
      </div>
    </div>
  </div>
</div><br>


</body>
</html>

