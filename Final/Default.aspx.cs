using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final
{
    public partial class Page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["sessionFirstName"] = "default";
            Session["sessionlastName"] = "default";
        }

        protected void EnterButtonClick(object sender, EventArgs e)
        {

            //string firstNameString = firstNameTB.Text;
            //string lastNameString = lastNameTB.Text;

            //Session["sessionFirstName"] = firstNameString;
            //Session["sessionlastName"] = lastNameString;
            Server.Transfer("Page2.aspx");
        }
    }
}