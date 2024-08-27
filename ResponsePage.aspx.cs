using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SWE2109537_ES
{
    public partial class ResponsePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BackHome(object sender, EventArgs e)
        {
            Response.Redirect("Homepage.aspx");
        }
    }
}