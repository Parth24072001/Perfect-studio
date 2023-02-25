<%@ Page Title="" Language="C#" MasterPageFile="~/Project/admin/MasterPage2.master" AutoEventWireup="true" CodeFile="userdata.aspx.cs" Inherits="admin_userdata" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <div class="container">
        <header class="main-header clearfix">
            <h1 class="name" style="font-family: Engravers MT">User Detail<span></span></h1>
            <%--            <asp:Button ID="Button1" runat="server" CssClass="button button-5" Text="Add Event" PostBackUrl="~/admin/index.aspx" Style="margin-top: 10vh; background-color:darkslateblue" />--%>
        </header>

        <div class="content clearfix" style="margin-top: -10vh">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="25" CellSpacing="20" GridLines="Horizontal" Font-Bold="true" Style="margin-left: 4vh;">

                <AlternatingRowStyle BackColor="#F7F7F7"></AlternatingRowStyle>
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username"></asp:BoundField>
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email"></asp:BoundField>
                    <asp:BoundField DataField="contactno" HeaderText="contactno" SortExpression="contactno"></asp:BoundField>
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address"></asp:BoundField>
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password"></asp:BoundField>
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

        </div>
    </div>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:perfectstudio %>' SelectCommand="SELECT * FROM [userdata] WHERE ([roll] = @roll)">
        <SelectParameters>
            <asp:Parameter DefaultValue="User" Name="roll" Type="String"></asp:Parameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


