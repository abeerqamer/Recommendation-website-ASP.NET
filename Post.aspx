<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="Post.aspx.cs" Inherits="Post" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="StyleSheet3.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--<div>
        <asp:Label ID="Label1" runat="server" Text="Post"></asp:Label><br />
        <asp:TextBox ID="txtpost" runat="server" Height="117px" Width="240px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpost" EnableClientScript="false" ErrorMessage="Enter something" ForeColor="#CC0000">*</asp:RequiredFieldValidator><br />
        <asp:TextBox ID="txtcategory" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtcategory" EnableClientScript="false" ErrorMessage="select some category" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        <asp:Button ID="btnpost" runat="server" Text="Post" OnClick="btnpost_Click" /><br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
    </div>--%>

    <div id="center" class="form form-group">
        <h1>Post a question</h1>
        <hr /> 
        <asp:TextBox ID="txtpost" CssClass="form-control" autocomplete="off" TextMode="MultiLine" Rows="10" runat="server" ></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="#ff3300" EnableClientScript="False" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtpost"></asp:RequiredFieldValidator>
  <%--      <asp:TextBox ID="txtcategory"  CssClass="form-control form-inline"  autocomplete="off" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" EnableClientScript="False" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtcategory"></asp:RequiredFieldValidator>
        <asp:Button ID="btnpost"  Cssclass ="ui inverted red basic button" runat="server" Text="Post" OnClick="btnpost_Click" />
         <asp:Button ID="btndiscard"   Cssclass ="ui inverted red basic button" runat="server" Text="discard" />--%>
        <div id="group" class="btn">

                <asp:LinkButton ID="btnfood" CssClass="ui button big inverted olive basic"  runat="server" OnClick="btnfood_Click"><i class="food icon"></i>food</asp:LinkButton>
                 <asp:LinkButton ID="btncloths" CssClass="ui button big inverted purple basic"  runat="server" OnClick="btncloths_Click" ><i class="child icon"></i>cloths</asp:LinkButton>
                 <asp:LinkButton ID="btntvseries" CssClass="ui button big inverted violet basic" runat="server" OnClick="btntvseries_Click" ><i class="desktop icon"></i>tv series</asp:LinkButton>
                 <asp:LinkButton ID="btnmovies" CssClass="ui button big inverted brown basic" runat="server" OnClick="btnmovies_Click" ><i class="film icon"></i>movies</asp:LinkButton>  <br /><br />  
                 <asp:LinkButton ID="btnbooks" CssClass="ui button big inverted blue basic" runat="server" OnClick="btnbooks_Click" ><i class="book icon"></i>books</asp:LinkButton>
                 <asp:LinkButton ID="btnreligion" CssClass="ui button big inverted orange basic" runat="server" OnClick="btnreligion_Click" ><i class="moon icon"></i>religion</asp:LinkButton>          
                 <asp:LinkButton ID="btnmusic" CssClass="ui button big inverted teal basic" runat="server" OnClick="btnmusic_Click" ><i class="music icon"></i>music</asp:LinkButton>           
                 <asp:LinkButton ID="btnsports" CssClass="ui button big inverted red basic" runat="server" OnClick="btnsports_Click" ><i class="bicycle icon"></i>sports</asp:LinkButton>
    </div>

</asp:Content>

