using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    /// This code creates an instance of the SiteUser class.
    /// It then assigns the user-entered registration information to the class properties.
    protected void Button1_Click(object sender, EventArgs e)
    {
        SiteUser su = new SiteUser();
        su.LastName = txtLastName.Text;
        su.FirstName = txtFirstName.Text;
        su.BirthDay = txtBirthday.Text;
        su.Email = txtEmail.Text;

        ///This code creates a session variable that stores the above class for use on other pages.
        ///It then redirects to the second page.
        Session["siteuser"] = su;
        Response.Redirect("Default2.aspx");
    }
}