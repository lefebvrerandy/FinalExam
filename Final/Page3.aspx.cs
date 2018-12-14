﻿using System;
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

        protected void ConfirmBtn_Click(object sender, EventArgs e)
        {
            Thread.Sleep(3000);
            Session["orderStatus"] = "Confirmed";

            Server.Transfer("Page4.aspx");
        }

        protected void CancelBtn_Click(object sender, EventArgs e)
        {
            OrderLbl.Text = "Order CANCELLED...";
            Thread.Sleep(3000);
            Session["orderStatus"] = "Cancelled";


            Server.Transfer("Page4.aspx");
        }
    }
}