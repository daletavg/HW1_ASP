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
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>

            <nav class="navbar navbar-dark bg-dark">
                <span class="navbar-text">
                    Hello, <span runat="server" id="name_usr"></span>.
                </span>
                <asp:Button class="btn btn-secondary" ID="exit_user" runat="server" Text="Exit" style="float: right" OnClick="exit_user_OnClick" />
            </nav>
            
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
         <ContentTemplate>
            <div class="input-group mb-3" style="margin-top: 0.5em ">
                <asp:TextBox type="text" ID="my_message" class="form-control" aria-describedby="basic-addon2" runat="server" ></asp:TextBox>
                <div class="input-group-append">
                    <asp:Button class="btn btn-outline-secondary" ID="send_message" runat="server" OnClick="send_message_OnClick" Text="Send" />
                </div>
            </div>
            </ContentTemplate>
        </asp:UpdatePanel>
            
            
            
            
         
            <asp:UpdatePanel ID="UpdatePanel21" runat="server">
                <ContentTemplate>
                    <div id="addTable" runat="server"></div>
                    <asp:Timer ID="Timer1" OnTick="Timer1_OnTick" Interval="1000" runat="server"></asp:Timer>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
