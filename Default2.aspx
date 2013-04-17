<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!--This page displays the information that the user entered on the previous page and asks for confirmation that the info is correct.
        It allows the user to edit the information and maintains the validation controls for Last Name, Birthday and Email.-->
    <h3>Please Confirm the Entered Information:</h3>
     <table>
        <tr>
            <td>Last Name:</td>
            <td><asp:TextBox ID="txtCheckLastName" runat="server"></asp:TextBox></td>
            <td class="reqfield">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Last Name Required" ControlToValidate="txtCheckLastName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>First Name:</td>
            <td><asp:TextBox ID="txtCheckFirstName" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>
        <tr>
            <td>Birthday:</td>
            <td><asp:TextBox ID="txtCheckBirthday" runat="server"></asp:TextBox></td>
            <td class="reqfield">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Birthday Required" ControlToValidate="txtCheckBirthday"></asp:RequiredFieldValidator>
             </td>
        </tr>
        <tr>
            <td>Email Address:</td>
            <td><asp:TextBox ID="txtCheckEmail" runat="server"></asp:TextBox></td>
            <td class="reqfield">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter a Valid Email Address" ControlToValidate="txtCheckEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td></td>
            <td class="subbutton"><asp:Button ID="Button2" runat="server" Text="Confirm" OnClick="Button2_Click" /></td>
        </tr>
    </table>

</asp:Content>

