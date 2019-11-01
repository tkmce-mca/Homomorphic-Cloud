<%@ Page Title="" Language="C#" MasterPageFile="~/a.master" AutoEventWireup="true" CodeFile="VIEW FILEblock.aspx.cs" Inherits="VIEW_FILE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
                            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                            CellPadding="3" CellSpacing="2" Height="251px" 
                            onitemcommand="DataGrid1_ItemCommand" 
                            onselectedindexchanged="DataGrid1_SelectedIndexChanged" Width="643px">
                            <Columns>
                                <asp:BoundColumn DataField="id" HeaderText="S_NO"></asp:BoundColumn>
                                <asp:BoundColumn DataField="name" HeaderText="NAME"></asp:BoundColumn>
                                <asp:BoundColumn DataField="address" HeaderText="ADDRESS"></asp:BoundColumn>
                                <asp:BoundColumn DataField="email" HeaderText="EMAIL"></asp:BoundColumn>
                                <asp:BoundColumn DataField="mobile" HeaderText="MOBILE"></asp:BoundColumn>
                                <asp:ButtonColumn Text="block"></asp:ButtonColumn>
                            </Columns>
                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                            <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" Mode="NumericPages" />
                            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        </asp:DataGrid>
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Height="41px" onclick="Button1_Click" 
                            Text="View Blocked Users" Width="165px" />
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <asp:DataGrid ID="DataGrid2" runat="server" AutoGenerateColumns="False" 
                            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                            CellPadding="3" CellSpacing="2" Height="203px" Width="662px">
                            <Columns>
                                <asp:BoundColumn DataField="id" HeaderText="S_No"></asp:BoundColumn>
                                <asp:BoundColumn DataField="name" HeaderText="NAME"></asp:BoundColumn>
                                <asp:BoundColumn DataField="address" HeaderText="ADDRESS"></asp:BoundColumn>
                                <asp:BoundColumn DataField="email" HeaderText="EMAIL"></asp:BoundColumn>
                                <asp:BoundColumn DataField="mobile" HeaderText="MOBILE"></asp:BoundColumn>
                            </Columns>
                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                            <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" Mode="NumericPages" />
                            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        </asp:DataGrid>
                    </asp:View>
                </asp:MultiView>
            </td>
        </tr>
        </table>
</asp:Content>

