<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Work01.aspx.cs" Inherits="WebApplication_SDK_10_2019.ASP_Controls.Work01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <fieldset style="width: 600px">
                <legend>Basic Info</legend>
                <asp:Label ID="LabelName" runat="server" Text="Name : "></asp:Label>
                <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="LabelEmail" runat="server" Text="Email : "></asp:Label>
                <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
                <br />

                <asp:Label ID="LabelAge" runat="server" Text="Age : "></asp:Label>
                <asp:TextBox ID="TextBoxAge" runat="server"></asp:TextBox>
            </fieldset>
                <br />

            <fieldset style="width: 300px">
                <legend>Gender</legend>
                <asp:RadioButton ID="RadioButtonMale" runat="server" Text="male" GroupName="s1" TextAlign="Left" />
                <asp:RadioButton ID="RadioButtonFemale" runat="server" Text="female" GroupName="s1" TextAlign="Left" />
            </fieldset>
                <br />
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:Button ID="submit" runat="server" Text="infrom me" OnClick="submit_Click" />
            <br />
            <asp:Label ID="Labelmsj" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
