<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="PatientDetails.aspx.cs" Inherits="HospitalManagementSystem.PatientDetails" %>
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
                        <asp:Label ID="Label1" runat="server" Text="Patient Name"></asp:Label>
                    </td>
            <td width="25%">
                        <asp:TextBox ID="txtPatientName" runat="server"></asp:TextBox>
                    </td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td style="margin-left: 120px" width="25%">
                        <asp:Label ID="Label2" runat="server" Text="Age"></asp:Label>
                    </td>
            <td width="25%">
                        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
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
                        <asp:Label ID="Label8" runat="server" Text="Referral"></asp:Label>
                    </td>
            <td class="style1" width="25%">
                        <asp:TextBox ID="txtReferral" runat="server"></asp:TextBox>
                    </td>
            <td class="style1" width="25%">
            </td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td style="margin-left: 120px" width="25%">
                        <asp:Label ID="Label9" runat="server" Text="Date of Admission"></asp:Label>
                    </td>
            <td width="25%">
                        <asp:TextBox ID="txtDateOfAdmission" runat="server"></asp:TextBox>
                    </td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td style="margin-left: 120px" width="25%">
                        <asp:Label ID="Label10" runat="server" Text="Patient Type"></asp:Label>
                    </td>
            <td width="25%">
                        <asp:TextBox ID="txtPatientType" runat="server"></asp:TextBox>
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
                &nbsp;</td>
            <td width="25%">
                &nbsp;</td>
        </tr>
        <tr>
            <td width="25%">
                &nbsp;</td>
            <td style="margin-left: 120px" width="25%">
                &nbsp;</td>
            <td width="25%" style="margin-left: 40px">
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
            <td width="25%" style="margin-left: 40px">
                        <asp:Label ID="lblMsg" runat="server" Font-Bold="False" ForeColor="Red"></asp:Label>
            </td>
            <td width="25%">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
