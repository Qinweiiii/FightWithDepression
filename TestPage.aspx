<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestPage.aspx.cs" Inherits="SWE2109537_ES.TestPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fight With Depression</title>  
    <link href="Styles/testpageStyle.css" rel="stylesheet" />  
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel runat="server" Height="1350px" BackColor="WhiteSmoke">
                <%--Header Part: to show website name; Same as the one in Homepage--%>
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

                <%--Questionnaire Form--%>
                <asp:Panel runat="server" CssClass="questionnaire">
                    <asp:Panel runat="server" class="quizTitle" ForeColor="#654ea3">
                        Patient Health Questionnaire (PHQ-9)
                    </asp:Panel>
                    <asp:Panel runat="server" CssClass="titleQuestion">
                        Over the last 2 weeks, how often have you been bothered by any of the following problems?
                    </asp:Panel>
                    <table class="table">
                        <thead>
                            <%--Table head row content setting--%>
                            <tr class="titleRow">
                                <th class="firstCol">Problems</th>
                                <th class="otherCol">Not at all</th>
                                <th class="otherCol">Several days</th>
                                <th class="moreCol">Over half the days</th>
                                <th class="otherCol">Nearly everyday</th>
                            </tr>
                        </thead>
                        <%--The first row will be the question content, the other row will be the frequency options--%>
                        <%--To put each option inside the table units, using the radiobutton locked with groupname instead of directly used rediobutton list--%>
                        <%--To identify the adjacent two columns, the odd number column will be in darker purple and even number column will be in lighter purple--%>
                        <tbody>
                            <tr class="row_type1">
                                <td>Little interest or pleasure in doing things*</td>
                                <td>
                                    <asp:RadioButton ID="interest_0" runat="server" GroupName="interest"/> 0
                                </td>
                                <td>
                                    <asp:RadioButton ID="interest_1" runat="server" GroupName="interest"/> 1
                                </td>
                                <td>
                                    <asp:RadioButton ID="interest_2" runat="server" GroupName="interest"/> 2
                                </td>
                                <td>
                                    <asp:RadioButton ID="interest_3" runat="server" GroupName="interest"/> 3
                                </td>
                            </tr>

                            <tr class="row_type2">
                                <td>Feeling down, depressed or hopeless*</td>
                                <td>
                                    <asp:RadioButton ID="down_0" runat="server" GroupName="down"/> 0
                                </td>
                                <td>
                                    <asp:RadioButton ID="down_1" runat="server" GroupName="down"/> 1
                                </td>
                                <td>
                                    <asp:RadioButton ID="down_2" runat="server" GroupName="down"/> 2
                                </td>
                                <td>
                                    <asp:RadioButton ID="down_3" runat="server" GroupName="down"/> 3
                                </td>
                            </tr>

                            <tr class="row_type1">
                                <td>Trouble falling or staying asleep, or sleeping too much*</td>
                                <td>
                                    <asp:RadioButton ID="sleep_0" runat="server" GroupName="sleep"/> 0
                                </td>
                                <td>
                                    <asp:RadioButton ID="sleep_1" runat="server" GroupName="sleep"/> 1
                                </td>
                                <td>
                                    <asp:RadioButton ID="sleep_2" runat="server" GroupName="sleep"/> 2
                                </td>
                                <td>
                                    <asp:RadioButton ID="sleep_3" runat="server" GroupName="sleep"/> 3
                                </td>
                            </tr>

                            <tr class="row_type2">
                                <td>Feeling tired or having little energy*</td>
                                <td>
                                    <asp:RadioButton ID="tired_0" runat="server" GroupName="tired"/> 0
                                </td>
                                <td>
                                    <asp:RadioButton ID="tired_1" runat="server" GroupName="tired"/> 1
                                </td>
                                <td>
                                    <asp:RadioButton ID="tired_2" runat="server" GroupName="tired"/> 2
                                </td>
                                <td>
                                    <asp:RadioButton ID="tired_3" runat="server" GroupName="tired"/> 3
                                </td>
                            </tr>

                            <tr class="row_type1">
                                <td>Poor appetite or overeating*</td>
                                <td>
                                    <asp:RadioButton ID="eat_0" runat="server" GroupName="eat"/> 0
                                </td>
                                <td>
                                    <asp:RadioButton ID="eat_1" runat="server" GroupName="eat"/> 1
                                </td>
                                <td>
                                    <asp:RadioButton ID="eat_2" runat="server" GroupName="eat"/> 2
                                </td>
                                <td>
                                    <asp:RadioButton ID="eat_3" runat="server" GroupName="eat"/> 3
                                </td>
                            </tr>

                            <tr class="row_type2">
                                <td>Feeling bad about yourself- or that you are a failure or have let yourself <br />or your family down*</td>
                                <td>
                                    <asp:RadioButton ID="fail_0" runat="server" GroupName="fail"/> 0
                                </td>
                                <td>
                                    <asp:RadioButton ID="fail_1" runat="server" GroupName="fail"/> 1
                                </td>
                                <td>
                                    <asp:RadioButton ID="fail_2" runat="server" GroupName="fail"/> 2
                                </td>
                                <td>
                                    <asp:RadioButton ID="fail_3" runat="server" GroupName="fail"/> 3
                                </td>
                            </tr>

                            <tr class="row_type1">
                                <td>Trouble concentrating on things, such as reading the newspaper or watching television*</td>
                                <td>
                                    <asp:RadioButton ID="distraction_0" runat="server" GroupName="distration"/> 0
                                </td>
                                <td>
                                    <asp:RadioButton ID="distraction_1" runat="server" GroupName="distration"/> 1
                                </td>
                                <td>
                                    <asp:RadioButton ID="distraction_2" runat="server" GroupName="distration"/> 2
                                </td>
                                <td>
                                    <asp:RadioButton ID="distraction_3" runat="server" GroupName="distration"/> 3
                                </td>
                            </tr>

                            <tr class="row_type2">
                                <td>Moving or speaking so slowly that people could have noticed? Or the opposite 
                                    being so <br /> fidgety or restless that you have been moving around a lot more than usual*</td>
                                <td>
                                    <asp:RadioButton ID="slow_0" runat="server" GroupName="slow"/> 0
                                </td>
                                <td>
                                    <asp:RadioButton ID="slow_1" runat="server" GroupName="slow"/> 1
                                </td>
                                <td>
                                    <asp:RadioButton ID="slow_2" runat="server" GroupName="slow"/> 2
                                </td>
                                <td>
                                    <asp:RadioButton ID="slow_3" runat="server" GroupName="slow"/> 3
                                </td>
                            </tr>

                            <tr class="row_type1">
                                <td>Thoughts that you would be better off dead or of hurting yourself in some way*</td>
                                <td>
                                    <asp:RadioButton ID="dead_0" runat="server" GroupName="dead"/> 0
                                </td>
                                <td>
                                    <asp:RadioButton ID="dead_1" runat="server" GroupName="dead"/> 1
                                </td>
                                <td>
                                    <asp:RadioButton ID="dead_2" runat="server" GroupName="dead"/> 2
                                </td>
                                <td>
                                    <asp:RadioButton ID="dead_3" runat="server" GroupName="dead"/> 3
                                </td>
                            </tr>

                        </tbody>
                    </table>

                    <%--Functional Health Question Part--%>
                    <asp:Panel runat="server" CssClass="funcPart">
                        <asp:Label runat="server" class="funcQuestion" Text="If you checked off any problems, how difficult have these problems made it for you to do your work, 
                            take care of things at home, or get along with other people? ">
                        </asp:Label>
                        <br /> <br />
                        <%--To ensure that user is only able to choose one option, radio button is used here--%>
                        <asp:RadioButton runat="server" Text=" Not difficult at all" ID="fn" class="funcOption" GroupName="function"/>
                        <asp:RadioButton runat="server" Text=" Somewhat difficult" ID="fs" class="funcOption" GroupName="function"/>
                        <asp:RadioButton runat="server" Text=" Very difficult" ID="fv" class="funcOption" GroupName="function"/>
                        <asp:RadioButton runat="server" Text=" Extremely difficult" ID="fe" class="funcOption" GroupName="function"/>
                    </asp:Panel>
                    
                    <br />
                    <%--If user clicks the "Submit" button, the answers will be submitted for result calculation--%>
                    <%--But if user doesn't complete all questions, a message will pop out for him/her to know and fill in the unfilled one--%>
                    <asp:Button runat="server" Text="Submit My PHQ-9 Test" class="submitButton" OnClick="SubmitButton_Click" />
                    <asp:Label runat="server" ID="checkMsg" CssClass="checkMsg" Text="" ForeColor="Red"></asp:Label>
                    <br />
                    <asp:Label runat="server" ID="result" Text=""></asp:Label>
                    
                </asp:Panel>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
