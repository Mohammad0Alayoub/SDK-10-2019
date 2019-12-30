<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="isPostBack.aspx.cs" Inherits="WebApplication_SDK_10_2019.IsPostBack.isPostBack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="LabelFName" runat="server" Text="First Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxFName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LabelLName" runat="server" Text="Last Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxLName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LabelCity" runat="server" Text="City Name"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownListCity" runat="server">
                            <asp:ListItem Value="2">Mafraq</asp:ListItem>
                            <asp:ListItem Value="3" Text="Ajlon"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>

                    </td>
                    <td>
                        <asp:Button ID="submit" runat="server" Text="Register Employye" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
