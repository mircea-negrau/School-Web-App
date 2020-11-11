using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;

namespace WebCatalog
{
    public partial class highschool : System.Web.UI.Page
    {
        string selected;
        protected void Page_Load(object sender, EventArgs e)
        {
           try
            {
             /*   if (Session["role"] == null)
                {
                    Response.Redirect("homepage.aspx");
                }*/
            }
            catch
            {

            }
        }

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridViewClassroom, "Select$" + e.Row.RowIndex);
                e.Row.Attributes["onmouseover"] = "this.style.backgroundColor='#3185FC';this.style.color='white'";
                e.Row.Attributes["onmouseout"] = "this.style.backgroundColor='#F7F9F9';this.style.color='black'";
                selected = e.Row.Cells[0].Text;
                e.Row.ToolTip = "Click to select classroom '" + selected + "'.";

            }
        }

        protected void OnSelectedIndexChanged(object sender, EventArgs e)
        {
            Session["selected_classroom"] = GridViewClassroom.SelectedRow.Cells[0].Text; 
            Response.Redirect("classroom.aspx");
        }
    }
}