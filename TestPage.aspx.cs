using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SWE2109537_ES
{
    public partial class TestPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            // Submit Check: Validate if user fill in all blanks
            // If any question is not answered, the system will pop out "You haven't complete all questions!" message
            // and will not redirect to result page
            bool check = false;
            if ((!interest_0.Checked && !interest_1.Checked && !interest_2.Checked && !interest_3.Checked) ||
                (!down_0.Checked && !down_1.Checked && !down_2.Checked && !down_3.Checked) ||
                (!sleep_0.Checked && !sleep_1.Checked && !sleep_2.Checked && !sleep_3.Checked) ||
                (!tired_0.Checked && !tired_1.Checked && !tired_2.Checked && !tired_3.Checked) ||
                (!eat_0.Checked && !eat_1.Checked && !eat_2.Checked && !eat_3.Checked) ||
                (!fail_0.Checked && !fail_1.Checked && !fail_2.Checked && !fail_3.Checked) ||
                (!distraction_0.Checked && !distraction_1.Checked && !distraction_2.Checked && !distraction_3.Checked) ||
                (!slow_0.Checked && !slow_1.Checked && !slow_2.Checked && !slow_3.Checked) ||
                (!dead_0.Checked && !dead_1.Checked && !dead_2.Checked && !dead_3.Checked) ||
                (!fn.Checked && !fs.Checked && !fv.Checked && !fe.Checked))
            {
                checkMsg.Text = "  You haven't complete all questions!";
                check = false;
            }
            else { checkMsg.Text = ""; check = true; }

            int sum = 0; // to calculate the total PHQ-9 score
            int count = 0; // to calculate how much times that user choose at least "more than the half days"
            bool check_12 = false; // check whether user choose at least "more than the half days" in first two items
            String judge; // to record the duration of depression

            // General logic: if '0' option in each item is chosed, then score is added 0; '1' matches with add 1; '2' matches with add 2; '3' matches with add 3;
            if (interest_0.Checked) { sum += 0; }
            if (interest_1.Checked) { sum += 1; }
            if (interest_2.Checked)
            {
                sum += 2;
                check_12 = true; // '2' and '3' option is choosed - choose at least "more than the half days", any '2' and '3' options of first items is chosed then check_12 is true
                count++; // to calculate the total count of whole times user choose any items for '2' or '3' option
            }
            if (interest_3.Checked)
            {
                sum += 3;
                check_12 = true;
                count++;
            }

            if (down_0.Checked) { sum += 0; }
            if (down_1.Checked) { sum += 1; }
            if (down_2.Checked)
            {
                sum += 2;
                check_12 = true;
                count++;
            }
            if (down_3.Checked)
            {
                sum += 3;
                check_12 = true;
                count++;
            }

            if (sleep_0.Checked) { sum += 0; }
            if (sleep_1.Checked) { sum += 1; }
            if (sleep_2.Checked)
            {
                sum += 2;
                count++;
            }
            if (sleep_3.Checked)
            {
                sum += 3;
                count++;
            }

            if (tired_0.Checked) { sum += 0; }
            if (tired_1.Checked) { sum += 1; }
            if (tired_2.Checked)
            {
                sum += 2;
                count++;
            }
            if (tired_3.Checked)
            {
                sum += 3;
                count++;
            }

            if (eat_0.Checked) { sum += 0; }
            if (eat_1.Checked) { sum += 1; }
            if (eat_2.Checked)
            {
                sum += 2;
                count++;
            }
            if (eat_3.Checked)
            {
                sum += 3;
                count++;
            }

            if (fail_0.Checked) { sum += 0; }
            if (fail_1.Checked) { sum += 1; }
            if (fail_2.Checked)
            {
                sum += 2;
                count++;
            }
            if (fail_3.Checked)
            {
                sum += 3;
                count++;
            }

            if (distraction_0.Checked) { sum += 0; }
            if (distraction_1.Checked) { sum += 1; }
            if (distraction_2.Checked)
            {
                sum += 2;
                count++;
            }
            if (distraction_3.Checked)
            {
                sum += 3;
                count++;
            }

            if (slow_0.Checked) { sum += 0; }
            if (slow_1.Checked) { sum += 1; }
            if (slow_2.Checked)
            {
                sum += 2;
                count++;
            }
            if (slow_3.Checked)
            {
                sum += 3;
                count++;
            }

            if (dead_0.Checked) { sum += 0; }
            if (dead_1.Checked) { sum += 1; }
            if (dead_2.Checked)
            {
                sum += 2;
                count++;
            }
            if (dead_3.Checked)
            {
                sum += 3;
                count++;
            }

            // Duration judgement condition:
            // Major Depressive Disorder —— Choose "at least more than half the days" over 5 times and either choose item 1 or item 2 for at least more than the half days
            // Other Depressive Syndrome —— Choose "at least more than half the days" less than 5 times and either choose item 1 or item 2 for at least more than the half days
            // Just in Bad Mood —— Choose less than 5 "at least more than half the days" less than 5 times and frequency of first two items not high
            if (count >= 5 && check_12 == true) judge = "Major Depressive Disorder(MDD)";
            else if (count < 5 && check_12 == true) judge = "Other Depressive Syndrome";
            else judge = "Just in Bad Mood";

            // Only if user already fill in all blanks, then the page will redirect to the result page
            if (check == true)
            {
                Response.Redirect("ResultPage.aspx" + "?sum=" + sum + "&&judge=" + judge);
            }
        }
    }
}