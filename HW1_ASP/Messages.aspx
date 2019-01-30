<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Messages.aspx.cs" Inherits="HW1_ASP.Messages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            

            <nav class="navbar navbar-dark bg-dark">
                <span class="navbar-text">
                    Hello, <span runat="server" id="name_usr"></span>.
                </span>
                <asp:Button class="btn btn-secondary" ID="exit_user" runat="server" Text="Exit" style="float: right" OnClick="exit_user_OnClick" />
            </nav>
            
            
            <div class="input-group mb-3" style="margin-top: 0.5em ">
                <asp:TextBox type="text" ID="my_message" class="form-control" aria-describedby="basic-addon2" runat="server" ></asp:TextBox>
                <div class="input-group-append">
                    <asp:Button class="btn btn-outline-secondary" ID="send_message" runat="server" Text="Send" />
                </div>
            </div>
            
            
            
            
            
           <%-- <asp:Timer ID="Timer1" OnTick="Timer1_OnTick" runat="server"></asp:Timer>--%>
           
                <asp:Table ID="Table1" class="table" runat="server">
                    <asp:TableHeaderRow>
                        <asp:TableHeaderCell >
                            <asp:Label ID="Label1" runat="server" Text="Login "></asp:Label>
                        </asp:TableHeaderCell>
                        <asp:TableHeaderCell>
                            <asp:Label ID="Label2" runat="server" Text="Message "></asp:Label>
                        </asp:TableHeaderCell>
                        <asp:TableHeaderCell>
                            <asp:Label ID="Label3" runat="server" Text="Date "></asp:Label>
                        </asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                </asp:Table>

        </div>
    </form>
</body>
</html>
