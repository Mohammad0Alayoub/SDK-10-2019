<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForTest.aspx.cs" Inherits="WebApplication_SDK_10_2019.ASP_Controls.ForTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <fieldset>
                <legend>Info</legend>
                <asp:Label ID="Labelname" runat="server" Text="NAme"></asp:Label>
                <asp:TextBox ID="TextBoxname" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Labelage" runat="server" Text="age"></asp:Label>
                <asp:TextBox ID="TextBoxage" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Labelemail" runat="server" Text="email"></asp:Label>
                <asp:TextBox ID="TextBoxemail" runat="server"></asp:TextBox>

                <br />
                <br />

                <asp:CheckBox ID="CheckBoxmale" runat="server"  Text="male"/>

                <asp:CheckBox ID="CheckBoxfemale" runat="server" Text="female" />
            </fieldset>
            <asp:Button ID="Button1" runat="server" Text="info me" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="Labelms" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
