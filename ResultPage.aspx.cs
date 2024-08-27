using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SWE2109537_ES
{
    public partial class ResultPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int sum = 0;
            String temp;
            String severity;
            String action;
            temp = Request.QueryString["sum"]; // To get the score from url
            sum = int.Parse(temp); // Change the score type from string to int for later value-comparison

            // Based on the range where the score locates in, depression severity and action to be taken is determined
            if (sum >= 0 && sum <= 4)
            {
                severity = "None-minimal";
                action = "Patient may not need depression treatment.";
            }
            else if (sum >= 5 && sum <= 9)
            {
                severity = "Mild";
                action = "Use clinical judgement about treatment, based on patient's duration of symptoms and functional impairment.";
            }
            else if (sum >= 10 && sum <= 14)
            {
                severity = "Moderate";
                action = "Use clinical judgement about treatment, based on patient's duration of symptoms and functional impairment.";
            }
            else if (sum >= 15 && sum <= 19)
            {
                severity = "Moderately severe";
                action = "Treat using antidepressants, psychotherapy or a combination of treatment.";
            }
            else
            {
                severity = "Severe";
                action = "Treat using antidepressants with or without psychotherapy.";
            }

            // Pass on the values of score, severity, action and duration into the 'Text' of corresponding asp items,
            // so that they can be located in appropriate position
            score.Text = sum.ToString();
            sev.Text = severity.ToString();
            act.Text = action.ToString();
            duration.Text = Request.QueryString["judge"];
        }

        protected void FormButton_Click(object sender, EventArgs e)
        {
            // The click function enables the homepage to redirect to testpage
            Response.Redirect("https://www.baidu.com");
        }

    }
}