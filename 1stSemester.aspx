<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="1stSemester.aspx.cs" Inherits="_1stSemester" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid">

        <h1 class="text-center m-3">1st semester Student Attendance
        </h1>
        <hr />

        <div class="row">
            <asp:Label ID="lbl_date_1stsem" CssClass="col-2 fw-bold" runat="server" Text="Select Date of Attendance"></asp:Label>
            <br />
            <div class="col-3">
                <asp:TextBox ID="txt_date_1st_sem" runat="server" TextMode="Date" CssClass="form-control  border-3"></asp:TextBox>
            </div>
        </div>
        <hr />
        <div class="row">



            <asp:GridView ID="gridview_attendance" runat="server" OnRowCommand="gridview_attendance_RowCommand" OnRowUpdating="gridview_attendance_RowUpdating" OnRowDeleting="gridview_attendance_RowDeleting" CssClass="table table-responsive  table-primary table-striped table-bordered" AutoGenerateColumns="false">
                <Columns>
                    <asp:TemplateField HeaderText="StudentId">
                        <ItemTemplate>
                            <asp:Label ID="gv_studentid" runat="server" Text='<%# Eval("StudentId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="Enrollment No">
                        <ItemTemplate>
                            <asp:Label ID="gv_enroll" runat="server" Text='<%# Eval("EnrollmentNumber") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="NAME">
                        <ItemTemplate>
                            <asp:Label ID="gv_firstname" runat="server" Text='<%# Eval("FirstName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>



                    <asp:TemplateField HeaderText="Present / Absent">
                        <ItemTemplate>
                            <asp:DropDownList ID="ddl_present_absent" class="form-control" runat="server">
                                <asp:ListItem Text="Present" Value="1" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="Absent" Value="0"></asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="UPDATE">
                        <ItemTemplate>
                            <asp:Button CommandName="update" Text="save" CssClass="btn btn-primary" ID="gv_present_absent" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
            </asp:GridView>


        </div>
    </div>
</asp:Content>

