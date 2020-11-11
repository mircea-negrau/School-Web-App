<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="student.aspx.cs" Inherits="WebCatalog.student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <p>
        <br />
    </p>
    <div class="container-fluid" id="student_profile">
        <div class="row">
            <div class="col-md-4">
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
                                <center>
                                <asp:Label ID="Status" class="badge badge-pill badge-success" runat="server" Text="Active"></asp:Label>
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
                                    <asp:TextBox CssClass="form-control" ID="TextBoxStudentID" runat="server" placeholder="ID" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-5">
                                <label>Student name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxStudentName" runat="server" placeholder="Student name" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-2">
                                <label>Classroom</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxStudentClassroom" runat="server" placeholder="Class" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-2">
                                <label>Letter</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxStudentClassLetter" runat="server" placeholder="Letter" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <label>Birth date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxBirthDate" runat="server" placeholder="00/00/0000" TextMode="SingleLine" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <label>Gender</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxGender" runat="server" placeholder="M/F" TextMode="SingleLine" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxAddress" runat="server" placeholder="Address" TextMode="SingleLine" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Phone</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxPhone" runat="server" placeholder="Number" TextMode="SingleLine" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-5">
                                <label>Email</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxEmail" runat="server" placeholder="Email" TextMode="SingleLine" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <label>Guardian</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxGuardian" runat="server" placeholder="Unassigned" TextMode="SingleLine" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col-md-1"></div>
                            <div class="col-md-2">
                                <label>Semester</label>
                                    <div class="form-group">
                                        <asp:DropDownList ID="DropDownListSemester" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownListSemester_SelectedIndexChanged">
                                            <asp:ListItem Value="1" >1</asp:ListItem>
                                            <asp:ListItem Value="2">2</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                            </div>
                            <div class="col-md-4">
                                <label>Subject</label>
                                <div class="form-group">
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebCatalog19/20ConnectionString %>" SelectCommand="SELECT class_name, course_id FROM course_table WHERE (classroom_id = @classroom_id) ORDER BY class_name">
                                        <SelectParameters>
                                            <asp:SessionParameter Name="classroom_id" SessionField="classroom_id" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <asp:DropDownList class="form-control" ID="DropDownListClassrooms" DataSourceID="SqlDataSource1" runat="server" DataTextField="class_name" DataValueField="class_name" AutoPostBack="True" OnDataBound="DropDownListClassrooms_OnDataBound" OnSelectedIndexChanged="DropDownListClassrooms_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Subject teacher</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBoxSubjectTeacher" runat="server" placeholder="Teacher" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-1"></div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Grades</h4>
                                </center>
                            </div>
                            <div class="col">
                                <center>
                                    <h4>Absences</h4>
                                </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebCatalog19/20ConnectionString %>" SelectCommand="SELECT [grade], [date] FROM [grade_table] WHERE (([semester] = @semester) AND ([student_id] = @student_id) AND ([course_id] = @course_id)) ORDER BY [grade] DESC, [date] DESC">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="semester" SessionField="semester" Type="Int32" />
                                        <asp:SessionParameter Name="student_id" SessionField="id" Type="Int32" />
                                        <asp:SessionParameter Name="course_id" SessionField="chosen_course" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:GridView class="table table-hover" ID="GridViewGrade" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                                    <Columns>
                                        <asp:BoundField DataField="grade" HeaderText="grade" SortExpression="grade" />
                                        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" DataFormatString="{0:dd/MM/yyyy}"  />
                                    </Columns>
                                    <HeaderStyle BackColor="#3185FC" BorderColor="#3185FC" ForeColor="White" HorizontalAlign="Center" CssClass="bg-primary" />
                                    <RowStyle CssClass="table-primary" />
                                </asp:GridView>
                            </div>
                            <div class="col">
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:WebCatalog19/20ConnectionString %>" SelectCommand="SELECT [date], [status] FROM [absence_table] WHERE (([course_id] = @course_id) AND ([student_id] = @student_id) AND ([semester] = @semester))">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="course_id" SessionField="chosen_course" Type="Int32" />
                                        <asp:SessionParameter Name="student_id" SessionField="id" Type="Int32" />
                                        <asp:SessionParameter Name="semester" SessionField="semester" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:GridView class="table table-hover" ID="GridViewAbsence" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" DataFormatString="{0:dd/MM/yyyy}">
                                    <Columns>
                                        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date"  DataFormatString="{0:dd/MM/yyyy}" />
                                        <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                                    </Columns>
                                    <HeaderStyle BackColor="#3185FC" BorderColor="#3185FC" ForeColor="White" HorizontalAlign="Center" CssClass="bg-primary" />
                                    <RowStyle CssClass="table-primary" />
                                </asp:GridView>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
            <div class="col-md-4">
                <div class="row">
                    <div class="col">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                        <center>
                                    <h4>Overall situation</h4>
                                </center>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
