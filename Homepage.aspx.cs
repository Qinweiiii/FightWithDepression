using System;
using System.Collections.Generic;
using System.Drawing.Text;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SWE2109537_ES
{
    public partial class Homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void StartButton_Click(object sender, EventArgs e)
        {
            // The click function enables the homepage to redirect to testpage
            Response.Redirect("TestPage.aspx");
        }

        protected void JoinButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("PatientPage.aspx");
        }
    }
}