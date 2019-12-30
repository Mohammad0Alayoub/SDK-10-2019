<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BasicsControls01.aspx.cs" Inherits="WebApplication_SDK_10_2019.ASP_Controls.BasicsControls01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://www.solodev.com/assets/pagination/jquery.twbsPagination.js"></script>
    <link href="CSS/style01.css" rel="stylesheet" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('#pagination-demo').twbsPagination({
                totalPages: 7,
                // the current page that show on start
                startPage: 1,

                // maximum visible pages
                visiblePages: 7,

                initiateStartPageClick: true,

                // template for pagination links
                href: false,

                // variable name in href template for page number
                hrefVariable: '{{number}}',

                // Text labels
                first: 'First',
                prev: 'Previous',
                next: 'Next',
                last: 'Last',

                // carousel-style pagination
                loop: false,

                // callback function
                onPageClick: function (event, page) {
                    $('.page-active').removeClass('page-active');
                    $('#page' + page).addClass('page-active');
                },

                // pagination Classes
                paginationClass: 'pagination',
                nextClass: 'next',
                prevClass: 'prev',
                lastClass: 'last',
                firstClass: 'first',
                pageClass: 'page',
                activeClass: 'active',
                disabledClass: 'disabled'

            });

        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
                <div class="jumbotron page" id="page1">
                    <div class="container">
                        <asp:TextBox ID="TextBox1" runat="server" BorderStyle="NotSet" Enabled="True" Rows="3" TextMode="MultiLine" Text="123456"></asp:TextBox>
                    </div>
                </div>
                <div class="jumbotron page" id="page2">
                    <fieldset style="width: 300px">
                        <legend>Gender</legend>
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="male" GroupName="s1" />
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="female" GroupName="s1" />
                    </fieldset>

                </div>
                <div class="jumbotron page" id="page3">
                    <fieldset style="width: 300px">
                        <legend>Gender</legend>
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Male" />
                        <asp:CheckBox ID="CheckBox2" runat="server" Text="Female" />
                    </fieldset>
                </div>
                <div class="jumbotron page" id="page4">

                    <asp:Label ID="Label1" runat="server" Text="Hey ASP .NET"></asp:Label>

                </div>
                <div class="jumbotron page" id="page5">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.microsoft.com/en-jo/" ImageWidth="75px" ImageHeight="50px" Target="_top">Microsoft</asp:HyperLink>
                </div>
                <div class="jumbotron page" id="page6">
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                    <br />
                    <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
                </div>
                <div class="jumbotron page" id="page7">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/ASP-Controls/image/microsoft-80658_960_720.png" OnClick="ImageButton1_Click" Width="70px" Height="50px" />
                </div>
                <ul id="pagination-demo" class="pagination-lg pull-right"></ul>
            </div>
        </div>
    </form>
</body>
</html>
