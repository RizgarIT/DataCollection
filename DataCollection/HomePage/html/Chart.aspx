﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chart.aspx.cs" Inherits="DataCollection.HomePage.html.Chart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    
    <meta name="viewport" content="width=device-width, initial-scale=1" />
   
  
    <meta name="robots" content="noindex,nofollow" />
    <title>Home Page</title>

    <link href="../assets/libs/flot/css/float-chart.css" rel="stylesheet" />
    
      
       <link href="../dist/css/StyleSheet1.css" rel="stylesheet" />
            <style>
.divScroll {
overflow:scroll;
height: 410px;
    width: 840px;
}
</style>
 
    <script src="../Javascript/JavaScript.js"></script>
      <link href="../Style.scss" rel="stylesheet" />
  </head>

  <body>
      <form id="form1" runat="server">
  
    <div class="preloader">
      <div class="lds-ripple">
        <div class="lds-pos"></div>
        <div class="lds-pos"></div>
      </div>
        
    </div>
  
    <div
      id="main-wrapper"
      data-layout="vertical"
      data-navbarbg="skin5"
      data-sidebartype="full"
      data-sidebar-position="absolute"
      data-header-position="absolute"
      data-boxed-layout="full"
    >
     
      <header class="topbar" data-navbarbg="skin5">
        <nav class="navbar top-navbar navbar-expand-md navbar-dark">
      
          <div
            class="navbar-collapse collapse"
            id="navbarSupportedContent"
            data-navbarbg="skin5"
          >
            
            <ul class="navbar-nav float-start me-auto">
                            <li class="nav-item d-none d-lg-block">
                                <a class="nav-link sidebartoggler waves-effect waves-light"
                                   href="javascript:void(0)"
                                   data-sidebartype="mini-sidebar">
                                    <i class="mdi mdi-menu font-24"></i>
                                </a>



                                <a class="navbar-brand" href="HomePage.aspx">
              <!-- Logo icon -->
              <b class="logo-icon ps-2">
                
                <img
                  src="../assets/images/logo.svg"
                  alt="homepage"
                  class="light-logo"
                  width="180px"
                />
              </b>
            
              <!--End Logo icon -->
            </a>
               


                            </li>
                           
                            <li class="nav-item search-box">
                               
                            </li>
                        </ul>
            
            <ul class="navbar-nav float-end">
          
                   <li class="nav-item dropdown">
                               
                                
                               
                                   
                                 
                       <asp:LinkButton ID="SignIn" class="form-control btn btn-primary submit px-3" runat="server" OnClick="SignIn_Click1">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-in-right" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0v-2z"></path>
  <path fill-rule="evenodd" d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"></path>
</svg>
                           SignIn</asp:LinkButton>  
                            
       
                                   
                               
                            </li>
             
            </ul>
          </div>
        </nav>
      </header>
    
      <aside class="left-sidebar" data-sidebarbg="skin5">
    
        <div class="scroll-sidebar">
         
          <nav class="sidebar-nav">
            <ul id="sidebarnav" class="pt-4">
              <li class="sidebar-item">
                <a
                  class="sidebar-link waves-effect waves-dark sidebar-link"
                  href="HomePage.aspx"
                  aria-expanded="false"
                  ><i class="mdi mdi-view-dashboard"></i
                  ><span class="hide-menu">Home Page</span></a
                >
              </li>
              <li class="sidebar-item">
                <a
                  class="sidebar-link waves-effect waves-dark sidebar-link"
                  href="Chart.aspx"
                  aria-expanded="false"
                  ><i class="mdi mdi-chart-bar"></i
                  ><span class="hide-menu">Charts</span></a
                >
              </li>
              
              <li class="sidebar-item">
                <a
                  class="sidebar-link waves-effect waves-dark sidebar-link"
                  href="Table.aspx"
                  aria-expanded="false"
                  ><i class="mdi mdi-border-inside"></i
                  ><span class="hide-menu">Tables</span></a
                >
              </li>
             
              
            </ul>
          </nav>
         
        </div>
    
      </aside>
     
      <div class="page-wrapper">
        
        <div class="container-fluid">

         

            <div class="form-group">
                            
                            
                           
                        </div>
         

          <!-- Chart-1 -->
             <div class="divScroll">
     <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-Turning-series chart</h5>
                  <div id="placeholder" style="height: 400px">
                    
                           
         <asp:Chart ID="Chart2" runat="server" class="fa-chart-pie"  width="720px" height="390px" DataSourceID="SqlDataSource1" >
                         

                      
                      <Series>
                          <asp:Series Name="Series1" XValueMember="CampName" YValueMembers="Column1"></asp:Series>
                      </Series>
                      <ChartAreas>
                          <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                      </ChartAreas>
                      <Titles>
                          <asp:Title Font="Microsoft Sans Serif, 12pt, style=Bold" Name="Occupation " Text="live in Camp ">
                          </asp:Title>
                      </Titles>
                  </asp:Chart>
        

                    
                 
                   
        

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DataCollectionConnectionString %>" SelectCommand="select count(FamilyID),CampName from Family   group by CampName"></asp:SqlDataSource>
        

                    
                     
                   

                  </div>
                
                </div>
              </div>
            </div>
          </div>
   </div>
          <!-- End Charts -->


               <br />
              <br />
            <br />

            <footer class="footer text-center">

         © Copyright 2022 , Data Collection Tool . All Rights Reserved 

        </footer> 
          
        </div>
       
      </div>
     
    </div>
  
    <script src="../assets/libs/jquery/dist/jquery.min.js"></script>
  
    <script src="../assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    
    <script src="../assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="../assets/extra-libs/sparkline/sparkline.js"></script>
   
    <script src="../dist/js/waves.js"></script>
   
    <script src="../dist/js/sidebarmenu.js"></script>
  
    <script src="../dist/js/custom.min.js"></script>
   
    <script src="../assets/libs/chart/matrix.interface.js"></script>
    <script src="../assets/libs/chart/excanvas.min.js"></script>
    <script src="../assets/libs/flot/jquery.flot.js"></script>
    <script src="../assets/libs/flot/jquery.flot.pie.js"></script>
    <script src="../assets/libs/flot/jquery.flot.time.js"></script>
    <script src="../assets/libs/flot/jquery.flot.stack.js"></script>
    <script src="../assets/libs/flot/jquery.flot.crosshair.js"></script>
    <script src="../assets/libs/chart/jquery.peity.min.js"></script>
    <script src="../assets/libs/chart/matrix.charts.js"></script>
    <script src="../assets/libs/chart/jquery.flot.pie.min.js"></script>
    <script src="../assets/libs/flot.tooltip/js/jquery.flot.tooltip.min.js"></script>
    <script src="../assets/libs/chart/turning-series.js"></script>
    <script src="../dist/js/pages/chart/chart-page-init.js"></script>
      </form>
  </body>
</html>
