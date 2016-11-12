<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="patientWard.aspx.cs" Inherits="HospitalManagementSystem.patientWard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                <asp:Label ID="Label7" runat="server" Text="Patient Name"></asp:Label>
            </td>
            <td width="25%">
                <asp:DropDownList ID="ddlPatientName" runat="server">
                </asp:DropDownList>
            </td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td style="margin-left: 120px" width="25%">
                <asp:Label ID="Label1" runat="server" Text="Ward No"></asp:Label>
            </td>
            <td width="25%">
                <asp:DropDownList ID="ddlWardNo" runat="server">
                </asp:DropDownList>
            </td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td style="margin-left: 120px" width="25%">
                <asp:Label ID="Label3" runat="server" Text="Ward Name"></asp:Label>
            </td>
            <td width="25%">
                <asp:TextBox ID="txtWardName" runat="server"></asp:TextBox>
            </td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td style="margin-left: 120px" width="25%">
                <asp:Label ID="Label4" runat="server" Text="Type"></asp:Label>
            </td>
            <td width="25%">
                <asp:TextBox ID="txtWardType" runat="server"></asp:TextBox>
            </td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td style="margin-left: 120px" width="25%">
                <asp:Label ID="Label5" runat="server" Text="No. of Beds Available"></asp:Label>
            </td>
            <td width="25%">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>8</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td style="margin-left: 120px" width="25%">
                <asp:Label ID="Label6" runat="server" Text="Per Day Charge"></asp:Label>
            </td>
            <td width="25%">
                <asp:TextBox ID="txtPerDayCharges" runat="server"></asp:TextBox>
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
