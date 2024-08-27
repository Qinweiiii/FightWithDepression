<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResponsePage.aspx.cs" Inherits="SWE2109537_ES.ResponsePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Patient Page</title>
    <link href="Styles/responsepageStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel runat="server" class="container2">
                <asp:Label runat="server" CssClass="rspWords">
                    Your information has been upload and saved safely ! <br />
                    Thanks for trusting us thus to fill in the test and provide your information. <br />
                    You are welcome to reach us if you need any help and we are so willing to help. <br />
                    Please love and respect yourself, don't always blame yourself for having emotions. <br />
                    Have a happy life, looking forward to hearing good news from you! <br />
                </asp:Label>
                <img src="Images/rsp_img.jpg" style="transform: scale(0.2); position: relative; left: -20%; top: -33%;"/>
                <asp:Panel runat="server" Width="700px" Height="45px">
                    <asp:Button runat="server" ID="Button2" CssClass="patientPage" Text="Back to Home Page" OnClick="BackHome"/>
                </asp:Panel>
            </asp:Panel>
            <asp:Panel runat="server" class="container">
                <asp:Panel runat="server" Width="700px" Height="45px">
                    <asp:Button runat="server" ID="Button1" CssClass="patientPage" Text="Back to Home Page" OnClick="BackHome"/>
                </asp:Panel>
                <div class="countdown" style="z-index: 40;">
                    <img src="Images/loading.gif" style="transform: scale(2); position: absolute; left: 40%; top: 30%;"/>
                    <br />
                    <div style="font-family: Comic Sans MS, Comic Sans, cursive; font-size: 24px; font-weight: 600; text-shadow: 1px 1px 3px rgba(0,0,0,0.5); position: absolute; left: 30%; top: 65%;">
                        Uploading Your Information 
                        <span class="textBox">......</span>
                    </div>
                </div>
            </asp:Panel>
            <canvas id="Meteor" class="starsky"></canvas>
        </div>
    </form>

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

    <script>
        setTimeout(function () {
            const div1 = document.querySelector('.container');
            const div2 = document.querySelector('.container2');
            div1.style.opacity = 0;
            div2.style.opacity = 1;
        }, 6000);
    </script>

</body>
</html>
