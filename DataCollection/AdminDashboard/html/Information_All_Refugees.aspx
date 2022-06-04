<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Information_All_Refugees.aspx.cs" Inherits="DataCollection.AdminDashboard.html.Information_All_Refugees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    
    <meta name="viewport" content="width=device-width, initial-scale=1" />
   
    <meta name="robots" content="noindex,nofollow" />
    <title>Admin Dshboard</title>

    <style>
.divScroll {
overflow:scroll;
height:530px;
width:1250px;
}
</style>
   
    <link href="../assets/libs/flot/css/float-chart.css" rel="stylesheet" />
  
    <link href="../dist/css/StyleSheet1.css" rel="stylesheet" />
   <link href="../dist/css/styleinputt.css" rel="stylesheet" />
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
      
        <div class="scroll-sidebar">
          
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
         
        </div>
        
      </aside>
     
             <div class="page-wrapper">
    
        <div class="page-breadcrumb">
    
        </div>
      
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


        <div class="row">
 
           <div class="col-md-2 col-lg-3">
              <div class="growing-search">
                 <div class="input">
                      <asp:TextBox ID="TextBox1" runat="server"  placeholder="First Name or Last Name" Width="190px"></asp:TextBox>
                 </div>
              </div>

           </div>
            
              <asp:LinkButton ID="LinkButton2" class="btn btn-info" runat="server" Width="136px" style="border-radius: 13px"  OnClick="LinkButton2_Click"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
  <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
</svg>
                     Search</asp:LinkButton>

         </div>



              <br />  
            
         
            <br />
            <div class="divScroll">
