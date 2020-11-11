using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCatalog
{
    public partial class adminlogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"] != null)
            {
                Response.Redirect("homepage.aspx");
            }
        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM teacher_table INNER JOIN user_table ON login_id=user_id WHERE login_id='" + TextBoxUsername.Text.Trim() + "' AND password='"+ TextBoxPassword.Text.Trim()+"'", con);
                SqlDataReader data_reader = cmd.ExecuteReader();
                if (data_reader.HasRows)
                {
                    while (data_reader.Read())
                    {
                        Session["id"] = data_reader.GetValue(0).ToString();
                        Session["fullname"] = data_reader.GetValue(1).ToString();
                        Session["role"] = "teacher";
                    }
                    Response.Redirect("homepage.aspx");
                }
                else
                {

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}