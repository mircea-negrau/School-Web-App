<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="studentlogin.aspx.cs" Inherits="WebCatalog.studentlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        <br />
    </p>
    <div class="container">
        <div class="row">
            <div class="col-md-5 mx-auto">

                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="images/generaluser.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Student login</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">

                                <label>ID Student</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxUsername" runat="server" placeholder="ID Student"></asp:TextBox>
                                </div>

                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:Button type="button" ID="ButtonLogin" class="btn btn-primary btn-block btn-lg" runat="server" Text="Login" OnClick="ButtonLogin_Click" />
                                </div>

                                <div class="form-group">
                                    <a href="register.aspx" class="text-decoration-none">
                                        <input id="ButtonRegister" class="btn btn-secondary btn-block btn-lg" type="button" value="Register" /></a>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>

                <a href="login.aspx"><< Back to login</a>
                <p>
                    <br />
                </p>
            </div>
        </div>
    </div>

</asp:Content>
