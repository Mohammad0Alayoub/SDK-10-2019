<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StateCondation.aspx.cs" Inherits="WebApplication_SDK_10_2019.StatesMangemnet.StateCondation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%--<label>HTML : </label>
            <input type="text" placeholder="text here" />
            <br />
            <input type="button" value="click me" />
            <br /><br />--%>
            <asp:Label ID="Label1" runat="server" Text="ASP : "></asp:Label>
            <asp:TextBox ID="TextBox1" placeholder="text here" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="click me" OnClick="Button1_Click" />
            
        </div>
    </form>
</body>
</html>
