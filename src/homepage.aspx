<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="WebCatalog.homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <img src="images/home-banner.jpg" class="img-fluid" />
    </section>

    <section>
        <div class="container">
            <p>
                <br />
            </p>
            <!-- Add spacing to the interface -->
            <div class="row">
                <div class="col-12">
                    <center>
                    <h2>Features of WebCatalog</h2>
                    <p><b>Our 3 primary features -</b></p>
                    </center>
                </div>
            </div>


            <div class="row">
                <div class="col-md-4">
                    <center>
                    <img width="150px" src="images/library.png" />
                    <h4>Teacher Assistant</h4>
                    <p class="text-justify">Easy management of grades and absences, GPA-calculator and overall information about their students.</p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                    <img width="150px" src="images/search-online.png" />
                    <h4>Digital Catalog Access</h4>
                    <p class="text-justify">Students, as well as their guardians, can easily access their data, see their full reports, grades and absences.</p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                    <img width="150px" src="images/digital-data.png" />
                    <h4>Digital </h4>
                    <p class="text-justify">Teachers can easily record, backup and edit information about their own students. All changes are kept in a log system.</p>
                    </center>
                </div>

            </div>
        </div>
        <p>
            <br />
        </p>
        <!-- Add spacing to the interface -->
        <p>
            <br />
        </p>
        <!-- Add spacing to the interface -->
    </section>

</asp:Content>
