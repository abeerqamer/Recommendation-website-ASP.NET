<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet3.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="center" class="form-group container">
        <h1 class="heading">RECOM</h1>
        <h5>type to get recommended...</h5> <br />
        <asp:TextBox ID="txtsearch" CssClass="form-control" PlaceHolder="type your search here" MaxLength="100" runat="server" OnTextChanged="txtsearch_TextChanged"></asp:TextBox> <br />
        <h3>OR <span>answers questions</span></h3>
        
        
    

        <div id="group" class="btn">

                 <asp:LinkButton ID="btnfood" CssClass="ui button big inverted olive basic"  runat="server" OnClick="btnfood_Click1"><i class="food icon"></i>food</asp:LinkButton>
                 <asp:LinkButton ID="btncloths" CssClass="ui button big inverted red basic"  runat="server" OnClick="btncloths_Click" ><i class="child icon"></i>cloths</asp:LinkButton>
                 <asp:LinkButton ID="btntvseries" CssClass="ui button big inverted orange basic" runat="server" OnClick="btntvseries_Click" ><i class="desktop icon"></i>tv series</asp:LinkButton>
                 <asp:LinkButton ID="btnmovies" CssClass="ui button big inverted pink basic" runat="server" OnClick="btnmovies_Click" ><i class="film icon"></i>movies</asp:LinkButton>  <br /><br />  
                 <asp:LinkButton ID="btnbooks" CssClass="ui button big inverted blue basic" runat="server" OnClick="btnbooks_Click" ><i class="book icon"></i>books</asp:LinkButton>
                 <asp:LinkButton ID="btnreligion" CssClass="ui button big inverted orange basic" runat="server" OnClick="btnreligion_Click" ><i class="moon icon"></i>religion</asp:LinkButton>          
                 <asp:LinkButton ID="btnmusic" CssClass="ui button big inverted teal basic" runat="server" OnClick="btnmusic_Click" ><i class="music icon"></i>music</asp:LinkButton>           
                 <asp:LinkButton ID="btnsports" CssClass="ui button big inverted red basic" runat="server" OnClick="btnsports_Click" ><i class="bicycle icon"></i>sports</asp:LinkButton>
        </div>
        </div>
</asp:Content>
           

           
            
                   


