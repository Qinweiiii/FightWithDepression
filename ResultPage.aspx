<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResultPage.aspx.cs" Inherits="SWE2109537_ES.ResultPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Fight With Depression</title>
    <link href="Styles/resultpageStyle.css" rel="stylesheet" />
</head>
<body onload="myFunction()">
    <form id="form1" runat="server">
        <div>
            <asp:Panel runat="server" BackColor="WhiteSmoke" Height="1450px">
                <%--Header Part: to show website name, same as the previous 2 pages--%>
                <asp:Panel runat="server" class="header" Height="85px">
                    <asp:Panel runat="server" Width="200px" CssClass="header-l">
                        <asp:Panel runat="server" Height="8px"></asp:Panel>
                        <h2 class="title">Fight With</h2>
                        <h2 class="title">Depression</h2>
                    </asp:Panel>
                    <asp:Panel runat="server" Width="700px" CssClass="header-r" Height="45px">
                        <h2>∞  Depression is Never One's Own Business  ∞</h2>
                    </asp:Panel>
                </asp:Panel>

                <%--Result Body Part: to show the total scores of patients and related diagnosis info--%>
                <asp:Panel runat="server" CssClass="resultBody" Height="500px" Width="1200px">
                    <%--Speicifc score and a pie chart combination to visualize the score degree--%>
                    <asp:Panel runat="server" CssClass="pie_container" Height="400px" Width="400px">
                        <span>Your PHQ-9 score is: </span> <br /> <br />
                        <div class="pie hollow">
                            <asp:Label runat="server" ID="score" CssClass="span1" Text=""></asp:Label>
                            <span class="span2">/27</span>
                        </div>
                    </asp:Panel>

                    <%--Based on the score and options selected by users, will display some diagnosis results--%>
                    <asp:Panel runat="server" CssClass="result_container" Height="400px" Width="600px">
                        <span class="keyword">Duration: </span>
                        <asp:Label ID="duration" runat="server" Text="Major Depressive Disorder (MDD)"></asp:Label>
                        <br /> <br />
                        <span class="keyword">Depression Severity: </span>
                        <asp:Label ID="sev" runat="server" Text=""></asp:Label>
                        <br /> <br />
                        <span class="keyword">Suggested Action: </span> <br />
                        <asp:Label ID="act" runat="server" Text=""></asp:Label>
                        <br /><br />
                        <%--Except for the diagnosis result, some suggestions also provided for whole depression group, not specific for any duration patients--%>
                        <span class="keyword">Useful Advice: </span> <br />
                        <span>1. Try to do some activities that you like</span> <br />
                        <span>2. Keep in touch with your family or friends</span> <br />
                        <span>3. Do sports or exercise on a regular basis</span> <br />
                        <span>4. Keep regular diets and sleep habits</span> <br />
                        <span>5. Reduce the intake of alcohol or drugs</span> <br />
                        <span>6. Share your feelings with someone you trust</span> <br />
                        <span>7. Ask medical service providers for help</span> <br />
                    </asp:Panel>
                </asp:Panel>

                <%--Ending Part: to deliver good wishes for depression patients, along with one cute image--%>
                <asp:Panel runat="server" CssClass="ending" Width="700px">
                    <span class="endTitle">For those who are suffered from depression: </span> <br />
                    <span>
                        Maybe you are still trapped in mountains of bad mood, can't control tears our of eyes, have no interests for anyone or anything,
                        suffering great pain and are consumed a lot of energy from everyday's lives, hope that you can know that there are still many people 
                        who want you to get well and you are not alone.
                        Hope you will get well soon and continue to enjoy the beautiful world!
                    </span>
                    <br />
                    <asp:Panel runat="server" Height="30px"></asp:Panel>
                    <asp:Image runat="server" ImageUrl="~/Images/ending_image.jpg" Height="300px" Width="300px"/>
                </asp:Panel>
            </asp:Panel>
        </div>
    </form>

    <%--A JavaScriptfunction is used here to capture the score from the url of the page, and change the value in CSS file based on this value--%>
    <script>
        function getUrlParameter(name) {
            var urlParams = new URLSearchParams(window.location.search);
            return urlParams.get(name);
        }
        function myFunction() {
            var score = getUrlParameter('sum');
            var percent = (parseFloat(score) / 27) * 100 + '%';
            console.log("Percent = " + percent);
            document.documentElement.style.setProperty('--mid', percent);
        }
    </script>
</body>
</html>
