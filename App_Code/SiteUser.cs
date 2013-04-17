using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// This class stores the data that is contained in the registration form.
/// Sonya Ortis, 4/16/13
/// </summary>
public class SiteUser
{
    private string lastName;
    private string firstName;
    private string birthDay;
    private string email;

    public string Email
    {
        get { return email; }
        set { email = value; }
    }

    public string BirthDay
    {
        get { return birthDay; }
        set { birthDay = value; }
    }

    public string FirstName
    {
        get { return firstName; }
        set { firstName = value; }
    }
    
    public string LastName
    {
        get { return lastName; }
        set { lastName = value; }
    }
   
    public SiteUser()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}