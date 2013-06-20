<%@ Page Title="" Language="C#" MasterPageFile="~/BootstrapASP.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Contact Form</h1>
    
    <p>Below is a sample contact form, currently it is not going anywhere, its just to show how to use bootstrap forms with asp.net.</p>

    <fieldset>
        <legend>Jennifer Tesolin</legend>
        <label>Subject</label>
        <asp:TextBox id="subjectMailMessage" placeholder="Type your subject here..." CssClass="span7 input-large" runat="server" />
        
        <label>Message</label>
        <asp:TextBox id="bodyMailMessage" placeholder="Type your message here" runat="server"  CssClass="span7 input-large" Rows="10" TextMode="MultiLine" />

  </fieldset>

    <asp:Button ID="submitForm" runat="server" CssClass="btn" Text="Submit" OnClick="submitForm_Click" />

    <asp:Label ID="lblResultsDisplay" runat="server" Text="" />

</asp:Content>

