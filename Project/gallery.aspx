<%@ Page Title="" Language="C#" MasterPageFile="~/Project/MasterPage.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallary" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <div class="container" style="margin-top:5vh; float:right">

        <div class="accordion-item" style="float: left; margin-top: 10vh"></div>
<%--            <asp:Button ID="All" runat="server" Text="All" class="button button-5" Style="width:90vh; margin-left: -20px; background-color:burlywood; color: black; border-bottom-style: double" PostBackUrl="~/Project/gallery.aspx" /><br />--%>
            <div style="display:flex;margin-top:4vh;margin-left:5vh;" data-aos="fade-left" data-aos-duration="1s">
                <asp:Button ID="Button6"  runat="server" Text="Wedding" class="button button-5" Style=" width: 30vh; margin-left: -20px; background-color:burlywood; color: black; border-bottom-style: double" PostBackUrl="~/Project/gallery.aspx?id=Wedding" />
               <asp:Button ID="Button7" runat="server" Text="Pre-Wedding" class="button button-5" Style="width: 30vh; background-color:burlywood; color: black; border-bottom-style: double;" PostBackUrl="~/Project/gallery.aspx?id=Pre-Wedding" />
                <asp:Button ID="Button8" runat="server" Text="Birthday" class="button button-5" Style="width: 30vh; background-color:burlywood; color: black; border-bottom-style: double;" PostBackUrl="~/Project/gallery.aspx?id=Birthday" />
                <asp:Button ID="Button1" runat="server" Text="Baby Shower" class="button button-5" Style="width: 30vh; background-color:burlywood; color: black; border-bottom-style: double;" PostBackUrl="~/Project/gallery.aspx?id=Baby+Shower" />
            </div>
        </div>
        
        <div class="content clearfix" style="margin-top:10vh; margin-left:25vh;">

            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal">

                <SeparatorTemplate>
                    <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
                </SeparatorTemplate>

                <ItemTemplate>
                    
                    <div class="cube-container">
                        <div class="photo-cube">

                            <asp:Image ID="Image1" runat="server" class="front" ImageUrl='<%#"img/"+Eval("image") %>' />
                            <asp:Image ID="Image4" runat="server" class="back " ImageUrl='<%# "img/"+Eval("image") %>' />
                            <asp:Image ID="Image2" runat="server" class="left" ImageUrl='<%# "img/"+Eval("image") %>' />
                            <asp:Image ID="Image3" runat="server" class="right" ImageUrl='<%# "img/"+Eval("image") %>' />
                            
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>





            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:perfectstudio %>' SelectCommand="SELECT [image] FROM [venders] WHERE ([main_cat] = @main_cat)">
                <SelectParameters>
                    <asp:QueryStringParameter QueryStringField="id" Name="main_cat" Type="String"></asp:QueryStringParameter>
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>

</asp:Content>


