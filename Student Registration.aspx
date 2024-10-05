<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Student Registration.aspx.cs" Inherits="Student_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container-fluid ">

        <h1 class="text-center m-2">Student Registration</h1>
        <hr />
        <div class="container row m-3">
            <div class="col-6 mb-4">
                <asp:Label ID="lbl_firstname" runat="server" CssClass="h5" Text="First Name:"></asp:Label>
                <asp:TextBox ID="txt_firstname" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="col-6 mb-4">
                <asp:Label ID="lbl_last" runat="server" CssClass="h5" Text="Last Name:"></asp:Label>
                <asp:TextBox ID="txt_last" CssClass="form-control" runat="server"></asp:TextBox>
            </div>

            <div class="col-6 mb-4">
                <asp:Label ID="lbl_enrollment" runat="server" CssClass="h5" Text="Enrollment Number:"></asp:Label>
                <asp:TextBox ID="txt_enrollment" CssClass="form-control" runat="server"></asp:TextBox>
            </div>

            <div class="col-6 mb-4">
                <asp:Label ID="lbl_Semester" runat="server" CssClass="h5" Text="Select Semester:"></asp:Label>
                <asp:DropDownList ID="ddl_Sem" CssClass="form-control" runat="server">
                      <asp:ListItem Text="--Select--" Value="0"></asp:ListItem>
                    <asp:ListItem Text="First Semester " Value="sem1"></asp:ListItem>
                    <asp:ListItem Text="Second Semester" Value="sem2"></asp:ListItem>
                    <asp:ListItem Text="third Semester" Value="sem3"></asp:ListItem>
                    <asp:ListItem Text="fourth Semester" Value="sem4"></asp:ListItem>
                     <asp:ListItem Text="fifth Semester" Value="sem5"></asp:ListItem>
                     <asp:ListItem Text="sixth Semester" Value="sem6"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="col-6 mb-4">
                <asp:Label ID="lbl_email" runat="server" CssClass="h5" Text="Write Email:"></asp:Label>
                <asp:TextBox ID="txt_email" CssClass="form-control" runat="server"></asp:TextBox>
            </div>

            <div class="col-6 mb-4">
                <asp:Label ID="lbl_phone" runat="server" CssClass="h5" Text="Write Phone Number:"></asp:Label>
                <asp:TextBox ID="txt_phone" CssClass="form-control" runat="server"></asp:TextBox>
            </div>

            <div class="col-6 mb-4">
                <asp:Label ID="lbl_birth" runat="server" CssClass="h5" Text="Date Of Birth:"></asp:Label>
                <asp:TextBox ID="txt_birth" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
            </div>

            <div class="col-6 mb-4">
                <asp:Label ID="lbl_address" runat="server" CssClass="h5" Text="Address:"></asp:Label>
                <asp:TextBox ID="txt_address" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="text-center">
            <asp:Button ID="btn_submit" CssClass="btn btn-dark btn-lg fw-bold" OnClick="btn_submit_Click" Text="Submit Form " runat="server" />
        </div>
    </div>

</asp:Content>

