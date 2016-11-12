<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="StoreDetail.aspx.cs" Inherits="eBilling.StoreDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width:100%;">
        <tr>
            <td width="15%">
                &nbsp;</td>
            <td width="70%">
                <table style="width:100%;">
                    <tr>
                        <td align="right">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right">
                            &nbsp;</td>
                        <td colspan="2">
                            <asp:Label ID="Label1" runat="server" CssClass="lblHeading" 
                                Text="Store/Shope Details"></asp:Label>
                        </td>
                        <td>
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
                        <td align="right">
                            <asp:Label ID="Label2" runat="server" CssClass="lblNormal" 
                                Text="Store Name"></asp:Label>
                        </td>
                        <td style="margin-left: 40px">
                            <asp:TextBox ID="txtStoreName" runat="server" CssClass="txtNormal"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr style="height:40px">
                        <td align="right">
                            <asp:Label ID="Label3" runat="server" CssClass="lblNormal" 
                                Text="Address1"></asp:Label>
                        </td>
                        <td style="margin-left: 40px">
                            <asp:TextBox ID="txtAddress1" runat="server" CssClass="txtNormal"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr style="height:40px">
                        <td align="right">
                            <asp:Label ID="Label4" runat="server" CssClass="lblNormal" 
                                Text="Address2"></asp:Label>
                        </td>
                        <td style="margin-left: 40px">
                            <asp:TextBox ID="txtAddress2" runat="server" CssClass="txtNormal"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr style="height:40px">
                        <td align="right">
                            <asp:Label ID="Label5" runat="server" CssClass="lblNormal" 
                                Text="City"></asp:Label>
                        </td>
                        <td style="margin-left: 40px">
                            <asp:TextBox ID="txtCity" runat="server" CssClass="txtNormal"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr style="height:40px">
                        <td align="right">
                            <asp:Label ID="Label6" runat="server" CssClass="lblNormal" 
                                Text="PIN"></asp:Label>
                        </td>
                        <td style="margin-left: 40px">
                            <asp:TextBox ID="txtPIN" runat="server" CssClass="txtNormal"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr style="height:40px">
                        <td align="right">
                            <asp:Label ID="Label7" runat="server" CssClass="lblNormal" 
                                Text="TIN"></asp:Label>
                        </td>
                        <td style="margin-left: 40px">
                            <asp:TextBox ID="TxtTIN" runat="server" CssClass="txtNormal"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr style="height:40px">
                        <td align="right">
                            &nbsp;</td>
                        <td style="margin-left: 40px">
                            <asp:Button ID="btnSave" runat="server" Text="Save" onclick="btnSave_Click" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:Label ID="lblMsg" runat="server" CssClass="lblNormal" Width="100%"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td width="15%">
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>
