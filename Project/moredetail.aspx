<%@ Page Title="" Language="C#" MasterPageFile="~/Project/MasterPage.master" AutoEventWireup="true" CodeFile="moredetail.aspx.cs" Inherits="moredetail" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1">

        <EditItemTemplate>
            id:
            <asp:Label Text='<%# Eval("id") %>' runat="server" ID="idLabel1" /><br />
            main_cat:
            <asp:TextBox Text='<%# Bind("main_cat") %>' runat="server" ID="main_catTextBox" /><br />
            detail:
            <asp:TextBox Text='<%# Bind("detail") %>' runat="server" ID="detailTextBox" /><br />
            photo_p:
            <asp:TextBox Text='<%# Bind("photo_p") %>' runat="server" ID="photo_pTextBox" /><br />
            video_p:
            <asp:TextBox Text='<%# Bind("video_p") %>' runat="server" ID="video_pTextBox" /><br />
            album_p:
            <asp:TextBox Text='<%# Bind("album_p") %>' runat="server" ID="album_pTextBox" /><br />
            image:
            <asp:TextBox Text='<%# Bind("image") %>' runat="server" ID="imageTextBox" /><br />
            <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
        </EditItemTemplate>
        <InsertItemTemplate>
            main_cat:
            <asp:TextBox Text='<%# Bind("main_cat") %>' runat="server" ID="main_catTextBox" /><br />
            detail:
            <asp:TextBox Text='<%# Bind("detail") %>' runat="server" ID="detailTextBox" /><br />
            photo_p:
            <asp:TextBox Text='<%# Bind("photo_p") %>' runat="server" ID="photo_pTextBox" /><br />
            video_p:
            <asp:TextBox Text='<%# Bind("video_p") %>' runat="server" ID="video_pTextBox" /><br />
            album_p:
            <asp:TextBox Text='<%# Bind("album_p") %>' runat="server" ID="album_pTextBox" /><br />
            image:
            <asp:TextBox Text='<%# Bind("image") %>' runat="server" ID="imageTextBox" /><br />
            <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
        </InsertItemTemplate>
        <ItemTemplate>
            <div style="margin-top: 10vh; margin-left: 30vh; margin-right: 30vh; background-color:aliceblue;" >
                <div style="float: left;">
                    <div style="margin-top: 5px;" >
                        <itemtemplate>
                            <asp:Image runat="server" ID="img1" class="img-thumbnail" ImageUrl='<%#"img/"+Eval("image") %>' Height="500px" Width="500px" />
                        </itemtemplate>
                    </div>
                    <div>
                        <div style="margin-top:10vh;margin-bottom:5vh">
                            <h2 class="wow fadeInUp" data-wow-delay="0.1s" data-spy="scroll" style="font-family: Jokerman; font:bold; color: white;">Videos</h2>
                        </div>
                        <video controls width="150" height="100">
                            <source src="video/video.mp4" type="video/mp4"/>
                        </video>
                        <video controls width="150" height="100">
                            <source src="video/video.mp4" type="video/mp4"/>
                        </video>
                    <video controls width="150" height="100">
                            <source src="video/video.mp4" type="video/mp4"/>
                        </video><br />
                        <video controls width="150" height="100">
                            <source src="video/video.mp4" type="video/mp4"/>
                        </video>
                        <video controls width="150" height="100">
                            <source src="video/video.mp4" type="video/mp4"/>
                        </video>
                    <video controls width="150" height="100">
                            <source src="video/video.mp4" type="video/mp4"/>
                        </video><br />
                        <video controls width="150" height="100">
                            <source src="video/video.mp4" type="video/mp4"/>
                        </video>
                        <video controls width="150" height="100">
                            <source src="video/video.mp4" type="video/mp4"/>
                        </video>
                    <video controls width="150" height="100">
                            <source src="video/video.mp4" type="video/mp4"/>
                        </video><br />
                    </div>
                    <div   style="margin-top: 20px;">
                        <div id="price" >
                            <h2 class="wow fadeInUp" data-wow-delay="0.1s" data-spy="scroll" style="font-family: Jokerman; font:bold; color: white;">Prising :</h2>
                        </div>
                        <div style="margin-top: 20px;">
                            <h4>PHOTOGRAPHY </h4>
                           Rs. <asp:Label Text='<%# Bind("photo_p") %>' runat="server" ID="photo_pLabel" />   Per Photo
                        </div>
                        <div style="margin-top: 10px;">
                            <h4>VIDEOGRAPHY </h4>
                          Rs.  <asp:Label Text='<%# Bind("video_p") %>' runat="server" ID="Label2" />   Per day
                        </div>
                        <div style="margin-top: 10px;">
                            <h4>CINEMATIC VIDEOGRAPHY </h4>
                          Rs.  <asp:Label Text='<%# Bind("cinematic_video") %>' runat="server" ID="Label1" />       Per day
                        </div>
                        <div style="margin-top: 10px;">
                            <h4>PHOTO ALBUM</h4>
                            Rs. <asp:Label Text='<%# Bind("album_p") %>' runat="server" ID="Label3" />   Per 40 pages
                        </div>
                        <div style="margin-top: 20px;">
                            <h4>PAYMENT POLICY</h4>
                            <h5>
                                <pre style="color: antiquewhite">25% - At the Time of booking<br />65% - On Event date<br />10% - After deliverables are delivered
                            </pre>
                            </h5>
                        </div>
                    </div>
                </div>
                <div style="float: right;width: 60vh;color: black; background-color:#ffe6f0">
                    <div style=" position: -webkit-sticky;
  position: sticky;
  top: 0;">
                    <div>
                        <h3 class="glow" style="font-family: Jokerman; text-align: center">Perfect Studio</h3>
                        <asp:Label Text='<%# Bind("main_cat") %>' runat="server" ID="main_catTextBox" />
                        Photography in <asp:Label ID="location" runat="server" Text='<%# Bind("location") %>'></asp:Label>
                    </div>
                    <div><%--<asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="#price">--%>
                                                <h3 style="font-family: Jokerman; margin-left: 10px;">₹ <asp:Label ID="pric" runat="server" Text='<%# Bind("photo_p") %>'></asp:Label></h3>
