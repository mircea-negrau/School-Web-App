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
    public partial class student : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"] != null)
            {
                if (Session["role"].Equals("student"))
                {
                    try
                    {
                        Get_Information();
                        Session["semester"] = "1";
                    }
                    catch
                    {
                        Response.Redirect("homepage.aspx");
                    }
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

        protected void Get_Information()
        {
            //Response.Write("<script>alert('Logged in.');</script>");
            TextBoxStudentID.Text = Session["id"].ToString();
            TextBoxStudentName.Text = Session["fullname"].ToString();
            TextBoxStudentClassroom.Text = Session["classroom"].ToString();
            TextBoxStudentClassLetter.Text = Session["letter"].ToString();
            TextBoxBirthDate.Text = Session["birth_date"].ToString();
            TextBoxGender.Text = Session["gender"].ToString();
            TextBoxAddress.Text = Session["address"].ToString();
            TextBoxPhone.Text = Session["phone"].ToString();
            TextBoxEmail.Text = Session["email"].ToString();
            try
            {
                TextBoxGuardian.Text = Session["guardian_id"].ToString();
            }
            catch
            {
            }
        }

        protected void DropDownListClassrooms_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = DropDownListClassrooms.SelectedIndex - 1;
            if (index != -1)
            {
                Session["semester"] = DropDownListSemester.SelectedItem.Text;
                UpdateTeacherName(index);
            }
            else
            {
                TextBoxSubjectTeacher.Text = "";
                Session.Remove("chosen_course");
            }
        }

        protected void DropDownListClassrooms_OnDataBound(object sender, EventArgs e)
        {
            DropDownListClassrooms.Items.Insert(0, "Select course");
        }

        protected void UpdateTeacherName(int index)
        {
            DataSourceSelectArguments args = new DataSourceSelectArguments();
            DataView dv = SqlDataSource1.Select(args) as DataView;
            DataTable dt = dv.ToTable() as DataTable;
            Session["chosen_course"] = dt.Rows[index][1].ToString();

            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT teacher_table.full_name FROM teacher_table INNER JOIN course_table ON teacher_table.teacher_id = course_table.teacher_id WHERE course_table.course_id=" + Session["chosen_course"].ToString(), con);
            SqlDataReader data_reader = cmd.ExecuteReader();
            if (data_reader.HasRows)
            {
                while (data_reader.Read())
                {
                    TextBoxSubjectTeacher.Text = data_reader.GetValue(0).ToString();
                }
            }
            else
            {
                TextBoxSubjectTeacher.Text = "";
            }
            data_reader.Close();
            con.Close();
        }

        protected void DropDownListSemester_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["semester"] = DropDownListSemester.SelectedItem.Text;
            int index = DropDownListClassrooms.SelectedIndex - 1;
            if (index != -1)
            {
                UpdateTeacherName(index);
            }
            else
            {
                TextBoxSubjectTeacher.Text = "";
                Session.Remove("chosen_course");
            }
        }
    }
}
