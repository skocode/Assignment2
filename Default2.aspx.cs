using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ///After making sure that the session exists, 
        ///this code uses the session variable to populate the textboxes with the information the user entered on the previous page
        ///
        if (!IsPostBack)
        {
            if (Session["siteuser"] != null)
            {
                SiteUser su = (SiteUser)Session["siteuser"];
                txtCheckLastName.Text = su.LastName;
                txtCheckFirstName.Text = su.FirstName;
                txtCheckBirthday.Text = su.BirthDay;
                txtCheckEmail.Text = su.Email;
            }
            ///If the session does not exist, the user will be redirected to the first page.
            else
            {
                Response.Redirect("Default.aspx");
            }
        }
    }
    ///When the user clicks the confirm button, the site will redirect to page 3 and pass the values for First Name and Last Name using the Get method
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default3.aspx?lName=" + txtCheckLastName.Text + "&fName=" + txtCheckFirstName.Text);
    }
}