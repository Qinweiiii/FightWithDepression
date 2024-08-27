<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="SWE2109537_ES.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <title>Fight With Depression</title>  
    <link href="Styles/homepageStyle.css" rel="stylesheet" />  
</head>  
<body>  
    <form id="form1" runat="server">  
    <div>  
        <asp:Panel runat="server"  BackColor="WhiteSmoke">
            <%--Header Part: to show website name--%>
            <asp:Panel runat="server" class="header" Height="85px">
                <asp:Panel runat="server" Width="200px" CssClass="header-l">
                    <asp:Panel runat="server" Height="8px"></asp:Panel>
                    <h2 class="title">Fight With</h2>
                    <h2 class="title">Depression</h2>
                </asp:Panel>
                <asp:Panel runat="server" Width="700px" CssClass="header-r" Height="45px">
                    <h2>∞  Depression is Never One's Own Business  ∞</h2>
                </asp:Panel>
                <asp:Panel runat="server" Width="700px" Height="45px">
                    <asp:Button runat="server" ID="Button2" CssClass="patientPage" Text="Join Us" OnClick="JoinButton_Click"/>
                </asp:Panel>
            </asp:Panel>

            <%--Opening Part: to show related slogan--%>
            <asp:Panel runat="server" CssClass="opening" Height="575px">
                <asp:Label runat="server" CssClass="openWord" ForeColor="White">
                    <asp:Label runat="server" CssClass="openWord" Width="800px">
                        "Depression is the soul's way  of telling you to change something in your life, not to cut your own bangs."
                    </asp:Label>
                </asp:Label>
                <asp:Image runat="server" CssClass="openImage" ImageUrl="~/Images/openImage.png" Height="488px" Width="487px"/>
            </asp:Panel>

            <%--Middle Part: to show something related to Depressions and volunteer group--%>
            <asp:Panel runat="server" Height="80px">
                <h1 class="mlTitle" >——  Current Situation of Depression  ——</h1>
            </asp:Panel>
            <asp:Panel runat="server" Height="600px" Width="1500px">
                <%--Middle-left part is used to show a poster to invite more people to help depressionists together--%>
                <asp:Panel CssClass="middleLeft" runat="server" Height="600px" Width="700px">
                    <asp:Panel CssClass="ml_imageFrame" runat="server">
                        <asp:HyperLink runat="server" NavigateUrl="https://www.redcrescent.org.my/mhpss/">
                            <asp:Image runat="server" ImageUrl="~/Images/ml-image.png" Height="500px" Width="500px"/>
                        </asp:HyperLink>
                    </asp:Panel>
                </asp:Panel>
                <%--Middle-right part is used to record some important info about current depression situation--%>
                <asp:Panel CssClass="middleRight" runat="server" Height="600px" Width="600px">
                    <asp:Panel CssClass="ml_wordFrame" runat="server" Height="370px" Width="600px">
                        <h3 class="ml_word">An estimated 3.8% of the population experience depression, including 5% of adults (4% among men and 6% among women), 
                            and 5.7% of adults older than 60 years. Approximately 280 million people in the world have depression. 
                            Depression is about 50% more common among women than among men. 
                            Worldwide, more than 10% of pregnant women and women who have just given birth experience depression. 
                            More than 700 000 people die due to suicide every year. Suicide is the fourth leading cause of death in 15–29-year-olds.</h3>
                        <asp:HyperLink class="ml_link" runat="server" NavigateUrl="https://www.who.int/news-room/fact-sheets/detail/depression/?gad_source=1&gclid=Cj0KCQjw6uWyBhD1ARIsAIMcADrf6jPBZ8F1j05rJbunqr6hCRG1H3G0awouifLwXysn2tRmMVZD-AMaAkLFEALw_wcB">
                            More about the Depression in the world
                        </asp:HyperLink>
                    </asp:Panel>
                </asp:Panel>
            </asp:Panel>

            <%--Ending Part: to show something related to Depressions and volunteer group--%>
            <asp:Panel runat="server" Height="80px"  BackColor="WhiteSmoke">
                <h1 class="mlTitle" >——  Assess Your "Depression" State  ——</h1>
            </asp:Panel>
            <asp:Panel runat="server" Height="1000px" BackColor="WhiteSmoke">
                <asp:Panel runat="server" CssClass="quiz_container" BackColor="#202020" Width="1000px" Height="920px">
                    <asp:Image runat="server" class="dps_src" ImageUrl="~/Images/depression_source.jpg" Height="450px" Width="900px"/>
                    <asp:Panel runat="server" CssClass="quiz_invi" Width="860px" ForeColor="White">
                        Nowadays, people live under great pressure from academy, work, personal relationship and so on.
                        When a mountain of to-do work pour into people's lives, negative emotion also grow like a weed as a result.
                        Consequently, it's very normal for people to trap in depression emotion or even depression disorder. <br />
                        With the aim of letting more people know their mental health specifically, we provide you with a Patient Health Questionaire (PHQ-9), 
                        which consists of 9-question instrument to screen for presence and severity of depression. Based on the assessment result of the PHQ-9 quiz, 
                        we will try to offer some guidance or recommendation. Hope you will find it useful and get better!
                    </asp:Panel>
                    <%--If user wants to do the PHQ-9 test, can click the Button to start--%>
                    <asp:Button runat="server" ID="quizButton" CssClass="quizButton" Text="Start Your PHQ-9 Test" BackColor="#2F2F2F" ForeColor="White" OnClick="StartButton_Click"/>
                </asp:Panel>
            </asp:Panel>
        </asp:Panel>
        
        <asp:Panel runat="server" BackColor="WhiteSmoke" Height="30px"></asp:Panel>
    </div>  
    </form>    
</body>  
</html> 
