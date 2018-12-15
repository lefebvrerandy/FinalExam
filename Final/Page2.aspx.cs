/*  Name:           Randy Lefebvre & Bence Karner
 *  Program:        Web Design - PROG2000
 *  Description:    This file is the code behind Page2.aspx. This holds all the methods and ajax methods for Page2.aspx
 *                  to work. Methods in here include: SelectItems, pizzaToppingsSelected, CheckIfValid
 */
using System;
namespace Final
{
    public partial class Page2 : System.Web.UI.Page
    {
        double total = 0;
        string totalOrder = string.Empty;
        static string finalOrder = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["pizzaIngredients"] = "default";
            string userFirstname = Session["sessionFirstName"].ToString();
            Page2Greetings.Text = "Ciao " + userFirstname;
        }


        /// <summary>
        /// This method calls PizzaToppingSelected() to find out which check boxes are checked.
        /// It then adjusts the totals accordingly. Each topping are as followed:
        ///             Pizza = $10
        ///             Pepperoni, Mushrooms, Green Olives, Green Peppers = $1 each
        ///             Extra Cheese = $1.50
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void SelectedItems(object sender, EventArgs e)
        {

            string[] selected = pizzaToppingsSelected();
            int length = selected.Length;

            //Check which items have been selected
            int i;
            if (selected[0] == "Pizza")
            {
                total += 10;
                for (i = 1; i < length; i++)
                {
                    switch (selected[i])
                    {
                        case "Pepperoni":
                            total += 1;
                            break;
                        case "Mushrooms":
                            total += 1;
                            break;
                        case "Green Olives":
                            total += 1;
                            break;
                        case "Green Peppers":
                            total += 1;
                            break;
                        case "Extra Cheese":
                            total += 1.5;
                            break;
                        default:
                            break;
                    }

                    //These 3 if statements set up the totalOrder String values to display
                    // What, if any, ingredients have been selected
                    if (totalOrder == "")
                    {
                        totalOrder += "Pizza with, ";
                    }
                    if (totalOrder == "Pizza with, ")
                    {
                        totalOrder += selected[i];
                    }
                    else if (selected[i] != "")
                    {
                        totalOrder += ", " + selected[i];
                    }


                }

                // If no toppings are selected. Lets let the user know
                if (totalOrder == "Pizza with, ")
                {
                    totalOrder += "No Toppings selected";
                }
                Label2.Text = totalOrder;    
                Label1.Text = "$" + total.ToString("0.00");

            }
            else
            {
                totalOrder = "";
                Label2.Text = totalOrder;
                Label1.Text = "Please select pizza before adding toppings.";
            }

            finalOrder = totalOrder;
        }


        /// <summary>
        /// The method to find out how many options are selected. It fills the string array with the options
        /// that are checked, and then returns the array to the calling method.
        /// </summary>
        /// <returns>string[] - all toppings selected</returns>
        private string[] pizzaToppingsSelected()
        {
            string[] selectedTopping = { "", "", "", "", "", ""};

            if (CheckBox1.Checked)
            {
                selectedTopping[0] = "Pizza";
            }
            if (CheckBox2.Checked)
            {
                selectedTopping[1] = "Pepperoni";
            }
            if (CheckBox3.Checked)
            {
                selectedTopping[2] = "Mushrooms";
            }
            if (CheckBox4.Checked)
            {
                selectedTopping[3] = "Green Olives";
            }
            if (CheckBox5.Checked)
            {
                selectedTopping[4] = "Green Peppers";
            }
            if (CheckBox6.Checked)
            {
                selectedTopping[5] = "Extra Cheese";
            }


            return selectedTopping;
        }

        /// <summary>
        /// This method simply checks to see if at least the Pizza check box is selected. If so
        /// they can move on to the next page. If not, they cannot go to the next page
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void CheckIfValid(object sender, EventArgs e)
        {
            // The user at least has selected pizza.
            // Lets redirect them to the next page with their current order
            if (CheckBox1.Checked)
            {
                // Save contents of their pizza listing
                Session["pizzaIngredients"] = finalOrder;

                // Redirect to page 3
                Server.Transfer("Page3.aspx");
            }
            Label1.Text = "";
            Label2.Text = "Mamma mia, please select a pizza. We cannot make nothing...";
        }
    }
}