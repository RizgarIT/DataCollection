<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="DataCollection.LoginForm.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign In Form</title>

    
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="Style.css">
   
    <link rel="stylesheet" href="css/style.css">
</head>
<body style="background-image: url(images/image4.png);">

    <div class="main">

        <section class="signin">
           
            <div class="container1">
                <div class="border-col">
                    <form runat="server">
                        
                        <div class="form-group">
                            <asp:TextBox ID="username"  type="text" class="form-control" placeholder="Your Name" runat="server" CausesValidation="True" ></asp:TextBox>
                            
                           
                        </div>
                      
                        <div class="form-group">
                            <asp:TextBox ID="password"  type="password" class="form-control" placeholder="Password" runat="server" CausesValidation="True"></asp:TextBox>
                            
                           
                        </div>
                       
                         

                        
                        <div class="form-group">
                            <asp:Button  class="form-control btn btn-primary submit px-3" ID="Submit" Text="Sign In" runat="server" OnClick="Submit_Click" />
                        
                        </div>

                         <div class="form-group d-md-flex">
	            	<div class="form-group">
                            <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                            <label for="agree-term" class="create1"><span><span></span></span>Remember Me </label>
                        </div>
								<div class="w-50 text-md-right">
									<a href="#" style="color: #fff">Forgot Password</a>
								</div>
	            </div>
                         <p class="orsignin ">&mdash; Need an account ? Sign up! &mdash;
                        </p>
                         <div class="form-group">
                           
                            <asp:Button ID="Register" class="form-control btn btn-primary submit px-3" runat="server" Text="Registration" OnClick="Register_Click" />
                        </div>
                    </form>
                    
                </div>
            </div>
        </section>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
