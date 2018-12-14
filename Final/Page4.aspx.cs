/*  Name:           Randy Lefebvre & Bence Karner
 *  Program:        Web Design - PROG2000
 *  Description:    This file is the code behind Page4.aspx. This holds all the methods and ajax methods for Page4.aspx
 *                  to work. Methods in here include: LoadSessionVariables
 */
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
        /// Load the users session variables Into the proper labels. This gets the users first and last name
        /// from Page1 (default.aspx) and displays them on screen. This gets the pizzaIngredients from Page2,
        /// from the users choosing, and also displays them on screen.
        /// </summary>
        private void LoadSessionVariables()
        {
            string firstName = Convert.ToString(Session["sessionFirstName"]);
            string lastName = Convert.ToString(Session["sessionlastName"]);

            string pizzaList = Convert.ToString(Session["pizzaIngredients"]);
            string status = Convert.ToString(Session["orderStatus"]);
            CustomerFirst.Text = firstName;
            CustomerLast.Text = lastName;
            CustomerOrder.Text = pizzaList;
            CustomerOrderStatus.Text = status;
        }
    }
}