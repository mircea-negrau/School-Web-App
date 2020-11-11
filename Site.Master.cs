using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebCatalog
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"]==null)
                {
                    //--FALSE---
                    LinkButtonOwnInformation.Visible = false; //OwnInformation
                    LinkButtonOwnClassroom.Visible = false; //OwnClassroom
                    LinkButtonCoordinatingClassroom.Visible = false; //CoordinatingClassroom
                    LinkButtonDropDownClassroom.Visible = false; //DropDownClassroom

                    LinkButtonLogout.Visible = false; //Logout
                    LinkButtonHelloStudent.Visible = false; //Student
                    LinkButtonHelloTeacher.Visible = false; //Teacher
                    LinkButtonHelloTutor.Visible = false; //Tutor

                    //--TRUE---
                    LinkButtonLogin.Visible = true; //Login
                }
                else if (Session["role"].Equals("student"))
                {
                    //--FALSE---
                    LinkButtonCoordinatingClassroom.Visible = false; //CoordinatingClassroom
                    LinkButtonDropDownClassroom.Visible = false; //DropDownClassroom

                    LinkButtonLogin.Visible = false; //Login
                    LinkButtonHelloTeacher.Visible = false; //Teacher
                    LinkButtonHelloTutor.Visible = false; //Tutor

                    //--TRUE---
                    LinkButtonOwnInformation.Visible = true; //OwnInformation
                    LinkButtonOwnInformation.Text = Session["fullname"].ToString();
                    LinkButtonOwnClassroom.Visible = true; //OwnClassroom
                    LinkButtonOwnClassroom.Text = "Class " + Session["classroom"].ToString() + " " + Session["letter"].ToString();

                    LinkButtonLogout.Visible = true; //Logout
                    LinkButtonHelloStudent.Visible = true; //Student
                    LinkButtonHelloStudent.Text = "Hello " + Session["fullname"].ToString();
                }
                else if (Session["role"].Equals("teacher"))
                {
                    //--FALSE---
                    LinkButtonOwnInformation.Visible = false; //OwnInformation
                    LinkButtonOwnClassroom.Visible = false; //OwnClassroom

                    LinkButtonLogin.Visible = false; //Login
                    LinkButtonHelloTutor.Visible = false; //Tutor
                    LinkButtonHelloStudent.Visible = false; //Student

                    //--TRUE---
                    LinkButtonDropDownClassroom.Visible = true; //DropDownClassroom

                    LinkButtonLogout.Visible = true; //Logout
                    LinkButtonHelloTeacher.Visible = true; //Teacher
                    LinkButtonHelloTeacher.Text = "Hello " + Session["fullname"].ToString();

                    //--IF---
                    if (Session["coordinating"]!=null) //CoordinatingClassroom
                        LinkButtonCoordinatingClassroom.Visible = true; 
                    else
                        LinkButtonCoordinatingClassroom.Visible = false;
                }
                else if (Session["role"].Equals("guardian"))
                {
                    //--FALSE---
                    LinkButtonCoordinatingClassroom.Visible = false; //CoordinatingClassroom
                    LinkButtonDropDownClassroom.Visible = false; //DropDownClassroom

                    LinkButtonLogin.Visible = false; //Login
                    LinkButtonHelloTeacher.Visible = false; //Teacher
                    LinkButtonHelloStudent.Visible = false; //Student

                    //--TRUE---
                    LinkButtonOwnInformation.Visible = true; //OwnInformation
                    LinkButtonOwnClassroom.Visible = true; //OwnClassroom

                    LinkButtonLogout.Visible = true; //Logout
                    LinkButtonHelloTutor.Visible = true; //Tutor
                    LinkButtonHelloTutor.Text = "Hello " + Session["fullname"].ToString();
                }
            }
            catch
            {
                
            }
        }

        protected void LinkButtonLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("homepage.aspx");
        }
    }
}