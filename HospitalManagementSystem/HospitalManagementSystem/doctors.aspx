<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="doctors.aspx.cs" Inherits="HospitalManagementSystem.doctors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            height: 19px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width:100%;">
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td style="margin-left: 120px" width="25%">
                <asp:Label ID="Label1" runat="server" Text="Doctor Name"></asp:Label>
            </td>
            <td width="25%">
                <asp:TextBox ID="txtDoctorName" runat="server"></asp:TextBox>
            </td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td style="margin-left: 120px" width="25%">
                <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
            </td>
            <td width="25%">
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
            </td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td style="margin-left: 120px" width="25%">
                <asp:Label ID="Label4" runat="server" Text="Date of Birth"></asp:Label>
            </td>
            <td width="25%">
                <asp:TextBox ID="txtDateOfBirth" runat="server"></asp:TextBox>
            </td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td style="margin-left: 120px" width="25%">
                <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
            </td>
            <td width="25%">
                <asp:TextBox ID="txtGender" runat="server"></asp:TextBox>
            </td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td style="margin-left: 120px" width="25%">
                <asp:Label ID="Label6" runat="server" Text="State"></asp:Label>
            </td>
            <td width="25%">
                <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
            </td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td style="margin-left: 120px" width="25%">
                <asp:Label ID="Label7" runat="server" Text="City"></asp:Label>
            </td>
            <td width="25%">
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            </td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1" width="25%">
            </td>
            <td class="style1" style="margin-left: 120px" width="25%">
                <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
            </td>
            <td class="style1" width="25%">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
            <td class="style1" width="25%">
            </td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td style="margin-left: 120px" width="25%">
                <asp:Label ID="Label9" runat="server" Text="Mobile No"></asp:Label>
            </td>
            <td width="25%">
                <asp:TextBox ID="txtMobileNo" runat="server"></asp:TextBox>
            </td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td style="margin-left: 120px" width="25%">
                <asp:Label ID="Label10" runat="server" Text="Specialisation"></asp:Label>
            </td>
            <td width="25%">
                <asp:TextBox ID="txtSpecialisation" runat="server"></asp:TextBox>
            </td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td style="margin-left: 120px" width="25%">
                <asp:Label ID="Label11" runat="server" Text="Date of Join"></asp:Label>
            </td>
            <td width="25%">
                <asp:TextBox ID="txtDateOfJoin" runat="server"></asp:TextBox>
            </td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td style="margin-left: 120px" width="25%">
                <asp:Label ID="Label12" runat="server" Text="Status"></asp:Label>
            </td>
            <td width="25%">
                <asp:TextBox ID="txtStatus" runat="server"></asp:TextBox>
            </td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td style="margin-left: 120px" width="25%">
                &nbsp;</td>
            <td width="25%">
                <asp:Button ID="btnSave" runat="server" Text="Save" onclick="btnSave_Click" />
            </td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td style="margin-left: 120px" width="25%">
                &nbsp;</td>
            <td width="25%">
                        <asp:Label ID="lblMsg" runat="server" Font-Bold="False" ForeColor="Red"></asp:Label>
            </td>
            <td width="25%">
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>
