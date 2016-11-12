<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="eBilling.Login" %>
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
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right">
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right">
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="Label1" runat="server" CssClass="lblHeading" 
                                Text="Account Login"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
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
                                Text="Login Name"></asp:Label>
                        </td>
                        <td style="margin-left: 40px">
                            <asp:TextBox ID="txtUserName" runat="server" CssClass="txtNormal"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr style="height:40px">
                        <td align="right">
                            <asp:Label ID="Label3" runat="server" CssClass="lblNormal" 
                                Text="Password"></asp:Label>
                        </td>
                        <td style="margin-left: 40px">
                            <input id="txtPassword" class="txtNormal" type="password" runat="server"/></td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td align="left" style="margin-left: 40px">
                            <asp:Button ID="btnLogin" runat="server" Text="Login" Width="70px" 
                                onclick="btnLogin_Click" />
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
