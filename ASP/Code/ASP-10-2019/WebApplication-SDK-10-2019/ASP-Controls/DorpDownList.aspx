<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DorpDownList.aspx.cs" Inherits="WebApplication_SDK_10_2019.ASP_Controls.DorpDownList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Countries List</h2><br />
            <table>
                <tr>
                    <td>
                        <label>Country : </label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Value="0" Text="--- Select Country ---" ></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="ID"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LocationConnectionString %>" SelectCommand="SELECT [ID], [Name] FROM [Cities]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
