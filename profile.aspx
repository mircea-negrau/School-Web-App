<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="WebCatalog.profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        <br />
    </p>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">

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
                                    <h4>Your profile</h4>
                                    <span>Account Status - </span>
                                        <asp:Label class="badge badge-pill badge-success" ID="Status" runat="server" Text="STATUS"></asp:Label>
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
                                <label>Full name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxFullName" runat="server" placeholder="Full name"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col">
                                <label>Date of birth</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxBirthDate" runat="server" placeholder="Birth date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Contact number</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxContact" runat="server" placeholder="Phone" TextMode="Phone"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col">
                                <label>Email</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxEmail" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Classroom</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownListClassrooms" runat="server">
                                        <asp:ListItem Text="Select" Value="Select" />
                                        <asp:ListItem Text="12" Value="12" />
                                        <asp:ListItem Text="11" Value="11" />
                                        <asp:ListItem Text="10" Value="10" />
                                        <asp:ListItem Text="9" Value="9" />
                                        <asp:ListItem Text="8" Value="8" />
                                        <asp:ListItem Text="7" Value="7" />
                                        <asp:ListItem Text="6" Value="6" />
                                        <asp:ListItem Text="5" Value="5" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Class Letter</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownListClassroomLetter" runat="server">
                                        <asp:ListItem Text="Select" Value="Select" />
                                        <asp:ListItem Text="A" Value="A" />
                                        <asp:ListItem Text="B" Value="B" />
                                        <asp:ListItem Text="C" Value="C" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxCity" runat="server" placeholder="City" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <label>Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxAddress" runat="server" placeholder="Full address" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <center>
                                        <asp:Label class="badge badge-pill badge-info" ID="LabelCredentials" runat="server" Text="Credentials"></asp:Label>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxID" runat="server" placeholder="ID" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxPassword" runat="server" placeholder="Password" TextMode="Password" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>New password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxNewPassword" runat="server" placeholder="Password" TextMode="Password" ReadOnly="False"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-8 mx-auto">
                                <center>
                                <div class="form-group">
                                    <asp:Button ID="ButtonUpdate" class="btn btn-primary btn-block btn-lg" runat="server" Text="Update" />
                                </div>
                                </center>
                            </div>
                        </div>
                    </div>

                    <a href="homepage.aspx"><< Back to home</a>
                    <p>
                        <br />
                    </p>
                </div>
            </div>

            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="images/books1.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Your details</h4>
                                    <asp:Label class="badge badge-pill badge-info" ID="LabelInfo" runat="server" Text="Info about your books"></asp:Label>
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
                                <asp:GridView class="table table-stiped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
</asp:Content>
