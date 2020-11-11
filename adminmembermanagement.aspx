<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="WebCatalog.adminmembermanagement" %>

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
                                    <h4>Account details</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="images/generaluser.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">

                            <div class="col-md-3">
                                <label>Student ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBoxSubject" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button ID="MemberManagement_ButtonUpdate" class="btn btn-primary" runat="server" Text="Go" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Full name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxStudentID" runat="server" placeholder="Name" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-5">
                                <label>Account status</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control mr-1" ID="TextBoxStudentName" runat="server" placeholder="Status" ReadOnly="True"></asp:TextBox>
                                        <asp:LinkButton ID="MemberManagement_ButtonAccept" class="btn btn-success mr-1" runat="server" Text="A"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                        <asp:LinkButton ID="MemberManagement_ButtonPending" class="btn btn-secondary mr-1" runat="server" Text="P"><i class="fas fa-clock"></i></asp:LinkButton>
                                        <asp:LinkButton ID="MemberManagement_ButtonDeny" class="btn btn-danger" runat="server" Text="D"><i class="fas fa-times-circle"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Classroom</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxClassroom" runat="server" placeholder="Classroom" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label>Class Letter</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxClassLetter" runat="server" placeholder="Letter" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <label>Coordinating teacher</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxCoordinator" runat="server" placeholder="Teacher" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Nationality</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxNationality" runat="server" placeholder="Nationality" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Date of birth</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxBirthDate" runat="server" placeholder="Birth date" TextMode="Date" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Contact number</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxContact" runat="server" placeholder="Phone" TextMode="Phone" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Email</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxEmail" runat="server" placeholder="Email" TextMode="Email" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxAddress" runat="server" placeholder="Full address" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-8 mx-auto">
                                <asp:Button ID="MemberManagement_ButtonDeleteStudent" class="btn btn-danger btn-block btn-lg" runat="server" Text="Delete" />
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
                                    <h4>Grade/absence template</h4>
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
    </div>
</asp:Content>
