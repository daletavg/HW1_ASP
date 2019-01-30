<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HW1_ASP.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css"/> 
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script> 
</head>
<body>
    <form id="form1" runat="server" method="POST">
        <div>
            <asp:Table ID="Table1" runat="server" style="border-collapse: separate;border-spacing:0.5em; margin: 0; position: absolute; top: 50%;left: 50%;margin-right: -50%;transform: translate(-50%, -50%)">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label1" runat="server" Text="Login: "></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="enter_login" class="form-control" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Label ID="Label2" runat="server" Text="Password: "></asp:Label>
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox type="password" ID="password" class="form-control" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        
                     </asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="Login" runat="server" Text="Log in" class="btn btn-success" OnClick="LoginOn" style="float: right;margin: 0.1em"/>
                        <asp:Button ID="Registrate" runat="server" Text="Registrate" class="btn btn-success" PostBackUrl="Regestration.aspx" style="float:right;margin: 0.1em"/>
                        
                    </asp:TableCell>
                   
                </asp:TableRow>
            </asp:Table>
            <asp:PlaceHolder ID="alerts" runat="server"></asp:PlaceHolder>
        </div>
    </form>
</body>
</html>
