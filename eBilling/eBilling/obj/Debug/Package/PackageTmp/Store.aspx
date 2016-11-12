<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Store.aspx.cs" Inherits="eBilling.Store" %>
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
                                Text="Manage Store"></asp:Label>
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
                                Text="Product Name"></asp:Label>
                        </td>
                        <td style="margin-left: 40px">
                            <asp:TextBox ID="txtProductName" runat="server" CssClass="txtNormal"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr style="height:40px">
                        <td align="right">
                            <asp:Label ID="Label3" runat="server" CssClass="lblNormal" 
                                Text="Type"></asp:Label>
                        </td>
                        <td style="margin-left: 40px">
                            <asp:DropDownList ID="ddlProductType" runat="server" CssClass="txtNormal">
                                <asp:ListItem>Grocery</asp:ListItem>
                                <asp:ListItem>Kitchen</asp:ListItem>
                                <asp:ListItem>Electronic</asp:ListItem>
                                <asp:ListItem>Cosmetic</asp:ListItem>
                                <asp:ListItem>Music</asp:ListItem>
                                <asp:ListItem>House Hold</asp:ListItem>
                                <asp:ListItem>Suite Case</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr style="height:40px">
                        <td align="right">
                            <asp:Label ID="Label4" runat="server" CssClass="lblNormal" 
                                Text="Price"></asp:Label>
                        </td>
                        <td style="margin-left: 40px">
                            <asp:TextBox ID="txtPrice" runat="server" CssClass="txtNormal"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr style="height:40px">
                        <td align="right">
                            <asp:Label ID="txtQty" runat="server" CssClass="lblNormal" 
                                Text="Quantity"></asp:Label>
                        </td>
                        <td style="margin-left: 40px">
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="txtNormal"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr style="height:40px">
                        <td align="right" rowspan="0">
                            &nbsp;</td>
                        <td style="margin-left: 40px" rowspan="0">
                            <asp:Button ID="btnSave" runat="server" Text="Save" onclick="btnSave_Click" />
                        </td>
                        <td rowspan="0">
                            &nbsp;</td>
                        <td rowspan="0">
                            &nbsp;</td>
                    </tr>
                    <tr >
                        <td align="right" colspan="4" style="text-align: left">
                            <asp:Label ID="lblMsg" runat="server" CssClass="lblNormal" Width="100%"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                                CellPadding="4" Font-Names="Arial" Font-Size="Small" Width="100%">
                                <Columns>
                                    <asp:BoundField HeaderText="Product Name" />
                                    <asp:BoundField HeaderText="Type" />
                                    <asp:BoundField HeaderText="Price" />
                                    <asp:BoundField HeaderText="Quantity" />
                                </Columns>
                                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                <RowStyle BackColor="White" ForeColor="#003399" />
                                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                                <SortedDescendingHeaderStyle BackColor="#002876" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </td>
            <td width="15%">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
