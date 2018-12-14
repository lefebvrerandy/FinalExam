using System;
namespace Final
{
    public partial class Default : System.Web.UI.Page
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

    }//class
}//namespace


