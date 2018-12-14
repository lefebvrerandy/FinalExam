using System;
namespace Final
{
    public partial class Page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Default the names to a known string
            Session["sessionFirstName"] = "default";
            Session["sessionlastName"] = "default";
        }

        protected void EnterButtonClick(object sender, EventArgs e)
        {

            //Check if the user entered a blank first name
            if(firstNameTB.Text.Length > 0)
            {
                firstNameValidator.Attributes["style"] = "color:tomatoe;";
                firstNameValidator.Text = "Mandatory";


                //Check the characters into the text box to ensure they only include English chars
                InputValidator stringChecker = new InputValidator();
                bool inputValid = stringChecker.CheckForEnglishChars(firstNameTB.Text);
                if(inputValid == true)
                {
                    firstNameValidator.Attributes["style"] = "color:MediumSeaGreen;";
                    firstNameValidator.Text = "Accepted";


                    //Check if the user entered a blank last name
                    if (lastNameTB.Text.Length > 0)
                    {
                        lastNameValidator.Attributes["style"] = "color:tomatoe;";
                        lastNameValidator.Text = "Mandatory";

                        //Check the characters into the text box to ensure they only include English chars
                        inputValid = stringChecker.CheckForEnglishChars(lastNameTB.Text);
                        if (inputValid == true)
                        {
                            //Save the users name and transfer to the next page
                            string firstNameString = firstNameTB.Text;
                            string lastNameString = lastNameTB.Text;

                            Session["sessionFirstName"] = firstNameString;
                            Session["sessionlastName"] = lastNameString;
                            Response.Redirect("Page2.aspx");
                        }
                        else
                        {
                            lastNameValidator.Text = "Please avoid using non-English letters";
                            lastNameValidator.Attributes["style"] = "color:tomatoe;";
                        }

                    }
                    else
                    {
                        lastNameValidator.Text = "Please avoid entering a blank name";
                        lastNameValidator.Attributes["style"] = "color:tomatoe;";
                    }
                }
                else
                {
                    firstNameValidator.Text = "Please avoid using non-English letters";
                    firstNameValidator.Attributes["style"] = "color:tomatoe;";
                }
            }
            else
            {
                firstNameValidator.Text = "Please avoid entering a blank name";
                firstNameValidator.Attributes["style"] = "color:tomatoe;";
            }
        }
    }
}

