<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="DataCollection.register.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up Form</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="Style.css">
    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body style="background-image: url(images/image4.png);">

    <div class="main">

        <section class="signin">
           
            <div class="container">
                <div class="border-col">
                    <form runat="server">
                        <h2 class="create">Create account</h2>
                        <div class="form-group">
                            <asp:TextBox ID="username"  type="text" class="form-control" placeholder="Your Name" runat="server" required></asp:TextBox>
                            
                           
                        </div>
                        <div class="form-group">
                            <asp:TextBox  id="email"   type="email" class="form-control" placeholder="Email" runat="server" required></asp:TextBox>
                            
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="password"  type="Password" class="form-control" placeholder="Password" runat="server" required></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="confirmpassword"  type="password" class="form-control" placeholder="Repeat your password" runat="server" required></asp:TextBox>
                            
                        </div>
                         <div class="form-group">
                            <asp:TextBox type="text" id="telephone" placeholder="Telephone" class="form-control" runat="server" required></asp:TextBox>
                            
                        </div>
                        <div class="form-group">
                            <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                            <label for="agree-term" class="create1"><span><span></span></span>I agree all statements in.  <a href="#" class="create2"> Terms of service </a></label>
                        </div>
                        <div class="form-group">
                            <asp:Button  class="form-control btn btn-primary submit px-3" ID="Submit" Text="Create Account" runat="server" OnClick="Submit_Click" />
                            
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
