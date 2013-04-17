<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Register</h2>

    <!--This code creates a table asking the user for their registration information. It includes validation for the Last Name, Birthday, and Email fields.-->
    <table>
        <tr>
            <td>Enter Last Name:</td>
            <td><asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
            <td class="reqfield">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Last Name Required" ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Enter First Name:</td>
            <td><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td>Enter Birthday:</td>
            <td><asp:TextBox ID="txtBirthday" runat="server"></asp:TextBox></td>
            <td class="reqfield">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Birthday Required" ControlToValidate="txtBirthday"></asp:RequiredFieldValidator>
             </td>
        </tr>
        <tr>
            <td>Enter Email Address:</td>
            <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
            <td class="reqfield">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter a Valid Email Address" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td></td>
            <td class="subbutton"><asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" /></td>
        </tr>
    </table>

</asp:Content>

