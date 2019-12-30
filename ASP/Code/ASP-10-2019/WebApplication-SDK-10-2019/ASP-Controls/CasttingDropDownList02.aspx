<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CasttingDropDownList02.aspx.cs" Inherits="WebApplication_SDK_10_2019.ASP_Controls.CasttingDropDownList02" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div >
                <div >
                    <asp:DropDownList ID="DropDownListContinents" runat="server" DataTextField="name" DataValueField="Id" AutoPostBack="True" OnSelectedIndexChanged="DropDownListContinents_SelectedIndexChanged"></asp:DropDownList>
                </div>
                <div class="rs-select2 js-select-simple select--no-search">
                    <asp:DropDownList ID="DropDownListCountries" runat="server" DataTextField="name" DataValueField="country_id" AutoPostBack="True" OnSelectedIndexChanged="DropDownListCountries_SelectedIndexChanged"></asp:DropDownList>
                </div>
                <div class="rs-select2 js-select-simple select--no-search">
                    <asp:DropDownList ID="DropDownListCities" runat="server" DataTextField="Name" DataValueField="ID"></asp:DropDownList>
                    
                </div>
            </div>
        </div>
    </form>
</body>
</html>
