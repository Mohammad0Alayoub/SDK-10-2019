<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication_SDK_10_2019.Work.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" DataTextField="name" DataValueField="country_id" runat="server"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:LocationConnectionString3 %>' SelectCommand="SELECT * FROM [Cities]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
