<%@ Page Title="" Language="C#" MasterPageFile="~/login.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    .style2
    {
        width: 341px;
    }
    .style3
    {
        width: 341px;
        height: 46px;
    }
    .style4
    {
        height: 46px;
    }
    .style5
    {
        width: 341px;
        height: 48px;
    }
    .style6
    {
        height: 48px;
    }
        .style7
        {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style3">
            </td>
            <td class="style4">
                <span class="style7"><strong>USER NAME</strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="111px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="**" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style4">
                </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:homomorphicConnectionString %>" SelectCommand="SELECT * FROM [file]"></asp:SqlDataSource>
            </td>
            <td class="style6">
                <span class="style7">PASSWORD</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" Height="21px" Width="111px" 
                    TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="**" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style6">
                </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;<asp:Button ID="Button1" runat="server" Text="LOGIN" 
                    onclick="Button1_Click" Height="33px" Width="90px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

