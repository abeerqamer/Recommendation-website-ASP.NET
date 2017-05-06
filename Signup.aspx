<%@ Page Title="" Language="C#" MasterPageFile="~/Sign.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet3.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<h3>SignUp</h3><br />
        <asp:Label ID="Label2" runat="server" Text="UserName"></asp:Label><br />
        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" EnableClientScript="False" ErrorMessage="UserName is Missing" ForeColor="#CC0000">*</asp:RequiredFieldValidator><br />
        <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label><br />
        <asp:TextBox ID="txtemail" TextMode="Email" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemail" EnableClientScript="False" ErrorMessage="Email is Missing" ForeColor="#CC0000">*</asp:RequiredFieldValidator><br />
        <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label><br />
        <asp:TextBox ID="txtpwd" TextMode="Password" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpwd" EnableClientScript="False" ErrorMessage="Password is Missing" ForeColor="#CC0000">*</asp:RequiredFieldValidator><br />
        <asp:Button ID="btnsignup" runat="server" Text="SignUp" OnClick="btnsignup_Click" /><br /><br />--%>

     <div id="center" class="form form-group">
        <h1>Sign up</h1>
         <asp:Label ID="Label2" runat="server" Text="User Name"></asp:Label><br /> <br />
        <asp:TextBox ID="txtname" PlaceHolder="Enter UserName" AutoComplete="off" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" EnableClientScript="False" ErrorMessage="UserName is Missing" ForeColor="#CC0000">*</asp:RequiredFieldValidator><br />
        <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label><br /> <br />
        <asp:TextBox ID="txtemail" PlaceHolder="Enter Email Address"  AutoComplete="off" CssClass="form-control" TextMode="Email" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtemail" EnableClientScript="False" ErrorMessage="Email is Missing" ForeColor="#CC0000">*</asp:RequiredFieldValidator><br />
        <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label><br /> <br />
        <asp:TextBox ID="txtpwd" PlaceHolder="Enter Password" AutoComplete="off" CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpwd" EnableClientScript="False" ErrorMessage="Password is Missing" ForeColor="#CC0000">*</asp:RequiredFieldValidator><br />
        <asp:LinkButton ID="btnsignup" runat="server" CssClass="ui inverted basic blue button huge circular right floated" OnClick="btnsignup_Click">sign up  <i class="arrow right icon"></i> </asp:LinkButton> 
         <asp:Label ID="lblmsg" runat="server" Text="" ForeColor="White" Font-Bold="true" Font-Italic="true"></asp:Label>
         <br /><br />

    </div>
</asp:Content>

