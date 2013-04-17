using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ///This code retrieves the user's first name and last name from the get method and then displays a customized thank you message.
        string firstName = Request.QueryString["fName"];
        string lastName = Request.QueryString["lName"];

        lblThankYou.Text = "Thank you, " + firstName + " " + lastName + "!";
    }
}