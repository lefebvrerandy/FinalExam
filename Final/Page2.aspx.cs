using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final
{
    public class JSONObject
    {
        public string fileName { get; set; }
        public string textContent { get; set; }
    }

    public partial class Page2 : System.Web.UI.Page
    {
        double total = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        /*
    Pizza = $10
    Pepperoni, Mushrooms, Green Olives, Green Peppers = $1 each
    Double Cheese = $1.50
*/

        // This method calls PizzaToppingSelected() to find out which checkboxes are checked.
        // It then adjusts the totals accordingly.
        protected void SelectedItems(object sender, EventArgs e)
        {

            string[] selected = pizzaToppingsSelected();
            int length = selected.Length;
            //Check which items have been selected
            int i;
            if (selected[4] == "Pizza")
            {
                total += 10;
                for (i = 0; i < length; i++)
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
                }
            Label1.Text = "$" + total.ToString("0.00");
            }
            else
            {
                Label1.Text = "Please select pizza before adding toppings.";
            }
        }


        // The method to find out how many options are selected. It fills the string array with the options
        // that are checked, and then returns the array to the calling method.
        private string[] pizzaToppingsSelected()
        {
            string[] selectedTopping = { "", "", "", "", "", ""};

            if (CheckBox1.Checked)
            {
                selectedTopping[0] = "Pepperoni";
            }
            if (CheckBox2.Checked)
            {
                selectedTopping[1] = "Mushrooms";
            }
            if (CheckBox3.Checked)
            {
                selectedTopping[2] = "Green Olives";
            }
            if (CheckBox4.Checked)
            {
                selectedTopping[3] = "Green Peppers";
            }
            if (CheckBox5.Checked)
            {
                selectedTopping[4] = "Pizza";
            }
            if (CheckBox6.Checked)
            {
                selectedTopping[5] = "Extra Cheese";
            }


            return selectedTopping;
        }
    }
}