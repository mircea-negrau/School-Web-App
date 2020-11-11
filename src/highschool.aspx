<%@ Page Title="High School" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="highschool.aspx.cs" Inherits="WebCatalog.highschool" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="row no-gutters">
            <div class="col">
                <div class="table-responsive">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebCatalog19/20ConnectionString %>" SelectCommand="SELECT [classroom_id], [classroom], [letter], teacher_table.full_name, [building], [floor], [room_number], [students_count] FROM [classroom_table] INNER JOIN teacher_table ON classroom_table.teacher_id=teacher_table.teacher_id ORDER BY [classroom] DESC, [letter]"></asp:SqlDataSource>
                <asp:GridView class="table table-primary table-hover " ID="GridViewClassroom" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowDataBound="OnRowDataBound" OnSelectedIndexChanged="OnSelectedIndexChanged" DataKeyNames="classroom_id">
                    <Columns>
                        <asp:BoundField DataField="classroom_id" SortExpression="classroom_id" Visible="true" HeaderText="ID" ReadOnly="True" />
                        <asp:BoundField DataField="classroom" HeaderText="CLASS" SortExpression="classroom" />
                        <asp:BoundField DataField="letter" HeaderText="LETTER" SortExpression="letter" />
                        <asp:BoundField DataField="full_name" HeaderText="COORDINATOR" SortExpression="full_name" />
                        <asp:BoundField DataField="building" HeaderText="AREA" SortExpression="building" />
                        <asp:BoundField DataField="floor" HeaderText="FLOOR" SortExpression="floor" />
                        <asp:BoundField DataField="room_number" HeaderText="ROOM" SortExpression="room_number" />
                        <asp:BoundField DataField="students_count" HeaderText="STUDENTS" SortExpression="students_count" />
                    </Columns>
                    <HeaderStyle BackColor="#3185FC" ForeColor="White" BorderColor="#3185FC" BorderWidth="2px" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F9F9" BorderColor="White" />
                </asp:GridView>
            </div>
        </div>
</asp:Content>
