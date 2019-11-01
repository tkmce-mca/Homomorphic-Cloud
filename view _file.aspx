<%@ Page Title="" Language="C#" MasterPageFile="~/a.master" AutoEventWireup="true" CodeFile="view _file.aspx.cs" Inherits="view__file" %>

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
            <td bgcolor="White">
                Keyword</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="169px"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" 
        Width="733px" Height="242px" CellPadding="3" BackColor="#DEBA84" 
        BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2" 
        onitemcommand="DataGrid1_ItemCommand">
        <AlternatingItemStyle 
            HorizontalAlign="Justify" />
        <Columns>
            <asp:BoundColumn DataField="id" HeaderText="USER_ID">
                <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
                    Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Justify" />
            </asp:BoundColumn>
            <asp:BoundColumn DataField="filename" HeaderText="FILENAME">
                <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
                    Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Justify" />
            </asp:BoundColumn>
            <asp:BoundColumn DataField="filepathe" HeaderText="FILETYPE">
                <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
                    Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Justify" />
            </asp:BoundColumn>
            <asp:ButtonColumn Text="DOWNLOAD">
                <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" 
                    Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Justify" />
            </asp:ButtonColumn>
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle Font-Bold="True" HorizontalAlign="Center" 
            VerticalAlign="Top" BackColor="#A55129" ForeColor="White" />
        <ItemStyle HorizontalAlign="Justify" BackColor="#FFF7E7" ForeColor="#8C4510" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" Mode="NumericPages" />
        <SelectedItemStyle Font-Bold="True" HorizontalAlign="Justify" 
            BackColor="#738A9C" ForeColor="White" />
    </asp:DataGrid>
</asp:Content>

