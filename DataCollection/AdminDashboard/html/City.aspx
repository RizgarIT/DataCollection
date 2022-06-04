<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="City.aspx.cs" Inherits="DataCollection.AdminDashboard.html.City" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
 
    <meta name="viewport" content="width=device-width, initial-scale=1" />
   
    <meta name="robots" content="noindex,nofollow" />
    <title>Admin Dshboard</title>
    
  
    
    <link href="../assets/libs/flot/css/float-chart.css" rel="stylesheet" />
    
    <link href="../dist/css/StyleSheet1.css" rel="stylesheet" />
  
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



                                <a class="navbar-brand" href="Information_All_Refugees.aspx">
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
                <a
                  class="
                    nav-link
                    dropdown-toggle
                    text-muted
                    waves-effect waves-dark
                    pro-pic
                  "
                  href="#"
                  id="navbarDropdown"
                  role="button"
                  data-bs-toggle="dropdown"
                  aria-expanded="false"
                >
                  <img
                    src="../assets/images/users/1.jpg"
                    alt="user"
                    class="rounded-circle"
                    width="31"
                  />
                </a>
                <ul
                  class="dropdown-menu dropdown-menu-end user-dd animated"
                  aria-labelledby="navbarDropdown"
                >
                 
                  <div class="dropdown-divider"></div>


                   

                    <asp:LinkButton ID="Button2" class="fa fa-power-off me-1 ms-1 dropdown-item " runat="server"  OnClick="Button1_Click">
                        
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-door-closed" viewBox="0 0 16 16">
  <path d="M3 2a1 1 0 0 1 1-1h8a1 1 0 0 1 1 1v13h1.5a.5.5 0 0 1 0 1h-13a.5.5 0 0 1 0-1H3V2zm1 13h8V2H4v13z"/>
  <path d="M9 9a1 1 0 1 0 2 0 1 1 0 0 0-2 0z"/>
</svg>
                        Logout</asp:LinkButton>
                    
                 
                  <div class="dropdown-divider"></div>
                
                </ul>
              </li>


            </ul>
          </div>
        </nav>
      </header>
   

        <aside class="left-sidebar" data-sidebarbg="skin5">
        <!-- Sidebar scroll-->
        <div class="scroll-sidebar">
          <!-- Sidebar navigation-->
          <nav class="sidebar-nav">
            <ul id="sidebarnav" class="pt-4">
              <li class="sidebar-item">
                <a
                  class="sidebar-link waves-effect waves-dark sidebar-link"
                  href="Information_All_Refugees.aspx"
                  aria-expanded="false"
                  ><i class="mdi mdi-view-dashboard"></i
                  ><span class="hide-menu">Dashboard</span></a
                >
              </li>

                 <li class="sidebar-item">
                <a
                  class="sidebar-link waves-effect waves-dark sidebar-link"
                  href="UserManager.aspx"
                  aria-expanded="false"
                  ><i class="mdi mdi-border-inside"></i
                  ><span class="hide-menu">User Manager</span></a
                >
              </li>
                 

                 <li class="sidebar-item">
                <a
                  class="sidebar-link waves-effect waves-dark sidebar-link"
                  href="Camp.aspx"
                  aria-expanded="false"
                  ><i class="mdi mdi-receipt"></i
                  ><span class="hide-menu">Camp Manage</span></a
                >
              </li>

                    <li class="sidebar-item">
                <a
                  class="sidebar-link waves-effect waves-dark sidebar-link"
                  href="EducationManage.aspx"
                  aria-expanded="false"
                  ><i class="mdi mdi-blur-linear"></i
                  ><span class="hide-menu">Education Manage</span></a
                >
              </li>
  
                  <li class="sidebar-item">
                <a
                  class="sidebar-link waves-effect waves-dark sidebar-link"
                  href="City.aspx"
                  aria-expanded="false"
                  ><i class="mdi mdi-chart-bubble"></i
                  ><span class="hide-menu">City Manage</span></a
                >
              </li>

                
                  <li class="sidebar-item">
                <a
                  class="sidebar-link waves-effect waves-dark sidebar-link"
                  href="Country.aspx"
                  aria-expanded="false"
                  ><i class="mdi mdi-border-inside"></i
                  ><span class="hide-menu">Country Manage</span></a
                >
              </li>
             
              <li class="sidebar-item p-3">
                <a
                  href="UploadFile.aspx"
                
                  class="
                    w-100
                    btn btn-cyan
                    d-flex
                    align-items-center
                    text-white
                  "
                  ><i class="mdi mdi-cloud-download font-20 me-2"></i
                  ><span class="hide-menu">Upload File</span>
             </a
                >
              </li>
             
            </ul>
          </nav>
          <!-- End Sidebar navigation -->
        </div>
        
      </aside>
      <!-- ============================================================== -->
     
        <!-- Container fluid  -->
        <!-- ============================================================== -->
             <div class="page-wrapper">
   
        <div class="page-breadcrumb">
    
        </div>
        
        <!-- Container fluid  -->
        <!-- ============================================================== -->
     <div class="container-fluid">
          

            <div class="row">
            <!-- Column -->
            <div class="col-md-6 col-lg-3">
              <div class="card card-hover">
                <div class="box bg-cyan text-center">
                  <h1 class="font-light text-white">
                    <i class="mdi mdi-view-dashboard"></i>
                  </h1>
                  <h6 class="text-white"></h6>
                </div>
              </div>
            </div>
            <!-- Column -->
            <div class="col-md-6 col-lg-3">
              <div class="card card-hover">
                <div class="box bg-success text-center">
                  <h1 class="font-light text-white">
                    <i class="mdi mdi-chart-areaspline"></i>
                  </h1>
                  <h6 class="text-white"></h6>
                </div>
              </div>
            </div>
            <!-- Column -->
            <div class="col-md-6 col-lg-3">
              <div class="card card-hover">
                <div class="box bg-warning text-center">
                  <h1 class="font-light text-white">
                    <i class="mdi mdi-collage"></i>
                  </h1>
                  <h6 class="text-white"></h6>
                </div>
              </div>
            </div>
            <!-- Column -->
            <div class="col-md-6 col-lg-3">
              <div class="card card-hover">
                <div class="box bg-danger text-center">
                  <h1 class="font-light text-white">
                    <i class="mdi mdi-border-outside"></i>
                  </h1>
                  <h6 class="text-white"></h6>
                </div>
              </div>
            </div>
          </div>
            <br />
             <br />


          <!-- ============================================================== -->
       
                  <br />
                    
               
       




