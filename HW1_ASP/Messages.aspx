<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Messages.aspx.cs" Inherits="HW1_ASP.Messages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            

            <asp:TextBox ID="messsage_text" runat="server" Width="30em"></asp:TextBox>
            <asp:Button ID="message_send" runat="server" Text="Button" />
            <br/>
            <asp:PlaceHolder ID="msgs" runat="server"></asp:PlaceHolder>
        </div>
    </form>
</body>
</html>
