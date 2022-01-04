<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admission_Form.aspx.cs" Inherits="Admission_Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <section class="about-dps-society-message py-5" >
<div class="container backShadow1">

<div class="page-title text-center mb-2 pb-1 text-uppercase">
<h2 class="mb-1">Register online for Admission</h2>

<%--<h4 class="mb-0">A NEW AGE SCHOOL</h4>--%>
</div>


<div class="row">
      <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
    
   
	<div class="col-sm-12 col-lg-2"></div>
    <div class="col-sm-12 col-lg-8">
      <asp:Label ID="lblResult" runat="server" Text="" ForeColor="Red"></asp:Label><br />
   <%--  <div class="divBor4 "><strong>Register online for Admission</strong></div>--%>
    <form action="">
   
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-12 form-group">
								<label>STUDENT’S NAME<span style="color:Red">*</span>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName"
    ForeColor="Red" Display = "Dynamic" ErrorMessage = "Required" /></label>
        <asp:TextBox ID="txtName" runat="server" placeholder="Enter Here.." class="form-control"></asp:TextBox>
							
							</div>
							<%--<div class="col-sm-6 form-group">
								<label>Last Name</label>
								<input type="text" placeholder="Enter Last Name Here.." class="form-control">
							</div>--%>
						</div>					
						<%--<div class="form-group">
							<label>Address</label>
							<textarea placeholder="Enter Address Here.." rows="3" class="form-control"></textarea>
						</div>--%>	
						<div class="row">
							<div class="col-sm-12 form-group">
								<label>CLASS<span style="color:Red">*</span>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtClass"
    ForeColor="Red" Display = "Dynamic" ErrorMessage = "Required" /></label>
            <asp:TextBox ID="txtClass" runat="server" placeholder="Enter Here.." class="form-control"></asp:TextBox>
							
							</div>	
                            </div>	
						<div class="row">
							<div class="col-sm-12    form-group">
								<label>D.O.B.</label>
                <asp:TextBox ID="txtDOB" TextMode="Date" runat="server"  placeholder="Enter Here.." class="form-control"></asp:TextBox>
							
							</div>
                            </div>	
						<div class="row">	
							<div class="col-sm-12 form-group">
								<label>AGE</label>
                    <asp:TextBox ID="txtAge" runat="server" placeholder="Enter Here.." class="form-control"></asp:TextBox>
								
							</div>		
						</div>
                        <div class="row">
							<div class="col-sm-6 form-group">
								<label>FATHER’S NAME<span style="color:Red">*</span>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtFatherName"
    ForeColor="Red" Display = "Dynamic" ErrorMessage = "Required" /></label>
                                <asp:TextBox ID="txtFatherName" runat="server" placeholder="Enter Here.." class="form-control"></asp:TextBox>
								
							</div>
							<div class="col-sm-6 form-group">
								<label>CONTACT NUMBER<span style="color:Red">*</span>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtFatherContact"
    ForeColor="Red" Display = "Dynamic" ErrorMessage = "Required" />
       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
ControlToValidate="txtFatherContact" ErrorMessage="Enter Only 10 Digits" ForeColor="Red"  MaxLength="10" 
ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator></label>
                            <asp:TextBox ID="txtFatherContact" runat="server"  placeholder="Enter Here.." class="form-control"></asp:TextBox>
						
							</div>
						</div>
                         <div class="row">
							<div class="col-sm-6 form-group">
								<label>MOTHER’S NAME</label>
                                <asp:TextBox ID="txtMotherName" runat="server" placeholder="Enter Here.." class="form-control"></asp:TextBox>
							
							</div>
							<div class="col-sm-6 form-group">
								<label>CONTACT NUMBER   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
ControlToValidate="txtMotherContact" ErrorMessage="Enter Only 10 Digits" ForeColor="Red"  MaxLength="10" 
ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator></label>
                                    <asp:TextBox ID="txtMotherContact" runat="server" placeholder="Enter Here.." class="form-control"></asp:TextBox>
								
							</div>
						</div>	
						<div class="row">
							<div class="col-sm-12 form-group">
								<label>VILLAGE</label>
                                        <asp:TextBox ID="txtVillage" runat="server" placeholder="Enter Here.." class="form-control"></asp:TextBox>
							
							</div>
                            </div>	
						<div class="row">		
							<div class="col-sm-12 form-group">
								<label>NAME OF THE PREVIOUS SCHOOL</label>
                         <asp:TextBox ID="txtPrevious" runat="server" placeholder="Enter Here.." class="form-control"></asp:TextBox>
							
							</div>	
						</div>	
                        <div class="row">		
							<div class="col-sm-12 form-group">
								<label>WHY YOU ARE CHOOSING CSM? </label>
                          <asp:TextBox ID="txtWhy" runat="server" placeholder="Enter Here.." class="form-control"></asp:TextBox>
							
							</div>	
						</div>					
					<%--<div class="form-group">
						<label>Phone Number</label>
						<input type="text" placeholder="Enter Phone Number Here.." class="form-control">
					</div>		
					<div class="form-group">
						<label>Email Address</label>
						<input type="text" placeholder="Enter Email Address Here.." class="form-control">
					</div>	
					<div class="form-group">
						<label>Website</label>
						<input type="text" placeholder="Enter Website Name Here.." class="form-control">
					</div>--%>
                    <div class="row text-center">		
							<div class="col-sm-12 form-group">
					 <asp:Button ID="btnSubmit" Text="Submit" runat="server" class="btn btn-lg btn-info" 
                                    onclick="btnSubmit_Click"/>
                    	</div>	
						</div>						
					</div>
				</form></div>
    <div class="col-sm-12 col-lg-2"></div>
				 
				</div>
	
        
       </div>



</div>
</section>
</asp:Content>

