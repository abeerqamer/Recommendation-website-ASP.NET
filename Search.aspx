<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet4.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
    
        <asp:DataList ID="DataList1"  CssClass="ui basic bordered table" runat="server" DataSourceID="SqlDataSource1" Width="100%" OnItemCommand="DataList1_ItemCommand" DataKeyField="QId" BorderStyle="None" ForeColor="White" BorderColor="#CCCCCC" BorderWidth="1px" CellPadding="4" GridLines="Horizontal">
            <ItemTemplate>
               
                <asp:Label ID="QuestionsLabel" CssClass="Ques" runat="server" Text='<%# Eval("Question") %>' />
                <br /><br />
                <span class="cat">Category:</span>
                <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                <br />
                <span class="cat">By:</span>
                <asp:Label ID="ByLabel" runat="server" Text='<%# Eval("By") %>' />
                <br />
                <span class="cat">Vote:</span>
                <asp:Label ID="UpvoteLabel" runat="server" Text='<%# Eval("Upvote") %>' />
                <br />
 <br />
                &nbsp;&nbsp;<asp:LinkButton ID="btnupvote" CssClass="ui button inverted green" runat="server" CommandArgument='<%# Eval("QId") %>' CommandName="UpVote"><i class="thumbs up icon"></i> UPVOTE</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="btndownvote" CssClass="ui button inverted red" runat="server" CommandArgument='<%# Eval("QId") %>' CommandName="DownVote" ><i class="thumbs down icon"></i> DOWNVOTE</asp:LinkButton>
                <br />
                <br />
                &nbsp;
                <asp:Button ID="btnans" CssClass="ui button big inverted basic" runat="server" Text="Answer" CommandArgument='<%# Eval("QId") %>' CommandName="Answer" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnviewans" CssClass="ui button big inverted basic"  runat="server" Text="View Answer" CommandArgument='<%# Eval("QId") %>' CommandName="ViewAnswer" />
                <br /><br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <FooterTemplate>
<asp:Label Visible='<%#bool.Parse((DataList1.Items.Count==0).ToString())%>' runat="server" ID="lblNoRecord" Font-Italic="true" Font-Bold="true" Font-Size="Large" Text="No Record Found!"></asp:Label>
</FooterTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:recomConnectionString1 %>" SelectCommand="SELECT Question_tb.Question, Question_tb.Category,Question_tb.QId, User_tb.Name AS &quot;By&quot;,
(select sum(Upvote) from Upvote_tb where Question_tb.QId=Upvote_tb.QId) AS &quot;UpVote&quot;
FROM Question_tb INNER JOIN User_tb ON Question_tb.UId = User_tb.UId
WHERE ([Question] LIKE '%' + @Question + '%')">
            <SelectParameters>
                <asp:QueryStringParameter Name="Question" QueryStringField="search" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
</asp:Content>

