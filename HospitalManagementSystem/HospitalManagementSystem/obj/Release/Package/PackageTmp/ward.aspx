<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ward.aspx.cs" Inherits="HospitalManagementSystem.ward" %>
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
                <asp:Label ID="Label1" runat="server" Text="Ward No"></asp:Label>
            </td>
            <td width="25%">
                <asp:TextBox ID="txtWardNo" runat="server"></asp:TextBox>
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
                <asp:Label ID="Label5" runat="server" Text="No. of Beds"></asp:Label>
            </td>
            <td width="25%">
                <asp:TextBox ID="txtNoOfBeds" runat="server"></asp:TextBox>
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
                <asp:Button ID="btnSave" runat="server" Text="Save" />
            </td>
            <td width="25%">
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>
