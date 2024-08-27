<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientPage.aspx.cs" Inherits="SWE2109537_ES.PatientPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Patient Page</title>
    <link href="Styles/patientpageStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" style="height: 1600px;">
        <div>
            <asp:Panel runat="server" class="container">
                <asp:Panel runat="server" CssClass="formCont">
                    <asp:Panel runat="server" CssClass="formTitle">
                        <asp:Label runat="server" CssClass="titleCont">
                            Patient Personal Information
                        </asp:Label>
                    </asp:Panel>
                    
                    <%--A separation line to separate title and form table--%>
                    <div style="border: 1.5px solid whitesmoke; width: 85%; margin-left: 7%; margin-top: 20px; background-color: whitesmoke; opacity: 0.6; border-radius: 10%;"></div>
                    
                    <%--A table to allocate the contents of form--%>
                    <asp:Table id="Table1" runat="server" GridLines="None" HorizontalAlign="Justify" CssClass="formTable" >
                        
                        <%--First Row: Full Name--%>
                        <asp:TableRow>
                            <asp:TableCell CssClass="rowTitle">
                                Patient's Name<span style="color: red; opacity: 0.7; ">*</span>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="FirstName" runat="server" Placeholder="First" CssClass="inputFrame"></asp:TextBox>  
                                <asp:TextBox ID="LastName" runat="server" Placeholder="Last" CssClass="inputFrame"></asp:TextBox>  
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <%--Second Row: Gender--%>
                        <asp:TableRow>
                            <asp:TableCell CssClass="rowTitle">
                                Gender<span style="color: red; opacity: 0.7;">*</span>
                            </asp:TableCell>
                            <asp:TableCell>
                                <span style="color: black; font-size: 17px; font-weight: 600; height: 40px;">
                                    <asp:RadioButton ID="male" runat="server" GroupName="gender"></asp:RadioButton>Male 
                                </span>
                                <span style="color: black; font-size: 17px; font-weight: 600; height: 40px; margin-left: 10px;">
                                    <asp:RadioButton ID="female" runat="server" GroupName="gender"></asp:RadioButton>Female 
                                </span>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <%--Third Row: Phone Number--%>
                        <asp:TableRow>
                            <asp:TableCell CssClass="rowTitle">
                                Phone No<span style="color: red; opacity: 0.7;">*</span>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="phoneNo" runat="server" Text="60-1234567" CssClass="inputFrame"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <%--Fourth Row: Date of Birth & Age Generation--%>
                        <asp:TableRow>
                            <asp:TableCell CssClass="rowTitle">
                                Date of Birth<span style="color: red; opacity: 0.7;">*</span>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="year" runat="server" Placeholder="Year" CssClass="birth"></asp:TextBox>
                                <asp:TextBox ID="month" runat="server" Placeholder="Month" CssClass="birth"></asp:TextBox>
                                <asp:TextBox ID="day" runat="server" Placeholder="Day" CssClass="birth"></asp:TextBox>
                                <asp:Button runat="server" Text="AGE" CssClass="ageButton" OnClick="ageButton_Click"/>
                                <asp:Label ID="age" runat="server" Text="" CssClass="age"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <%--Fifth Row: Martial Status--%>
                        <asp:TableRow>
                            <asp:TableCell CssClass="rowTitle">
                                Martial Status<span style="color: red;">*</span>
                            </asp:TableCell>
                            <asp:TableCell>
                                <span style="color: black; font-size: 17px; font-weight: 600; height: 40px; margin-left: 10px;">
                                    <asp:RadioButton ID="single" runat="server" GroupName="martial"></asp:RadioButton>Single
                                </span>
                                <span style="color: black; font-size: 17px; font-weight: 600; height: 40px; margin-left: 10px;">
                                    <asp:RadioButton ID="married" runat="server" GroupName="martial"></asp:RadioButton>Married
                                </span>
                                <span style="color: black; font-size: 17px; font-weight: 600; height: 40px; margin-left: 10px;">
                                    <asp:RadioButton ID="divorced" runat="server" GroupName="martial"></asp:RadioButton>Divorced
                                </span>
                                <span style="color: black; font-size: 17px; font-weight: 600; height: 40px; margin-left: 10px;">
                                    <asp:RadioButton ID="widow" runat="server" GroupName="martial"></asp:RadioButton>Widow
                                </span>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <%--Sixth Row: Patients' Home Address--%>
                        <asp:TableRow>
                            <asp:TableCell CssClass="rowTitle">
                                Patient's Address
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="street" runat="server" Placeholder="Street Address" CssClass="inputFrame"></asp:TextBox>  
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="rowTitle"></asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="city" runat="server" Placeholder="City" CssClass="inputFrame"></asp:TextBox>  
                                <asp:TextBox ID="state" runat="server" Placeholder="State" CssClass="inputFrame"></asp:TextBox>  
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="rowTitle"></asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="postal" runat="server" Placeholder="Postal / Zip Code" CssClass="inputFrame"></asp:TextBox>  
                                
                                <%--DropDownList to choose the country--%>
                                <asp:DropDownList runat="server" ID="countryDropDown" CssClass="inputFrame">
                                    <asp:ListItem>Malaysia</asp:ListItem>
                                    <asp:ListItem>China</asp:ListItem>
                                    <asp:ListItem>Indonesia</asp:ListItem>
                                    <asp:ListItem>Tunisia</asp:ListItem>
                                </asp:DropDownList>  
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <%--Seven Row: Insurance--%>
                        <asp:TableRow>
                            <asp:TableCell CssClass="rowTitle">
                                Insurance Name<span style="color: red; opacity: 0.7;">*</span>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="insurance" runat="server" Text="" CssClass="inputFrame"></asp:TextBox>  
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <asp:Button runat="server" ID="formsubmit" OnClick="FormSubmit" Text="Submit & Save" CssClass="submitButton"/>
                    
                </asp:Panel>
            </asp:Panel>
            
            <%--The rigth-middle side cartoon character--%> 
            <div class="stardelo">
                <asp:Image runat="server" ImageUrl="~/Images/stardelo.png"/>
            </div>

            <%--To trigger the starsky part--%>
            <canvas id="Meteor" class="starsky"></canvas>
        </div>
    </form>

    <%--The code for generating the dynamical streaking meteors and shining stars--%>
    <script type="text/javascript">
      var starCount = 300;
      var context;
      function starInit() {
        var bg = document.querySelector("body");
        for (var i = 0; i < starCount; i++) {
          var star = document.createElement("div");
          star.classList.add("star");
          bg.appendChild(star);
        }
      }
      function starPosition() {
        var stars = document.querySelectorAll(".star");
        for (var i = 0; i < starCount; i++) {
          stars[i].style.left = Math.random() * window.innerWidth + "px";
          stars[i].style.top = Math.random() * window.innerHeight + "px";
          stars[i].style.animationDelay = Math.random() * 10 + "s";
        }
      }

      function init() {
        var Meteor = document.getElementById("Meteor");
        Meteor.width = window.innerWidth;
        Meteor.height = window.innerHeight;
        context = Meteor.getContext("2d");
      }

      function MeteorRain() {
        this.x = Math.random() * window.innerWidth;
        this.y = Math.random() * window.innerHeight;
        this.length = Math.ceil(Math.random() * 80 + 150);
        this.angle = 30;
        this.cos = Math.cos((this.angle * 3.14) / 180);
        this.sin = Math.sin((this.angle * 3.14) / 180);
        this.width = this.length * this.cos;
        this.height = this.length * this.sin;
        this.speed = Math.ceil(Math.random() + 0.5);
        this.shifting_x = this.speed * this.cos;
        this.shifting_y = this.speed * this.sin;

        this.countPos = function () {
          this.x = this.x - this.shifting_x;
          this.y = this.y + this.shifting_y;
        };
        this.draw = function () {
          context.save();
          context.beginPath();
          context.lineWidth = 1;
          context.globalAlpha = this.alpha;
          var line = context.createLinearGradient(
            this.x,
            this.y,
            this.x + this.width,
            this.y - this.height
          );
          line.addColorStop(0, "white");
          line.addColorStop(0.5, "grey");
            line.addColorStop(1.0, "#1C042A");
          context.strokeStyle = line;
          context.moveTo(this.x, this.y);
          context.lineTo(this.x + this.width, this.y - this.height);
          context.closePath();
          context.stroke();
          context.restore();
        };
        this.move = function () {
          var x = this.x + this.width - this.shifting_x;
          var y = this.y - this.height + this.shifting_y;
          context.clearRect(
            x - 3,
            y - 3,
            this.shifting_x + 5,
            this.shifting_y + 5
          );
          this.countPos();
          this.alpha -= 0.002;
          this.draw();
        };
      }
      function playRains() {
        for (var n = 0; n < rainCount; n++) {
          var rain = rains[n];
          rain.move();
          if (rain.y > window.innerHeight) {
            context.clearRect(
              rain.x,
              rain.y - rain.height,
              rain.width,
              rain.height
            )
            rains[n] = new MeteorRain();
          }
        }
        setTimeout("playRains()", 2);
      }
      var rainCount = 20;
      var rains = new Array();
      init();
      starInit();
      starPosition();
      for (var i = 0; i < rainCount; i++) {
        var rain = new MeteorRain();
        rain.draw();
        rains.push(rain);
      }
      playRains();
    </script>
</body>
</html>