<asp:GridView ID="GridView1" class="table" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="3" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical" DataKeyNames="CityOFName" Width="652px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="CityID" HeaderText="City ID" SortExpression="CityID" />
        <asp:BoundField DataField="CityOFName" HeaderText="City OF Name" SortExpression="CityOFName" ReadOnly="True" />
    </Columns>
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
               </asp:GridView>
               <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DataCollectionConnectionString %>" DeleteCommand="DELETE FROM [CityOfOrigin] WHERE [CityOFName] = @original_CityOFName AND (([CityID] = @original_CityID) OR ([CityID] IS NULL AND @original_CityID IS NULL))" InsertCommand="INSERT INTO [CityOfOrigin] ([CityID], [CityOFName]) VALUES (@CityID, @CityOFName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [CityOfOrigin]" UpdateCommand="UPDATE [CityOfOrigin] SET [CityID] = @CityID WHERE [CityOFName] = @original_CityOFName AND (([CityID] = @original_CityID) OR ([CityID] IS NULL AND @original_CityID IS NULL))">
                   <DeleteParameters>
                       <asp:Parameter Name="original_CityOFName" Type="String" />
                       <asp:Parameter Name="original_CityID" Type="Int32" />
                   </DeleteParameters>
                   <InsertParameters>
                       <asp:Parameter Name="CityID" Type="Int32" />
                       <asp:Parameter Name="CityOFName" Type="String" />
                   </InsertParameters>
                   <UpdateParameters>
                       <asp:Parameter Name="CityID" Type="Int32" />
                       <asp:Parameter Name="original_CityOFName" Type="String" />
                       <asp:Parameter Name="original_CityID" Type="Int32" />
                   </UpdateParameters>
          </asp:SqlDataSource>
              
            <br />
                
               
                 

        <br />
                 <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="645px" AutoGenerateRows="False" CellPadding="4" DataKeyNames="CityOFName" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" AllowPaging="True">
                     <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                     <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                     <EditRowStyle BackColor="#999999" />
                     <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                     <Fields>
                         <asp:BoundField DataField="CityID" HeaderText="CityID" SortExpression="CityID" />
                         <asp:BoundField DataField="CityOFName" HeaderText="CityOFName" ReadOnly="True" SortExpression="CityOFName" />
                         <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowInsertButton="True" />
                     </Fields>
                     <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                     <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                     <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
          </asp:DetailsView>

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
    
    <script src="../assets/libs/flot/excanvas.js"></script>
    <script src="../assets/libs/flot/jquery.flot.js"></script>
    <script src="../assets/libs/flot/jquery.flot.pie.js"></script>
    <script src="../assets/libs/flot/jquery.flot.time.js"></script>
    <script src="../assets/libs/flot/jquery.flot.stack.js"></script>
    <script src="../assets/libs/flot/jquery.flot.crosshair.js"></script>
    <script src="../assets/libs/flot.tooltip/js/jquery.flot.tooltip.min.js"></script>
    <script src="../dist/js/pages/chart/chart-page-init.js"></script>
      </form>
  </body>
</html>
