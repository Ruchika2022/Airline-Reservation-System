<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.website.airline.PassengerBean" %>
<head>
<meta charset="ISO-8859-1">
<title>Flight Instances</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>

    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Travel</a> 
            </div>
  <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;"> Welcome Guest &nbsp; <a href="Home.jsp" class="btn btn-danger square-btn-adjust">Home</a> 
										</div>
        </nav>   
        
       
    <!--/.SLIDESHOW END-->
        	<!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <section id="home" class="text-center">
         
                <div id="carousel-example" class="carousel slide" data-ride="carousel">

                    <div class="carousel-inner">
                        <div class="item active">

                            <img src="assets/img/aa.jpg" alt="" />
                            <div class="carousel-caption" >
                                <h4 class="back-light"></h4>
                            </div>
                        </div>
                        <div class="item">
                            <img src="assets/img/aa1.jpg" alt="" />
                            <div class="carousel-caption ">
                                <h4 class="back-light"></h4>
                            </div>
                        </div>
                        <div class="item">
                            <img src="assets/img/sw1.jpg" alt="" />
                            <div class="carousel-caption ">
                                <h4 class="back-light"></h4>
                            </div>
                        </div>
                    </div>


                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example" data-slide-to="1"></li>
                        <li data-target="#carousel-example" data-slide-to="2"></li>
                    </ol>
                </div>
           
       </section>
               
            </div>
            
        </nav>  
        <div id="page-wrapper" >
            <div id="page-inner">
                
                 <!-- /. ROW  -->
                 <hr />
                 
             
                
                
                
                <form action="ActionServlet" method="post">
                 <%ArrayList<PassengerBean> list = (ArrayList<PassengerBean>)request.getAttribute("flightDetails"); %>
                
                <h2>Flight Instances for passenger : <%=request.getAttribute("passengerName") %></h2>
                <table style="width: 95%" border="1">
                <tr>
                <th >Flight Number 
                </th>
                
                <th >Airline
                </th>
                
                <th >Seat Number
                </th>
              
              	<th >Flight Date
                </th>
                
                <th >Scheduled Departure Time
                </th>
                  
                <th >Scheduled Arrival Time
                </th>
                
              
                
                <th >Customer Phone
                </th>
                
                <th>Departure Airport
                </th>
                
                <th >Arrival Airport
                </th>
                
                
                </tr>
                
                <%for(int i=0;i<list.size();i++)
                	{
                	
                	%>
                <tr>
                <td >
                <%=list.get(i).getFlightNum() %>
                </td>
               
                <td >
                <%=list.get(i).getAirline() %>
                </td>
                 
                <td >
                <%=list.get(i).getSeatNo() %>
                </td>
                
                <td >
                <%=list.get(i).getFlightDate() %>
                </td>
                
                 <td >
                <%=list.get(i).getDepartTime() %>
                </td>
                
                 <td >
                <%=list.get(i).getArrTime() %>
                </td>
                             
                <td>
                <%=list.get(i).getPhone() %>
                </td>
                
                <td>
                <%=list.get(i).getDeptAirport() %>
                </td>
                
                <td>
                <%=list.get(i).getArrAirport() %>
                </td>
                
                </tr>
                <%} %>
                </table>
                
                <hr />
                </form>
                
              

                  <div class="row">                     
                      
                              <div class="col-md-6 col-sm-12 col-xs-12">                     
                    <div class="panel panel-default">
                 
                        <div class="panel-body">
                            <a href="AvailSeats.jsp" class="btn btn-danger square-btn-adjust">Get Available Seats Information</a>
                <br />
                <br />
                
                <a href="GetFareInfo.jsp" class="btn btn-danger square-btn-adjust">Get Fare Information</a>
                <br />
                <br />
                <a href="Passenger.jsp" class="btn btn-danger square-btn-adjust">Get Passenger List for a flight</a>
                <br />
                <br />
             
                <a href="viewFlightInstances.jsp" class="btn btn-danger square-btn-adjust">Get List of flights for a passenger</a>
              
                        </div>
                    </div>            
                </div> 
                      <div class="col-md-6 col-sm-12 col-xs-12">                     
                    <div class="panel panel-default">
                        
                        <div class="panel-body">
                        </div>
                    </div>            
                </div> 
                
          
       
    
             <!-- /. PAGE INNER  -->
            
         <!-- /. PAGE WRAPPER  -->
        </div>
        </div>
        </div>
        </div>
        <script type="text/javascript" src="assets/js/canvasjs.min.js"></script>
        
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    
   
</body>
</html>