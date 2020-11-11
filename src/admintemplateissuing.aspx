<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="admintemplateissuing.aspx.cs" Inherits="WebCatalog.admintemplateissuing" %>
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
                                    <h4>Student details</h4>
                                </center>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="images/student.png" />
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
                                <label>Student ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxStudentID" runat="server" placeholder="ID"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Subject</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBoxSubject" runat="server" placeholder="Subject"></asp:TextBox>
                                        <asp:Button ID="ButtonUpdate" class="btn btn-primary" runat="server" Text="Go" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Student name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxStudentName" runat="server" placeholder="Student name" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            
                            <div class="col-md-6">
                                <label>Subject teacher</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxSubjectTeacher" runat="server" placeholder="Teacher" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-6">
                                <label>Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxDate" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                            
                            <div class="col-md-6">
                                <label>Grade</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxGrade" runat="server" placeholder="Grade" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6">
                                <asp:Button ID="ButtonAdd" class="btn btn-lg btn-primary btn-block" runat="server" Text="Add" />
                            </div>
                            <div class="col-6">
                                <asp:Button ID="ButtonEdit" class="btn btn-lg btn-danger btn-block" runat="server" Text="Remove" />
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


</asp:Content>
