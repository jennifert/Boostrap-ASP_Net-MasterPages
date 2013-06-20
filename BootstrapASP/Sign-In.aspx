<%@ Page Title="" Language="C#" MasterPageFile="~/BootstrapASP.Master" AutoEventWireup="true" CodeFile="Sign-In.aspx.cs" Inherits="Sign_In" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-signin">
        <h2 class="form-signin-heading">Please sign in</h2>
        <asp:TextBox id="loginName" placeholder="E-mail address" CssClass="input-block-level" runat="server" />

        <asp:TextBox id="loginPassword" placeholder="Password" CssClass="input-block-level" runat="server" />
        <label class="checkbox">
            <asp:CheckBox ID="rememberMeCheckbox" Text="Remember me" runat="server" />
        </label>
        
        <asp:Button ID="Submit" CssClass="btn btn-large btn-primary" Text="Sign-In" runat="server" />
    </div>

</asp:Content>

