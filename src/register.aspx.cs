using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebCatalog
{
    public partial class register : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //register click event
        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Write("<script>alert('Test');</script>"); 

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO registration_master_pending_tbl (full_name,submission_date,date_of_birth,classroom,letter,nationality,contact,email,full_address,status) values(@full_name,@submission,@dob,@classroom,@letter,@nationality,@contact,@email,@full_address,@status)", con);
                cmd.Parameters.AddWithValue("@full_name", TextBoxFullName.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", TextBoxBirthDate.Text.Trim());
                cmd.Parameters.AddWithValue("@submission", DateTime.Now);
                cmd.Parameters.AddWithValue("@classroom", DropDownListClassrooms.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@letter", DropDownListClassroomLetter.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@nationality", TextBoxNationality.Text.Trim());
                cmd.Parameters.AddWithValue("@contact", TextBoxContact.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBoxEmail.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", TextBoxAddress.Text.Trim());
                cmd.Parameters.AddWithValue("@status", "Pending");

                cmd.ExecuteNonQuery();
                con.Close();

            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}