<a href="#price" class="smoothScroll" style="color:black">
                        For 1 Day of Photo + Video (See Full Pricelist)
                    <%--</asp:LinkButton>--%></div></a>
                    <div>
                        <h2 style="color: black">Current Status</h2>
                        <p>Contact Details Received</p>
                        <div style="border-radius: 100%; border-color: black; align-items: center">
                            <h3 style="text-align: center">
                                <asp:LinkButton ID="LinkButton1" Font-Bold="true" BackColor="#ff3385" runat="server" Class="btn btn-success btn-block" BorderStyle="Double" PostBackUrl='<%# "bookingform.aspx?pid="+Eval("id") %>'>Book</asp:LinkButton></h3>
                        </div>
                    </div>
                </div></div>            
            </div>
            <!--    id:
            <asp:Label Text='<%# Eval("id") %>' runat="server" ID="idLabel" Visible="false" /><br />
            main_cat:
            <asp:Label Text='<%# Bind("main_cat") %>' runat="server" ID="main_catLabel" /><br />
            detail:
            <asp:Label Text='<%# Bind("location") %>' runat="server" ID="detailLabel" /><br />
            photo_p:
            video_p:
            <asp:Label Text='<%# Bind("video_p") %>' runat="server" ID="video_pLabel" /><br />
            album_p:
            <asp:Label Text='<%# Bind("album_p") %>' runat="server" ID="album_pLabel" /><br />
            image:
            <asp:Label Text='<%# Bind("image") %>' runat="server" ID="imageLabel" /><br />
            -->
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:perfectstudio %>' SelectCommand="SELECT * FROM [venders] WHERE ([id] = @id)">

        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="pid" Name="id" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>


