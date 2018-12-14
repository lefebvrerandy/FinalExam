/*  Name:           Randy Lefebvre & Bence Karner
 *  Program:        Web Design - PROG2000
 *  Description:    This file is the code behind Page3.aspx. This holds all the methods and ajax methods for Page3.aspx
 *                  to work. Methods in here include: LoadSessionVariables, Two button clicking events (one confirm, one cancel),
 *                  and a redirect to page4
 */

using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final
{

    public partial class Page3 : System.Web.UI.Page
    {

        /// <summary>
        /// Start up and load the session variables
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
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
            CustomerFirst.Text = firstName;
            CustomerLast.Text = lastName;
            CustomerOrder.Text = pizzaList;
        }

        /// <summary>
        /// The Confirm button click. Sleeps for 3 seconds so that the UpdateProgress can be displayed
        /// then calls the method redirectToPage4();
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ConfirmBtn_Click(object sender, EventArgs e)
        {
            Thread.Sleep(3000);
            Session["orderStatus"] = "Confirmed";

            redirectToPage4();
        }

        /// <summary>
        /// The Cancel button click. Sleeps for 3 seconds so that the UpdateProgress can be displayed
        /// then calls the method redirectToPage4();
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void CancelBtn_Click(object sender, EventArgs e)
        {
            Thread.Sleep(3000);
            Session["orderStatus"] = "Cancelled";

            redirectToPage4();
        }

        /// <summary>
        /// A simple method to redirect the user to Page4. The Order Status screen.
        /// </summary>
        protected void redirectToPage4()
        {
            //Server.Transfer("Page1.aspx");
            Response.Redirect("Page4.aspx");
        }
    }
}