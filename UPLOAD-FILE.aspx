<%@ Page Title="" Language="C#" MasterPageFile="~/a.master" AutoEventWireup="true" CodeFile="UPLOAD-FILE.aspx.cs" Inherits="UPLOAD_FILE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 96%;
            height: 184px;
        }
        .style2
        {
            width: 230px;
        }
        .style3
        {
            width: 230px;
            height: 73px;
        }
        .style4
        {
            height: 73px;
        }
        .style5
        {
            width: 230px;
            color: #FFFFFF;
        }
    </style>sa
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style5">
                <strong><em>FILE NAME</em></strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="**" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <strong><em>FILE</em></strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="247px" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td style="margin-left: 40px">
                <asp:Button ID="Button2" runat="server" Text="UP" onclick="Button2_Click" 
                    Width="130px" />
            </td>
        </tr>
        <tr>
            <td class="style3">
            </td>
            <td class="style4" style="margin-left: 40px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="UPLOAD" 
                    Visible="False" />
            </td>
        </tr>
    </table>
</asp:Content>