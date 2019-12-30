<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DropDwonList02.aspx.cs" Inherits="WebApplication_SDK_10_2019.ASP_Controls.DropDwonList02" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                <asp:ListItem Text="Select Choice ." Value="-1" ></asp:ListItem>
                <asp:ListItem Text="Apple" Value="1" ></asp:ListItem>
                <asp:ListItem Text="Fig" Value="2"></asp:ListItem>
                <asp:ListItem Text="Orange" Value="3"></asp:ListItem>
                <asp:ListItem Text="Banana" Value="4"></asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Button ID="btnChoice" runat="server" Text="Click me" OnClick="btnChoice_Click" />
            <br />
            <br />
            <asp:Label ID="LabelResult" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