<asp:GridView ID="GridView2"  class="table" runat="server" CellPadding="3" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="FamilyID" DataSourceID="SqlDataSource2">
                   <AlternatingRowStyle BackColor="#CCCCCC" />
                   <Columns>
                       <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                       <asp:BoundField DataField="FamilyID" HeaderText="FamilyID" InsertVisible="False" ReadOnly="True" SortExpression="FamilyID" />
                       <asp:BoundField DataField="FamilyMembers" HeaderText="FamilyMembers" SortExpression="FamilyMembers" />
                       <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                       <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                       <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" />
                       <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                       <asp:BoundField DataField="Service" HeaderText="Service" SortExpression="Service" />
                       <asp:BoundField DataField="CityOFName" HeaderText="CityOFName" SortExpression="CityOFName" />
                       <asp:BoundField DataField="CountryName" HeaderText="CountryName" SortExpression="CountryName" />
                       <asp:BoundField DataField="CampName" HeaderText="CampName" SortExpression="CampName" />
                       <asp:BoundField DataField="EducationName" HeaderText="EducationName" SortExpression="EducationName" />
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



                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DataCollectionConnectionString %>" DeleteCommand="DELETE FROM [Family] WHERE [FamilyID] = @original_FamilyID AND (([FamilyMembers] = @original_FamilyMembers) OR ([FamilyMembers] IS NULL AND @original_FamilyMembers IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([DateOfBirth] = @original_DateOfBirth) OR ([DateOfBirth] IS NULL AND @original_DateOfBirth IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Service] = @original_Service) OR ([Service] IS NULL AND @original_Service IS NULL)) AND (([CityOFName] = @original_CityOFName) OR ([CityOFName] IS NULL AND @original_CityOFName IS NULL)) AND (([CountryName] = @original_CountryName) OR ([CountryName] IS NULL AND @original_CountryName IS NULL)) AND (([CampName] = @original_CampName) OR ([CampName] IS NULL AND @original_CampName IS NULL)) AND (([EducationName] = @original_EducationName) OR ([EducationName] IS NULL AND @original_EducationName IS NULL))" InsertCommand="INSERT INTO [Family] ([FamilyMembers], [FirstName], [LastName], [DateOfBirth], [Gender], [Service], [CityOFName], [CountryName], [CampName], [EducationName]) VALUES (@FamilyMembers, @FirstName, @LastName, @DateOfBirth, @Gender, @Service, @CityOFName, @CountryName, @CampName, @EducationName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Family] WHERE (([FirstName] = @FirstName) or ([LastName] = @LastName))" UpdateCommand="UPDATE [Family] SET [FamilyMembers] = @FamilyMembers, [FirstName] = @FirstName, [LastName] = @LastName, [DateOfBirth] = @DateOfBirth, [Gender] = @Gender, [Service] = @Service, [CityOFName] = @CityOFName, [CountryName] = @CountryName, [CampName] = @CampName, [EducationName] = @EducationName WHERE [FamilyID] = @original_FamilyID AND (([FamilyMembers] = @original_FamilyMembers) OR ([FamilyMembers] IS NULL AND @original_FamilyMembers IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([DateOfBirth] = @original_DateOfBirth) OR ([DateOfBirth] IS NULL AND @original_DateOfBirth IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Service] = @original_Service) OR ([Service] IS NULL AND @original_Service IS NULL)) AND (([CityOFName] = @original_CityOFName) OR ([CityOFName] IS NULL AND @original_CityOFName IS NULL)) AND (([CountryName] = @original_CountryName) OR ([CountryName] IS NULL AND @original_CountryName IS NULL)) AND (([CampName] = @original_CampName) OR ([CampName] IS NULL AND @original_CampName IS NULL)) AND (([EducationName] = @original_EducationName) OR ([EducationName] IS NULL AND @original_EducationName IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_FamilyID" Type="Int32" />
                        <asp:Parameter Name="original_FamilyMembers" Type="Int32" />
                        <asp:Parameter Name="original_FirstName" Type="String" />
                        <asp:Parameter Name="original_LastName" Type="String" />
                        <asp:Parameter Name="original_DateOfBirth" Type="String" />
                        <asp:Parameter Name="original_Gender" Type="String" />
                        <asp:Parameter Name="original_Service" Type="String" />
                        <asp:Parameter Name="original_CityOFName" Type="String" />
                        <asp:Parameter Name="original_CountryName" Type="String" />
                        <asp:Parameter Name="original_CampName" Type="String" />
                        <asp:Parameter Name="original_EducationName" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="FamilyMembers" Type="Int32" />
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="LastName" Type="String" />
                        <asp:Parameter Name="DateOfBirth" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="Service" Type="String" />
                        <asp:Parameter Name="CityOFName" Type="String" />
                        <asp:Parameter Name="CountryName" Type="String" />
                        <asp:Parameter Name="CampName" Type="String" />
                        <asp:Parameter Name="EducationName" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="FirstName" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="TextBox1" Name="LastName" PropertyName="Text" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="FamilyMembers" Type="Int32" />
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="LastName" Type="String" />
                        <asp:Parameter Name="DateOfBirth" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="Service" Type="String" />
                        <asp:Parameter Name="CityOFName" Type="String" />
                        <asp:Parameter Name="CountryName" Type="String" />
                        <asp:Parameter Name="CampName" Type="String" />
                        <asp:Parameter Name="EducationName" Type="String" />
                        <asp:Parameter Name="original_FamilyID" Type="Int32" />
                        <asp:Parameter Name="original_FamilyMembers" Type="Int32" />
                        <asp:Parameter Name="original_FirstName" Type="String" />
                        <asp:Parameter Name="original_LastName" Type="String" />
                        <asp:Parameter Name="original_DateOfBirth" Type="String" />
                        <asp:Parameter Name="original_Gender" Type="String" />
                        <asp:Parameter Name="original_Service" Type="String" />
                        <asp:Parameter Name="original_CityOFName" Type="String" />
                        <asp:Parameter Name="original_CountryName" Type="String" />
                        <asp:Parameter Name="original_CampName" Type="String" />
                        <asp:Parameter Name="original_EducationName" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>



<asp:GridView ID="GridView1" class="table" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="FamilyID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="FamilyID" HeaderText="FamilyID" ReadOnly="True" SortExpression="FamilyID" InsertVisible="False" />
        <asp:BoundField DataField="FamilyMembers" HeaderText="FamilyMembers" SortExpression="FamilyMembers" />
        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
        <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" />
        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
        <asp:BoundField DataField="Service" HeaderText="Service" SortExpression="Service" />
        <asp:BoundField DataField="CityOFName" HeaderText="CityOFName" SortExpression="CityOFName" />
        <asp:BoundField DataField="CountryName" HeaderText="CountryName" SortExpression="CountryName" />
        <asp:BoundField DataField="CampName" HeaderText="CampName" SortExpression="CampName" />
        <asp:BoundField DataField="EducationName" HeaderText="EducationName" SortExpression="EducationName" />
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
                </div>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DataCollectionConnectionString %>" DeleteCommand="DELETE FROM [Family] WHERE [FamilyID] = @original_FamilyID AND (([FamilyMembers] = @original_FamilyMembers) OR ([FamilyMembers] IS NULL AND @original_FamilyMembers IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([DateOfBirth] = @original_DateOfBirth) OR ([DateOfBirth] IS NULL AND @original_DateOfBirth IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Service] = @original_Service) OR ([Service] IS NULL AND @original_Service IS NULL)) AND (([CityOFName] = @original_CityOFName) OR ([CityOFName] IS NULL AND @original_CityOFName IS NULL)) AND (([CountryName] = @original_CountryName) OR ([CountryName] IS NULL AND @original_CountryName IS NULL)) AND (([CampName] = @original_CampName) OR ([CampName] IS NULL AND @original_CampName IS NULL)) AND (([EducationName] = @original_EducationName) OR ([EducationName] IS NULL AND @original_EducationName IS NULL))" InsertCommand="INSERT INTO [Family] ([FamilyMembers], [FirstName], [LastName], [DateOfBirth], [Gender], [Service], [CityOFName], [CountryName], [CampName], [EducationName]) VALUES (@FamilyMembers, @FirstName, @LastName, @DateOfBirth, @Gender, @Service, @CityOFName, @CountryName, @CampName, @EducationName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Family]" UpdateCommand="UPDATE [Family] SET [FamilyMembers] = @FamilyMembers, [FirstName] = @FirstName, [LastName] = @LastName, [DateOfBirth] = @DateOfBirth, [Gender] = @Gender, [Service] = @Service, [CityOFName] = @CityOFName, [CountryName] = @CountryName, [CampName] = @CampName, [EducationName] = @EducationName WHERE [FamilyID] = @original_FamilyID AND (([FamilyMembers] = @original_FamilyMembers) OR ([FamilyMembers] IS NULL AND @original_FamilyMembers IS NULL)) AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([DateOfBirth] = @original_DateOfBirth) OR ([DateOfBirth] IS NULL AND @original_DateOfBirth IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Service] = @original_Service) OR ([Service] IS NULL AND @original_Service IS NULL)) AND (([CityOFName] = @original_CityOFName) OR ([CityOFName] IS NULL AND @original_CityOFName IS NULL)) AND (([CountryName] = @original_CountryName) OR ([CountryName] IS NULL AND @original_CountryName IS NULL)) AND (([CampName] = @original_CampName) OR ([CampName] IS NULL AND @original_CampName IS NULL)) AND (([EducationName] = @original_EducationName) OR ([EducationName] IS NULL AND @original_EducationName IS NULL))">
                   <DeleteParameters>
                       <asp:Parameter Name="original_FamilyID" Type="Int32" />
                       <asp:Parameter Name="original_FamilyMembers" Type="Int32" />
                       <asp:Parameter Name="original_FirstName" Type="String" />
                       <asp:Parameter Name="original_LastName" Type="String" />
                       <asp:Parameter Name="original_DateOfBirth" Type="String" />
                       <asp:Parameter Name="original_Gender" Type="String" />
                       <asp:Parameter Name="original_Service" Type="String" />
                       <asp:Parameter Name="original_CityOFName" Type="String" />
                       <asp:Parameter Name="original_CountryName" Type="String" />
                       <asp:Parameter Name="original_CampName" Type="String" />
                       <asp:Parameter Name="original_EducationName" Type="String" />
                   </DeleteParameters>
                   <InsertParameters>
                       <asp:Parameter Name="FamilyMembers" Type="Int32" />
                       <asp:Parameter Name="FirstName" Type="String" />
                       <asp:Parameter Name="LastName" Type="String" />
                       <asp:Parameter Name="DateOfBirth" Type="String" />
                       <asp:Parameter Name="Gender" Type="String" />
                       <asp:Parameter Name="Service" Type="String" />
                       <asp:Parameter Name="CityOFName" Type="String" />
                       <asp:Parameter Name="CountryName" Type="String" />
                       <asp:Parameter Name="CampName" Type="String" />
                       <asp:Parameter Name="EducationName" Type="String" />
                   </InsertParameters>
                   <UpdateParameters>
                       <asp:Parameter Name="FamilyMembers" Type="Int32" />
                       <asp:Parameter Name="FirstName" Type="String" />
                       <asp:Parameter Name="LastName" Type="String" />
                       <asp:Parameter Name="DateOfBirth" Type="String" />
                       <asp:Parameter Name="Gender" Type="String" />
                       <asp:Parameter Name="Service" Type="String" />
                       <asp:Parameter Name="CityOFName" Type="String" />
                       <asp:Parameter Name="CountryName" Type="String" />
                       <asp:Parameter Name="CampName" Type="String" />
                       <asp:Parameter Name="EducationName" Type="String" />
                       <asp:Parameter Name="original_FamilyID" Type="Int32" />
                       <asp:Parameter Name="original_FamilyMembers" Type="Int32" />
                       <asp:Parameter Name="original_FirstName" Type="String" />
                       <asp:Parameter Name="original_LastName" Type="String" />
                       <asp:Parameter Name="original_DateOfBirth" Type="String" />
                       <asp:Parameter Name="original_Gender" Type="String" />
                       <asp:Parameter Name="original_Service" Type="String" />
                       <asp:Parameter Name="original_CityOFName" Type="String" />
                       <asp:Parameter Name="original_CountryName" Type="String" />
                       <asp:Parameter Name="original_CampName" Type="String" />
                       <asp:Parameter Name="original_EducationName" Type="String" />
                   </UpdateParameters>
               </asp:SqlDataSource>
        <br />
            <br />
                 <asp:DetailsView CssClass="table" ID="DetailsView2" runat="server" AutoGenerateRows="False" CellPadding="4" Height="50px" style=" margin-right: 8px" Width="593px" AllowPaging="True" DataKeyNames="FamilyID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                     <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                     <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                     <EditRowStyle BackColor="#999999" />
                     <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                     <Fields>
                         <asp:BoundField DataField="FamilyID" HeaderText="FamilyID" ReadOnly="True" SortExpression="FamilyID" InsertVisible="False" />
                         <asp:BoundField DataField="FamilyMembers" HeaderText="Family Members" SortExpression="FamilyMembers" />
                         <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                         <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                         <asp:BoundField DataField="DateOfBirth" HeaderText="Date Of Birth" SortExpression="DateOfBirth" />
                         <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                         <asp:BoundField DataField="Service" HeaderText="Service" SortExpression="Service" />
                         <asp:BoundField DataField="CityOFName" HeaderText="City OF Name" SortExpression="CityOFName" />
                         <asp:BoundField DataField="CountryName" HeaderText="Country Name" SortExpression="CountryName" />
                         <asp:BoundField DataField="CampName" HeaderText="Camp Name" SortExpression="CampName" />
                         <asp:BoundField DataField="EducationName" HeaderText="Education Name" SortExpression="EducationName" />
                         <asp:CommandField ButtonType="Button" ShowInsertButton="True" />
                     </Fields>
                     <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
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
