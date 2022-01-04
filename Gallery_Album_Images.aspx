<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gallery_Album_Images.aspx.cs" Inherits="Gallery_Album_Images" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <!--Gallery Start   -->
    <link href="css/gallery/slimbox2.css" rel="stylesheet" type="text/css" />
    <link href="css/gallery/gallery.css" rel="stylesheet" type="text/css" />
    <link href="css/gallery/stylegallery.css" rel="stylesheet" type="text/css" />
    <script src="js/jsgallery/jquery.min.js" type="text/javascript"></script>
    <script src="js/jsgallery/jquery.scrollTo-min.js" type="text/javascript"></script>
    <script src="js/jsgallery/jquery.localscroll-min.js" type="text/javascript"></script>
    <script src="js/jsgallery/init.js" type="text/javascript"></script>
    <script src="js/jsgallery/slimbox2.js" type="text/javascript"></script>

     <style>
                        .photo_gn1 li, .pgThumbView1 li
                        {
                            border: 0;
                        }
                        
                        .highslide-container
                        {
                            z-index: 9999 !important;
                        }
                    </style>
    <script>
        $(document).ready(function () {
            var jq14 = jQuery.noConflict(true);
        });
    </script>
       <!--Gallery End   -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <section class="about-dps-society-message py-5" >
<div class="container backShadow1">

<div class="page-title text-center mb-2 pb-1 text-uppercase">
<h2 class="mb-1">Gallery Album Images</h2>

<%--<h4 class="mb-0">A NEW AGE SCHOOL</h4>--%>
</div>

<div class="row">
      <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
 
         <!--Gallery Start   -->
            <div class="master_container_inner">
        <div class="heder_Center">
           
            <div class="wrapper_master_container">
                <div class="master_txt_container">
                   
                    <div class="row mt-3">
                        <div class="col-12 col-lg-12">
                            <asp:Button ID="btnBack" runat="server" Text="Back" CssClass="btn1"
                                    onclick="btnBack_Click" />
                            <div class="headingI">
                            
                                <span id="ctl00_ContentPlaceHolder1_lblHeading">
                                    <asp:Label ID="lblSelectedAlbum" runat="server" ForeColor="Red"></asp:Label>
                                   
                                       </span>
                                        <hr style="height:2px;border-width:0;color:red;background-color:#4a4746"/>
                            </div>
                            <div class="inner_img">
                                <div class="newGallery">
                                 <%--   <ul class="pgBack">
                                        <li class="eventDates"><b></b><span id="ctl00_ContentPlaceHolder1_lblEventDate"></span>
                                        </li>
                                        <li class="updatedOnD"><b></b><span id="ctl00_ContentPlaceHolder1_lblCreatedDate"></span>
                                        </li>
                                        <li class="totalImages"><b><span id="ctl00_ContentPlaceHolder1_lblhead">Select Album</span></b>
                                            <span id="ctl00_ContentPlaceHolder1_lblTotal">
                                                <asp:DropDownList runat="server" ID="albumdropdown1" AutoPostBack="true" OnSelectedIndexChanged="albumdropdown1_SelectedIndexChanged1">
                                                </asp:DropDownList>
                                            </span></li>
                                     
                                    </ul>--%>
                                    <div class="fullDescription">
                                        <span class="DescriptionH"></span><span id="ctl00_ContentPlaceHolder1_lblDescription">
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="pgThumbView2">
                                <div id="ctl00_ContentPlaceHolder1_UpdatePanel2">
                                    <ul id="dvCustomers" class="">
                                        <asp:Repeater ID="Repeater1" runat="server">
                                            <ItemTemplate>
                                                <li class="eh1 change-thum"><a href='<%# "http://controlpanel.ptccircle.com/Gallery_Images/"+Eval("Url")%>'
                                                    class="highslide AlbumIconPhoto" rel="lightbox[gallery]"><span id="ctl00_ContentPlaceHolder1_Repeater1_ctl00_lblimg"
                                                        class="AlbumIconPhoto" style="display: block">
                                                        <img class='AlbumIconPhoto imgThumb1' src='<%# "http://controlpanel.ptccircle.com/Gallery_Images/"+Eval("thumb")%>' /></span>
                                                </a></li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>
                                    <div class="pageLoaders">
                                        <div class="pgImgLoad">
                                            <img id="loader" alt="" src="../../images/bx_loader.gif" style="display: none" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    
                    
                </div>
            </div>
        </div>
      
    </div>
    <!--Gallery End   -->

       </div>
        
       </div>




</div>
</section>
</asp:Content>

