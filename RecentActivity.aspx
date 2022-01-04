<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RecentActivity.aspx.cs" Inherits="RecentActivity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <section class="about-dps-society-message py-5" >
<div class="container backShadow1">

<div class="page-title text-center mb-2 pb-1 text-uppercase">
<h2 class="mb-1">Recent Activities</h2>

<%--<h4 class="mb-0">A NEW AGE SCHOOL</h4>--%>
</div>




<div class="row marTop1">
<div class="col-md-12 col-sm-12">
 <asp:Label ID="lblActivity" runat="server" Text="" ForeColor="Red"></asp:Label>
    <asp:Repeater ID="Repeater2" runat="server">
    <ItemTemplate>
   
 <div class="row">
<div class="col-md-7 col-sm-12">
 <span style="font-weight:bold; color:red;"><img src="images/banner/NewsIcon.gif" style="margin-right:20px" /><%# Eval("ActivityDate") %></span>
 <br />
 <span style="color:black;">
 
 <%#Eval("ActivityClass") %><br />
 <%# Eval("ActivityName") %> <br />
  <%# Eval("ActivityType") %> <br />
  <%# Eval("ActivityDetail") %><br />
   
 </span>
 </div>
<div class="col-md-5 col-sm-12"> <img src='<%# "http://controlpanel.ptccircle.com/Gallery_Images/RecentActivities/"+ Eval("[Url]") %>' style="width:100%; height:auto;" alt="" /></div>

</div>
<hr />

 

   
   
    
    </ItemTemplate>
    
    </asp:Repeater>
</div>
</div>



</div>
</section>
</asp:Content>

