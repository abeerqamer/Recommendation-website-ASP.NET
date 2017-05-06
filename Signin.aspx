<%@ Page Title="" Language="C#" MasterPageFile="~/Sign.master" AutoEventWireup="true" CodeFile="Signin.aspx.cs" Inherits="Signin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="StyleSheet3.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<h3>SignIn</h3><br />
        <asp:Label ID="Label5" runat="server" Text="UserName"></asp:Label><br />
        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtname" EnableClientScript="False" ErrorMessage="UserName is Missing" ForeColor="#CC0000">*</asp:RequiredFieldValidator><br /><br />
        <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label><br />
        <asp:TextBox ID="txtpwd" TextMode="Password" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtpwd" EnableClientScript="False" ErrorMessage="Password is Missing" ForeColor="#CC0000">*</asp:RequiredFieldValidator><br /><br />
        <asp:Button ID="btnsignin" runat="server" Text="Login" OnClick="btnsignin_Click1" /><br />--%>
    <div id="center" class="form-group">

        <h1>Sign in</h1><br />


        <asp:Label ID="Label5" runat="server" Text="User Name"></asp:Label><br /> <br />
        <asp:TextBox ID="txtname" PlaceHolder="Enter UserName" AutoComplete="off" CssClass="form-control animate_text" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtname" EnableClientScript="False" ErrorMessage="UserName is Missing" ForeColor="#CC0000">*</asp:RequiredFieldValidator><br /><br />
        <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label><br /> <br />
        <asp:TextBox ID="txtpwd" PlaceHolder="Enter Password" AutoComplete="off" CssClass="form-control animate_text" TextMode="Password" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtpwd" EnableClientScript="False" ErrorMessage="Password is Missing" ForeColor="#CC0000">*</asp:RequiredFieldValidator><br /><br />
        <asp:LinkButton ID="btnsignin" CssClass="ui inverted basic blue button huge circular right floated" runat="server" OnClick="btnsignin_Click1">Login<i class="arrow right icon"></i> </asp:LinkButton>
        <asp:Label ID="lblmsg" runat="server" Text="" ForeColor="White" Font-Bold="true" Font-Italic="true"></asp:Label>
        <br />


       

    </div>
</asp:Content>

