using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Data;
using System.IO;
using System.Xml.Linq;

namespace SWE2109537_ES
{
    public partial class PatientPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Threading.Thread.CurrentThread.CurrentCulture = System.Globalization.CultureInfo.CreateSpecificCulture("en-US");
        }

        protected void countryDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void ageButton_Click(object sender, EventArgs e)
        {
            if (year.Text != "Year")
            {
                String y = year.Text;
                int ageCount = 2024 - int.Parse(y);
                age.Text = ageCount.ToString();
            }
        }

        protected void FormSubmit(object sender, EventArgs e)
        {
            String gend = "Null";
            if (male.Checked) gend = "Male";
            else if (female.Checked) gend = "Female";

            String martialStat = "Null";
            if (single.Checked) martialStat = "Single";
            else if (married.Checked) martialStat = "Married";
            else if (divorced.Checked) martialStat = "Divorced";
            else if (widow.Checked) martialStat = "Widow";

            String country = countryDropDown.Text;

            String filePath = Server.MapPath("Patients.xml");

            XmlDocument xmlDoc = new XmlDocument();

            if (File.Exists(filePath))
            {
                // Loading Current XML File
                xmlDoc.Load(filePath);
                XmlElement root = xmlDoc.DocumentElement;

                // Create and add new patient element
                XmlElement newPatient = xmlDoc.CreateElement("Patient");
                newPatient.SetAttribute("FirstName", FirstName.Text);
                newPatient.SetAttribute("LastName", LastName.Text);
                newPatient.SetAttribute("Gender", gend);
                newPatient.SetAttribute("PhoneNo", phoneNo.Text);
                newPatient.SetAttribute("BirthDay", year.Text + "-" + month.Text + "-" + day.Text);
                newPatient.SetAttribute("Age", age.Text);
                newPatient.SetAttribute("MartialState", martialStat);
                newPatient.SetAttribute("Address", street.Text + ", " + city.Text + ", " + state.Text + ", " + postal.Text + ", " + country);
                newPatient.SetAttribute("Insurance", insurance.Text);
                root.AppendChild(newPatient);
            }
            else
            {
                // Create new XML file
                XmlElement root = xmlDoc.CreateElement("Patients");
                xmlDoc.AppendChild(root);

                XmlElement newPatient = xmlDoc.CreateElement("Patient");
                newPatient.SetAttribute("FirstName", FirstName.Text);
                newPatient.SetAttribute("LastName", LastName.Text);
                newPatient.SetAttribute("Gender", gend);
                newPatient.SetAttribute("PhoneNo", phoneNo.Text);
                newPatient.SetAttribute("BirthDay", year.Text + "-" + month.Text + "-" + day.Text);
                newPatient.SetAttribute("Age", age.Text);
                newPatient.SetAttribute("MartialState", martialStat);
                newPatient.SetAttribute("Address", street.Text + ", " + city.Text + ", " + state.Text + ", " + postal.Text + ", " + country);
                newPatient.SetAttribute("Insurance", insurance.Text);
                root.AppendChild(newPatient);
            }

            xmlDoc.Save(filePath);

            gridDataBind();

            Response.Redirect("ResponsePage.aspx");
        }

        public void gridDataBind()
        {
            DataSet ds = new DataSet();
            ds.ReadXml(Server.MapPath("Patients.xml"));
        }
    }
}