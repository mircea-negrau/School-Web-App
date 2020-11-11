<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebCatalog.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p><br /></p>
    <div class="container">
        <div class="row">
            <div class="col-md-7 mx-auto">
                
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="images/generaluser.png" />
                                </center>
                            </div>
                        </div>

                        <p><br /></p>
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Student registration</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Full name*</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBoxFullName" runat="server" placeholder="Full name"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Date of birth*</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBoxBirthDate" runat="server" placeholder="Birth date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Classroom*</label>
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
                                <label>Class Letter*</label>
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
                                <label>Nationality*</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBoxNationality" runat="server" placeholder="Nationality" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Contact number</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBoxContact" runat="server" placeholder="Phone" TextMode="Phone"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Email</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBoxEmail" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Full Address*</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBoxAddress" runat="server" placeholder="Full address" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <p><br /></p>

                        <div class="form-group">
                            <asp:Button ID="ButtonSubmit" class="btn btn-success btn-block btn-lg" runat="server" Text="Submit" OnClick="ButtonSubmit_Click" />
                        </div>
                    </div>
                </div>

                <a href="login.aspx"><< Back to login</a>
                <p><br /></p>
            </div>
        </div>
    </div>

</asp:Content>
