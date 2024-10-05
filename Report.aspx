<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Report" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h3 class="text-center">1st Semester All Students List</h3>

    <div class="row">

        <asp:GridView ID="gridview_attendance" runat="server" OnRowCommand="gridview_attendance_RowCommand" OnRowUpdating="gridview_attendance_RowUpdating" OnRowDeleting="gridview_attendance_RowDeleting" CssClass="table table-responsive  table-primary table-hover table-bordered" AutoGenerateColumns="false">
            <Columns>
                <asp:TemplateField HeaderText="StudentId">
                    <ItemTemplate>
                        <asp:Label ID="gv_studentid" runat="server" Text='<%# Eval("StudentId") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="First Name">
                    <ItemTemplate>
                        <asp:Label ID="gv_firstname" runat="server" Text='<%# Eval("FirstName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                  <asp:TemplateField HeaderText="last Name">
                    <ItemTemplate>
                        <asp:Label ID="gv_lastname" runat="server" Text='<%# Eval("LastName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Enrollment No">
                    <ItemTemplate>
                        <asp:Label ID="gv_enroll" runat="server" Text='<%# Eval("EnrollmentNumber") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                   <asp:TemplateField HeaderText="Semester">
                    <ItemTemplate>
                        <asp:Label ID="gv_sem" runat="server" Text='<%# Eval("Semester") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="Email">
                    <ItemTemplate>
                        <asp:Label ID="gv_email" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                   <asp:TemplateField HeaderText="Phone Number">
                    <ItemTemplate>
                        <asp:Label ID="gv_phone" runat="server" Text='<%# Eval("PhoneNumber") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                   <asp:TemplateField HeaderText="Date Of Birth">
                    <ItemTemplate>
                        <asp:Label ID="gv_birth" runat="server" Text='<%# Eval("DateOfBirth") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Address">
                    <ItemTemplate>
                        <asp:Label ID="gv_address" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>


    </div>

    <h3 class="text-center">2nd Semester All Students List</h3>
     <div class="row">

        <asp:GridView ID="gridview_2nd_sem" runat="server" OnRowCommand="gridview_attendance_RowCommand" OnRowUpdating="gridview_attendance_RowUpdating" OnRowDeleting="gridview_attendance_RowDeleting" CssClass="table table-responsive  table-primary table-hover table-bordered" AutoGenerateColumns="false">
            <Columns>
                <asp:TemplateField HeaderText="StudentId">
                    <ItemTemplate>
                        <asp:Label ID="gv_studentid" runat="server" Text='<%# Eval("StudentId") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="First Name">
                    <ItemTemplate>
                        <asp:Label ID="gv_firstname" runat="server" Text='<%# Eval("FirstName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                  <asp:TemplateField HeaderText="last Name">
                    <ItemTemplate>
                        <asp:Label ID="gv_lastname" runat="server" Text='<%# Eval("LastName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Enrollment No">
                    <ItemTemplate>
                        <asp:Label ID="gv_enroll" runat="server" Text='<%# Eval("EnrollmentNumber") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                   <asp:TemplateField HeaderText="Semester">
                    <ItemTemplate>
                        <asp:Label ID="gv_sem" runat="server" Text='<%# Eval("Semester") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="Email">
                    <ItemTemplate>
                        <asp:Label ID="gv_email" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                   <asp:TemplateField HeaderText="Phone Number">
                    <ItemTemplate>
                        <asp:Label ID="gv_phone" runat="server" Text='<%# Eval("PhoneNumber") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                   <asp:TemplateField HeaderText="Date Of Birth">
                    <ItemTemplate>
                        <asp:Label ID="gv_birth" runat="server" Text='<%# Eval("DateOfBirth") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Address">
                    <ItemTemplate>
                        <asp:Label ID="gv_address" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>


    </div>


</asp:Content>

