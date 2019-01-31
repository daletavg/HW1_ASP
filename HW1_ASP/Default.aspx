<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HW1_ASP.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
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
