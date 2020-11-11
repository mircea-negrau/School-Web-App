<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="WebCatalog.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p><br /></p>
    <div class="container">
        <div class="row">
            <div class="col-md-5 mx-auto">
                
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="images/adminuser.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Teacher login</h3>
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

                                <label>ID Teacher</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxUsername" runat="server" placeholder="ID Teacher"></asp:TextBox>
                                </div>

                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:Button ID="ButtonLogin" class="btn btn-danger btn-block btn-lg" runat="server" Text="Login" OnClick="ButtonLogin_Click" />
                                </div>

                            </div>
                        </div>


                    </div>
                </div>

                <a href="login.aspx"><< Back to login</a>
                <p><br /></p>
            </div>
        </div>
    </div>

</asp:Content>
