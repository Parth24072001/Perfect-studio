<%@ Page Title="" Language="C#" MasterPageFile="~/Project/MasterPage.master" AutoEventWireup="true" CodeFile="showcat.aspx.cs" Inherits="showcat" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="container" style="margin-top:15vh;">
    <div class="accordion-item">
        
    </div>
		<div class="content clearfix" style="margin-top:10vh; margin-left:5vh">

            <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" DataSourceID="SqlDataSource3" DataKeyField="id" RepeatDirection="Horizontal">
                <SeparatorTemplate>
                    <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
                </SeparatorTemplate>

                <ItemTemplate>
                    <div class="cube-container">
                        <div class="photo-cube">
        <asp:Image ID="Image1" runat="server" class="front" ImageUrl='<%# "img/"+Eval("image") %>' />
                            <div class="back photo-desc" style="background-color:#000000;color:white">
                                <h2 style="margin-top: 0px;">
                                    <asp:Label ID="main_catLabel" runat="server" Font-Bold="true" Text='<%# Eval("main_cat") %>' />

                                </h2><h4>
                                <p>
                                    <asp:Label ID="detailLabel" runat="server" Font-Bold="true" Text='<%# Eval("location") %>' />
                                </p>
                                <p style="margin-top: -15px;">
                                    photography:
                                    <asp:Label ID="photo_pLabel" runat="server" Font-Bold="true" Text='<%# Eval("photo_p") %>' />
                                </p></h4>
                               <h5 style="margin-top:-2vh"> <asp:LinkButton runat="server" Text="More" Font-Bold="true" ForeColor="#ffffff" PostBackUrl='<%# "moredetail.aspx?pid="+Eval("id") %>'></asp:LinkButton></h5>
                            </div>
                            <asp:Image ID="Image2" runat="server" class="left" ImageUrl='<%# "img/"+Eval("image") %>' />
                            <asp:Image ID="Image3" runat="server" class="right" ImageUrl='<%# "img/"+Eval("image") %>' />

                        </div>
                    </div>

                    <%-- <asp:Image ID="Image1" runat="server" class="front" ImageUrl='<%# "img/Wedding/"+Eval("image") %>'/>--%>

                    <%-- <div class="cube-container">
				<div class="photo-cube">
                    <asp:Image ID="Image1" runat="server" class="front" ImageUrl='<%# "~/img/Wedding/"+Eval("image") %>'/>
					<div class="back photo-desc">
					  <h3>Space Images</h3>
					  <p>Aenean lacinia bibendum nulla sed consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
						<a href="#" class="button">download</a>
					</div>
                    <asp:Image ID="Image2" runat="server" class="left" ImageUrl='<%# "~/img/Wedding/"+Eval("image") %>'/>
                    <asp:Image ID="Image3" runat="server" class="right" ImageUrl='<%# "~/img/Wedding/"+Eval("image") %>' />

				</div>
			</div>
                    --%>
                </ItemTemplate>

            </asp:DataList>
               
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:perfectstudio %>" SelectCommand="SELECT * FROM [venders] WHERE ([main_cat] = @main_cat2)">
                <SelectParameters>
                    <asp:QueryStringParameter QueryStringField="id" Name="main_cat2" Type="String"></asp:QueryStringParameter>
                </SelectParameters>
            </asp:SqlDataSource>
               
    </div></div>
    
</asp:Content>


