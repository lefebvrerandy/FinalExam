/*
*  FILE          : Default.aspx.cs
*  PROJECT       : PROG 2000 - Final Exam
*  PROGRAMMER    : Randy Lefebvre & Bence Karner 
*  DESCRIPTION   : 
*/



using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
namespace TextEditor
{

    public class JSONObject
    {
        public string fileName   { get; set; }
        public string textContent{ get; set; }
    }

    /*
    *   NAME    : Default
    *   PURPOSE : This class contains the code behind section of the Default.aspx web page. Methods are included for 
    *   displaying the systems file list upon loading the page, and for gathering the contents of the selected file
    *   in order to display them in the text box
    */
    public partial class Default : System.Web.UI.Page
    {

        /*  
         *  METHOD        : Page_Load
         *  DESCRIPTION   : This method is used to display the contents of the servers file list to the UI, once the page loads/refreshes
         *  PARAMETERS    : object sender: The object which initiated the event
         *                  EventArgs e: Contains the event data, in this case it is a page load event
         *  RETURNS       : void : Has no return
         */
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }//class
}//namespace


