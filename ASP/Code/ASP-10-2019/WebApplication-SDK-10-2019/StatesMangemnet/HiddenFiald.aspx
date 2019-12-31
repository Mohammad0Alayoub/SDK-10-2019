<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HiddenFiald.aspx.cs" Inherits="WebApplication_SDK_10_2019.StatesMangemnet.HiddenFiald" %>

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
                        <p>ID : </p>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxID" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>Name : </p>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>Gender : </p>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxGender" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>City : </p>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBoxCity" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnUpload" runat="server" Text="Uplaod" OnClick="btnUpload_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" />
                        <asp:HiddenField ID="HiddenField1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Labelmsj" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
