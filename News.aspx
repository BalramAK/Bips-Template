<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <section class="about-dps-society-message py-5" >
<div class="container backShadow1">

<div class="page-title text-center mb-2 pb-1 text-uppercase">
<h2 class="mb-1">All Latest News</h2>

<%--<h4 class="mb-0">A NEW AGE SCHOOL</h4>--%>
</div>




<div class="row marTop1">
<div class="col-md-12 col-sm-12">
<asp:Label ID="lblNews" runat="server" Text="" ForeColor="Red"></asp:Label>
    <asp:Repeater ID="Repeater1" runat="server">
    <ItemTemplate>
    <div>
 <p>
 <span style="font-weight:bold; color:red;"><img src="images/banner/NewsIcon.gif" style="margin-right:5px" /><%# Eval("date") %></span>
 <br />
 <span style="color:black;">
 <%# Eval("event_name") %> <%# Eval("event_des") %>
    <asp:LinkButton ID="LinkButton1" runat="server" href='<%#"http://controlpanel.ptccircle.com/NewsAttachment/"+ Eval("[Attachment]") %>' target="_blank" style='<%# string.IsNullOrEmpty(Convert.ToString(Eval("Attachment"))) ? "display:none" : "display:inline" %>'><br /><span style="font-weight:bold; color:blue;">Download Attachment</span></asp:LinkButton></span>
 </p>
   <hr />
    </div>

    
    </ItemTemplate>
    
    </asp:Repeater>
</div>
</div>



</div>
</section>
</asp:Content>

