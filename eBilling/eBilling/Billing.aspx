<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Billing.aspx.cs" Inherits="eBilling.Billing" %>
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
                    <tr style="background-color:White">
                        <td>
                            <asp:Label ID="Label1" runat="server" CssClass="lblHeading" 
                                Text="Billing System"></asp:Label>
                        </td>
                        <td colspan="3">
                            <table>
                                <tr>
                                    <td width="50px">
                            <asp:Label ID="Label8" runat="server" CssClass="lblHighlighted" 
                                Text="Bill No:"></asp:Label>
                                    </td>
                                    <td width="70px">
                            <asp:Label ID="lblBillNo" runat="server" CssClass="lblHighlighted"></asp:Label>
                                    </td>
                                    <td>
                            <asp:Label ID="Label9" runat="server" CssClass="lblHighlighted" 
                                Text="Bill Date" Width="80px"></asp:Label>
                                    </td>
                                    <td width="150px">
                            <asp:Label ID="lblBillDate" runat="server" CssClass="lblHighlighted"></asp:Label>
                                    </td>
                                    <td>
                            <asp:Label ID="lbl1" runat="server" CssClass="lblHighlighted" 
                                Text="Total Items" Width="80px"></asp:Label>
                                    </td>
                                    <td>
                            <asp:Label ID="lblTotalItems" runat="server" CssClass="lblHighlighted"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
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
                        <td>
                            <asp:Label ID="Label2" runat="server" CssClass="lblNormal" 
                                Text="Item Code"></asp:Label>
                        </td>
                        <td style="margin-left: 40px">
                            <asp:Label ID="Label4" runat="server" CssClass="lblNormal" 
                                Text="Name"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label3" runat="server" CssClass="lblNormal" 
                                Text="Price"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="Label5" runat="server" CssClass="lblNormal" 
                                Text="Qutantity"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtItemCode" runat="server" CssClass="txtNormal"></asp:TextBox>
                        </td>
                        <td style="margin-left: 40px">
                            <asp:TextBox ID="txtItemName" runat="server" CssClass="txtNormal" 
                                Enabled="False"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtPrice" runat="server" CssClass="txtNormal" Enabled="False"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtQty" runat="server" CssClass="txtNormal"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" CssClass="lblNormal" 
                                Text="Vat%"></asp:Label>
                        </td>
                        <td style="margin-left: 40px">
                            <asp:Label ID="Label7" runat="server" CssClass="lblNormal" 
                                Text="Total Price"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtVat" runat="server" CssClass="txtNormal" Enabled="False"></asp:TextBox>
                        </td>
                        <td style="margin-left: 40px">
                            <asp:TextBox ID="txtTotalPrice" runat="server" CssClass="txtNormal" 
                                Enabled="False"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="btnAdd" runat="server" Text="Add Item" 
                                onclick="btnSave_Click" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" colspan="3" style="text-align: left">
                            <asp:Label ID="lblMsg" runat="server" CssClass="lblNormal" Width="100%"></asp:Label>
                        </td>
                        <td>
                            <asp:Button ID="btnFinalizeBill" runat="server" Text="Finalize Bill" 
                                onclientclick="return confirm(&quot;Do you want to final this bill&quot;);" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" colspan="4">
                            <asp:GridView ID="gvBilling" runat="server" AutoGenerateColumns="False" 
                                BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                                CellPadding="4" Font-Names="Arial" Font-Size="Small" Width="100%" EmptyDataText="No Record exists" ShowHeader="true" ShowHeaderWhenEmpty="true">
                                <Columns>
                                    <asp:BoundField HeaderText="Item Code" />
                                    <asp:BoundField HeaderText="Name" />
                                    <asp:BoundField HeaderText="Qty" />
                                    <asp:BoundField HeaderText="Vat%" />
                                    <asp:BoundField HeaderText="Total Price" />
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
                    <tr>
                        <td align="right">
                            &nbsp;</td>
                        <td style="margin-left: 40px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td width="15%">
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>
