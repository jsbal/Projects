<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HospitalManagementSystem.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <table style="width:100%;">
    <tr>
        <td>
            &nbsp;</td>
        <td width="20%">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
      <h1>Hospital Management Information System (HMIS)</h1>
      
	  
	  <p><strong>Hospital Information System (HIS)</strong> or <strong>Hospital Management Information System (HMIS)</strong> or <strong>Hospital Management System</strong> are synonyms of hospital e-Governance initiatives, which means making a hospital management paperless. This includes the clinical, back office and generic management of all activities. It integrates the entire resources of a hospital into one integrated software application.</p> 
<p><strong>Electra <a href="http://localhost/resource_files/resource.html">Hospital Management System</a> (HMS)</strong> from ACGIL makes such an attempt and offers a world class solution, which fits into all kinds of hardware platform including a mobile phone.</p> 

	  <p><strong>Benefits</strong></p>
	  <p>The most important benefits that a hospital gains out of a HMIS implementation are:</p>	   
	  <ul>
	  <li>Least manpower requirements</li>
	  <li>Instant information retrieval</li>
	  <li>Timely treatment decisions</li>
	  <li>Information sharing between the healthcare specialists across the world</li>
	  <li>Access to DICOM images online if HMIS is web based</li>
	  <li>Saves lot of money to the promoters if HMIS is web based</li>
	  <li>Allows remote access to all stake holders including patients</li>
	  <li>Web based HMIS can also provide services such as online appointment scheduling</li>
	  <li>Accepting payment online becomes possible with Ecommerce for payment gateways</li>
	  <li>Online claims processing for cashless patients become far too easy</li>
	  </ul>
			
	  <p>The <strong><a href="http://localhost/resource_files/resource.html">Hospital Management Software</a> </strong> provides several management tools such as EMR, which is more of an audit trail of doctors encounters with patients. EMR is a modern way of a hospital treating the patients. EMR covers past history, prescription suggested by doctors, opinion of distant consultants with the help of DICOM imaging or Tele-radiology. This means all vital information is residing in the system, which can be readily retrieved to help in making a timely decision.</p>
<p><strong>Modules</strong></p>
	  
<p>Electra, HMIS offers, Off-The-Shelf, a modular concept and flexible in terms of choosing the modules out of requirements. All such modules are listed below for the managers to choose from.</p>
	  <div class="indexlink">
	  	 <div class="arrowblueul">
		 <ul>
	    <li><a href="http://www.acgil.com/products/registratoin-and-enquiry.htm">Registration and Enquiry Management</a></li>
	    <li><a href="http://www.acgil.com/products/appointment-and-queue-management.htm">Appointment &amp; Queue Management</a></li>
	    <li>Computerized Physician Order Entry (CPOE)</li>
	   <li><a href="http://www.acgil.com/products/electronic-medical-record.htm">Electronic Medical Records (EMR) with Document management System (DMS)</a></li>
	   	    <li><a href="http://www.acgil.com/products/casualty-and-emergency-management.htm">Casualty &amp; Emergency Management</a></li>
	    <li><a href="http://www.acgil.com/products/in-patient-atd%20management.htm">In-patient Admission-Discharge-Transfer(ADT) Management</a></li>
	    <li><a href="http://www.acgil.com/products/pharmacy-management.htm">Pharmacy Management</a></li>
		<li><a href="http://www.acgil.com/products/laboratory-information-system.htm">Laboratory Information System</a></li>
	    <li><a href="http://www.acgil.com/products/radiology-and-nuclear-medicine.htm">Radiology Information System and Nuclear Medicine </a></li>
		<li><a href="http://www.acgil.com/products/pacs-radiology.htm">PACS Radiology (DICOM Compliance)</a></li>
		<li><a href="http://www.acgil.com/products/operation-theatres-management.htm">Operation Theatres Scheduling and Management</a></li>
		<li><a href="http://www.acgil.com/products/nurcing-ward-management.htm">Nursing and Ward Management</a> </li>
	    <li><a href="http://www.acgil.com/products/bloodbank_management_software.htm">Blood Bank Management</a> </li>
	    <li><a href="http://www.acgil.com/products/service-ordering-and-billing.htm">Service Order Processing</a> </li>
	    <li><a href="http://www.acgil.com/products/ambulance-services-management.htm">Ambulance Services Management</a></li><a href="http://www.acgil.com/products/ambulance-services-management.htm">
	    </a><li><a href="http://www.acgil.com/products/ambulance-services-management.htm"></a><a href="http://www.acgil.com/products/bed-census-management.htm">Bed Census Management</a> </li>
	    <li><a href="http://www.acgil.com/products/quality-assurance.htm">Quality Assurance and Monitoring</a> </li>
	    <li><a href="http://www.acgil.com/products/stores-and-inventory-management.htm">Stores and Inventory Management</a></li><a href="http://www.acgil.com/products/stores-and-inventory-management.htm">
	    </a><li><a href="http://www.acgil.com/products/stores-and-inventory-management.htm"></a><a href="http://www.acgil.com/products/financial-accounting.htm">Financial Accounting System</a></li>
	    <li><a href="http://www.acgil.com/products/tpa-and-insurance-management.htm">TPA Management</a></li>
	    <li><a href="http://www.acgil.com/products/patient-referral-system.htm">Patient Referral System</a> </li>
	    <li><a href="http://www.acgil.com/products/hr-and-payroll.htm">HRM and Payroll System</a> </li>
	    <li>Employee Self Service (portal)</li>
	    
      </ul>

	  </div>
	    
	  </div>

        </td>
        <td width="20%" valign="top">
            <table style="width:100%;">
                <tr>
                    <td style="margin-left: 40px">
                        <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="margin-left: 40px">
                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="margin-left: 40px">
                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="margin-left: 40px">
                        <input id="txtPassword" type="password" runat="server" /></td>
                </tr>
                <tr>
                    <td style="margin-left: 40px">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" 
                            onclick="btnLogin_Click" />
                    </td>
                </tr>
                <tr>
                    <td style="margin-left: 40px">
                        <asp:Label ID="lblMsg" runat="server" Font-Bold="False" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    </table>



</asp:Content>
