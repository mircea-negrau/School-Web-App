<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebCatalog.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <br />
    </p>

    <div class="container">
        <div class="row">
            <div class="col-md-7 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <div class="card text-center">
                                    <div class="card-body">
                                        <center>
                                            <img width="75px" src="images/teacher.png" />
                                            <p><hr /></p>
                                        </center>
                                        <h5 class="card-title">Are you a teacher?</h5>
                                        <p class="card-text">If you are a registered teacher, press the below button to login.</p>
                                        <a href="adminlogin.aspx" class="btn btn-primary">Teacher login</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="card text-center">
                                    <div class="card-body">
                                        <center>
                                            <img width="75px" src="images/tutor.png" />
                                            <p><hr /></p>
                                        </center>
                                        <h5 class="card-title">Are you a guardian?</h5>
                                        <p class="card-text">If you are a registered tutor, press the below button to login.</p>
                                        <a href="tutorlogin.aspx" class="btn btn-primary">Tutor login</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="card text-center">
                                    <div class="card-body">
                                        <center>
                                            <img width="75px" src="images/student.png" />
                                            <p><hr /></p>
                                        </center>
                                        <h5 class="card-title">Are you our student?</h5>
                                        <p class="card-text">If you are registered go to login, otherwise proceed to apply for registration.</p>
                                        <a href="studentlogin.aspx" class="btn btn-primary">Login</a>
                                        <a href="register.aspx" class="btn btn-primary">Apply</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                <a href="homepage.aspx"><< Back to home</a>
                <p>
                    <br />
                </p>
            </div>
        </div>
    </div>

</asp:Content>
