<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Job_Form.aspx.cs" Inherits="Job_Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <section class="about-dps-society-message py-5" >
<div class="container backShadow1">

<div class="page-title text-center mb-2 pb-1 text-uppercase">
<h2 class="mb-1">Fill Details</h2>

<%--<h4 class="mb-0">A NEW AGE SCHOOL</h4>--%>
</div>


<div class="row">
 
         
   
	<div class="col-sm-12 col-lg-2"></div>
    <div class="col-sm-12 col-lg-8">
     <asp:Label ID="lblResult" runat="server" Text="" ForeColor="Red"></asp:Label><br />
    
     <p class="txtCenter1"><strong>Interested candidates can email their resumes to bipskharkhoda@gmail.com</strong></p>
   
					<div class="col-sm-12 ">
					<div class="row">
                        <div class="col-sm-6 form-group">
								<label>Post applied for</label>
                                <asp:TextBox ID="txtPost" runat="server" placeholder="Enter Here.."  class="form-control"></asp:TextBox>
							
							</div>
							<div class="col-sm-6 form-group">
								<label>Full Name<span style="color:Red">*</span><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtName"
    ForeColor="Red" Display = "Dynamic" ErrorMessage = "Required" /></label>
                                    <asp:TextBox ID="txtName" runat="server" placeholder="Enter Here.."  class="form-control"></asp:TextBox>
							</div>
							
						</div>

                        <div class="row">
                        <div class="col-sm-6 form-group">
								<label>Father's / Husband's Name</label>
                                        <asp:TextBox ID="txtFatherName" runat="server" placeholder="Enter Here.."  class="form-control"></asp:TextBox>
								
							</div>
							<div class="col-sm-6 form-group">
								<label>Date of Birth</label>
                              
							<%--	<input type="text" placeholder="Enter Here.."  class="form-control">--%>
                                <asp:TextBox ID="txtDate" TextMode="Date" runat="server"  class="form-control"></asp:TextBox>
							</div>
							
						</div>


                        <div class="row">
                        <div class="col-sm-6 form-group">
								<label>Gender</label><br />
                              
                                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="gender" Text="Male" v Checked="true"/>
                                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="gender" Text="Female"/>
							
							</div>
							<div class="col-sm-6 form-group">
								<label>Address</label>
                                    <asp:TextBox ID="txtAddress" runat="server" placeholder="Enter Here.."  class="form-control"></asp:TextBox>
								
							</div>
							
						</div>


                        <div class="row">
                        <div class="col-sm-6 form-group">
								<label>Area</label>
                               <asp:TextBox ID="txtArea" runat="server" placeholder="Enter Here.."  class="form-control"></asp:TextBox>
							
							</div>
							<div class="col-sm-6 form-group">
								<label>City</label>
                                            <asp:TextBox ID="txtCity" runat="server"  placeholder="Enter Here.."  class="form-control"></asp:TextBox>
							
							</div>
							
						</div>

                        <div class="row">
                        <div class="col-sm-6 form-group">
								<label>Pin Code</label>
                                                <asp:TextBox ID="txtPinCode" runat="server" placeholder="Enter Here.."  class="form-control"></asp:TextBox>
								
							</div>
							<div class="col-sm-6 form-group">
								<label>Communication Mobile No.<span style="color:Red">*</span>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMobile"
    ForeColor="Red" Display = "Dynamic" ErrorMessage = "Required" />

  
                                </label>
                                                    <asp:TextBox ID="txtMobile" runat="server" placeholder="Enter Here.."  class="form-control"></asp:TextBox>
								  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
ControlToValidate="txtMobile" ErrorMessage="Enter Only 10 Digits" ForeColor="Red"  MaxLength="10" 
ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>  
							</div>
							
						</div>
                        <div class="row">
                        <div class="col-sm-6 form-group">
								<label>Your Email <span style="color:Red">*</span>   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
    ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
    Display = "Dynamic" ErrorMessage = "Enter Valid Email Address"/>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail"
    ForeColor="Red" Display = "Dynamic" ErrorMessage = "Required" /></label>
								<asp:TextBox ID="txtEmail" runat="server" placeholder="Enter Here.."  class="form-control"/>


							</div>
							<div class="col-sm-6 form-group">
								<label>Upload Resume </label>
                                <asp:FileUpload ID="FileUpload1" runat="server"  class="form-control"/>
							
							</div>
							
						</div>
                    <div class="row text-center">		
							<div class="col-sm-12 form-group">
                            <asp:Button ID="btnSubmit" Text="Submit" runat="server" class="btn btn-lg btn-info" 
                                    onclick="btnSubmit_Click1"/>
					<%--<button type="button" class="btn btn-lg btn-info">Submit</button>--%>
                    	</div>	
						</div>						
					</div>
				</div>
    <div class="col-sm-12 col-lg-2"></div>
				 
			
	
        
       </div>



</div>
</section>
</asp:Content>

