using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCatalog
{
    public partial class classroom : System.Web.UI.Page
    {
        protected string selected;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"] != null)
            {
                if (Session["role"].Equals("teacher"))
                {

                }
                else
                {
                    Response.Redirect("homepage.aspx");
                }
            }
            else
            {
                Response.Redirect("homepage.aspx");
            }
        }
    }
}