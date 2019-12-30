<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CasttingDropDownList.aspx.cs" Inherits="WebApplication_SDK_10_2019.ASP_Controls.CasttingDropDownList" %>

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
                        <p>Containt : </p>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownListContiant" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="Id" AutoPostBack="True" OnSelectedIndexChanged="DropDownListContiant_SelectedIndexChanged">
                            <asp:ListItem Text="-- Select Contiant --" Value="0"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LocationConnectionString %>" SelectCommand="SELECT [Id], [name] FROM [continents]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>Country : </p>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownListCountry" runat="server" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="country_id" AutoPostBack="True" OnSelectedIndexChanged="DropDownListCountry_SelectedIndexChanged"></asp:DropDownList>

                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LocationConnectionString %>" SelectCommand="SELECT [country_id], [name] FROM [Countries] WHERE ([continent_code] = @continent_code)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownListContiant" Name="continent_code" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                    </td>
                </tr>
                <tr>
                    <td>
                        <p>City : </p>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownListCity" runat="server" DataSourceID="SqlDataSource3" DataTextField="Name" DataValueField="ID">
                        </asp:DropDownList>

                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:LocationConnectionString %>" SelectCommand="SELECT [ID], [Name] FROM [Cities] WHERE ([CountryID] = @CountryID)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownListCountry" Name="CountryID" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
