using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submitForm_Click(object sender, EventArgs e)
    {
        lblResultsDisplay.Text = "<p><b>subject:</b><br>" + subjectMailMessage.Text + "<br><br><b>Message:</b><br>" + bodyMailMessage.Text + "</p>";
    }
}