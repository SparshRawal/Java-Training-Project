<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" 
integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"> 
<title>Registration Page</title>
</head>
<body>
<div class="container">  
<div class="jumbotron">
  <h2 style="text-align:center">User Registration</h2><br>  
  <div class="container">
  <form action="RegisterUser" class="form-horizontal" method="POST">
  <form style="width:300px">     
  	<div class="form-group row">  
  		<div class="col-sm-2"></div>
      <label class="col-sm-2" for="id"style="text-align:left">User ID:</label>  
      <div class="col-sm-6">  
        <input type="text" class="form-control" name="id" placeholder="Enter User ID">  
      </div>  
    </div>
    <div class="form-group row">  
    <div class="col-sm-2"></div>
      <label class="col-sm-2" for="name"style="text-align:left">Name:</label>  
      <div class="col-sm-6">  
        <input type="text" class="form-control" name="name" placeholder="Enter Name">  
      </div>  
    </div>
    <div class="form-group row">  
    <div class="col-sm-2"></div>
      <label class="col-sm-2" for="email"style="text-align:left">Email ID:</label>  
      <div class="col-sm-6">  
        <input type="email" class="form-control" name="email" placeholder="Enter Email ID">  
      </div>  
    </div>
     <div class="form-group row">  
     <div class="col-sm-2"></div>
      <label class="col-sm-2" for="pwd">Password:</label>  
      <div class="col-sm-6">            
        <input type="password" class="form-control" name="pwd" placeholder="Enter password">  
      </div>  
    </div>
     <div class="form-group row">  
     <div class="col-sm-2"></div>
      <label class="col-sm-2" for="phone"style="text-align:left">Phone Number:</label>  
      <div class="col-sm-6">  
        <input type="text" class="form-control" name="phone" maxlength="10" placeholder="Enter Phone Number">  
      </div>  
    </div>
    <div class="form-group row">  
    <div class="col-sm-2"></div>
      <label class="col-sm-2" for="address"style="text-align:left">Address:</label>  
      <div class="col-sm-6">
      <textarea class="form-control" name="address" placeholder="Enter Address"></textarea>
      </div>  
    </div>
     <div class="form-group row">  
     <div class="col-sm-2"></div>
      <label class="col-sm-2" for="file"style="text-align:left">Upload Photo:</label>  
      <div class="col-sm-6">  
        <input type="file" class="form-control-file" name="file" placeholder="No file selected">  
      </div>  
    </div>  
  <div class="form-group row">
       <div class="col-sm-3"></div>   
      <div class="col-sm-3">  
        <button type="submit" class="btn btn-outline-success btn-block">Register</button>  
      </div> 
      <div class="col-sm-3">  
        <button type="reset" class="btn btn-outline-danger btn-block">Reset</button>  
      </div> 
    </div>  
  </form>
    </form>
    </div>
</div>  
</div>


</body>
</html>