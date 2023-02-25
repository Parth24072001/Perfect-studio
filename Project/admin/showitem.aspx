<%@ Page Title="" Language="C#" MasterPageFile="~/Project/admin/MasterPage2.master" AutoEventWireup="true" CodeFile="showitem.aspx.cs" Inherits="admin_showitem" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <div class="container">
        <header class="main-header clearfix">
            <h1 class="name" style="font-family: Engravers MT">Event Detail<span></span></h1>
<%--            <asp:Button ID="Button1" runat="server" CssClass="button button-5" Text="Add Event" PostBackUrl="~/admin/index.aspx" Style="margin-top: 10vh; background-color:darkslateblue" />--%>
        </header>

        <div class="content clearfix" style="margin-top:-10vh" >
                        <asp:Button ID="Button1" runat="server" CssClass="button" Text="Add Event" PostBackUrl="~/admin/addevent.aspx" Style="margin-left:-30vh;width:189vh;background-color:darkslateblue" />

            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="id" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="25" CellSpacing="20" GridLines="Horizontal" Font-Bold="true" Style="margin-left:-30vh;">

                <AlternatingRowStyle BackColor="#F7F7F7"></AlternatingRowStyle>
                <Columns>

                    <asp:TemplateField HeaderText="Edit">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl='<%#"edititem.aspx?id="+Eval("id") %>' Text="Edit">
                            </asp:LinkButton>
                        
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl='<%#"deleteitem.aspx?id="+Eval("id")%>' Text="Delete"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>


                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>
                    <asp:BoundField DataField="main_cat" HeaderText="main_cat" SortExpression="main_cat"></asp:BoundField>
                    <asp:BoundField DataField="location" HeaderText="location" SortExpression="location"></asp:BoundField>
                    <asp:BoundField DataField="detail" HeaderText="detail" SortExpression="detail"></asp:BoundField>
                    <asp:BoundField DataField="photo_p" HeaderText="photo_p" SortExpression="photo_p"></asp:BoundField>
                    <asp:BoundField DataField="video_p" HeaderText="video_p" SortExpression="video_p"></asp:BoundField>
                    <asp:BoundField DataField="album_p" HeaderText="album_p" SortExpression="album_p"></asp:BoundField>
                    <asp:BoundField DataField="cinematic_video" HeaderText="cinematic_video" SortExpression="cinematic_video"></asp:BoundField>
                    <asp:TemplateField HeaderText="image" SortExpression="image">
                        <EditItemTemplate>
                            <asp:TextBox runat="server" Text='<%#Bind("image")%>' ID="TextBox1"></asp:TextBox>

                        </EditItemTemplate>
                        <ItemTemplate>

                            <asp:Image runat="server" ID="img1" ImageUrl='<%#"img/"+Eval("image")%>' Height="100px" Width="100px" />
                        </ItemTemplate>
                    </asp:TemplateField>


                </Columns>

                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C"></FooterStyle>

                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7"></HeaderStyle>

                <PagerStyle HorizontalAlign="Right" BackColor="#E7E7FF" ForeColor="#4A3C8C"></PagerStyle>

                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C"></RowStyle>

                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7"></SelectedRowStyle>

                <SortedAscendingCellStyle BackColor="#F4F4FD"></SortedAscendingCellStyle>

                <SortedAscendingHeaderStyle BackColor="#5A4C9D"></SortedAscendingHeaderStyle>

                <SortedDescendingCellStyle BackColor="#D8D8F0"></SortedDescendingCellStyle>

                <SortedDescendingHeaderStyle BackColor="#3E3277"></SortedDescendingHeaderStyle>
            </asp:GridView>


            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:perfectstudio %>" SelectCommand="SELECT * FROM [venders]"></asp:SqlDataSource>


        </div>
    </div>

</asp:Content>
            