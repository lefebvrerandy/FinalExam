using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final
{
    public partial class Page4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadSessionVariables();
        }

        /// <summary>
        /// Load the users session variables into the global values
        /// </summary>
        private void LoadSessionVariables()
        {
            string firstName = Convert.ToString(Session["sessionFirstName"]);
            string lastName = Convert.ToString(Session["sessionlastName"]);

            string pizzaList = Convert.ToString(Session["pizzaIngredients"]);
            CustomerFirst.Text = firstName;
            CustomerLast.Text = lastName;
            CustomerOrder.Text = pizzaList;
        }
    }
}