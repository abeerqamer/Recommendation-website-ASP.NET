<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="AllQuestion.aspx.cs" Inherits="AllQuestion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    
        <asp:DataList ID="DataList1" CssClass="ui basic table" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" Width="100%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                Questions:
                <asp:Label ID="QuestionsLabel" runat="server" Text='<%# Eval("Question") %>' />
                <br />
                Category:
                <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                <br />
                By:
                <asp:Label ID="ByLabel" runat="server" Text='<%# Eval("By") %>' />
                <br />
                UpVote:
                <asp:Label ID="UpVoteLabel" runat="server" Text='<%# Eval("UpVote") %>' />
                <br />
                &nbsp;&nbsp;<asp:Button ID="btnupvote" runat="server" CommandArgument='<%# Eval("QId") %>' CommandName="UpVote" Text="UpVote" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btndownvote" runat="server" CommandArgument='<%# Eval("QId") %>' CommandName="DownVote" Text="DownVote" />
                <br />
                <br />
                &nbsp;
                <asp:Button ID="btnanswer" runat="server" Text="Answer" CommandArgument='<%# Eval("QId") %>' CommandName="Answer" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnviewanswer" runat="server" Text="View Answer" CommandArgument='<%# Eval("QId") %>' CommandName="ViewAnswer" />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#616161" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:recomConnectionString1 %>" SelectCommand="SELECT Question_tb.Question, Question_tb.Category, Question_tb.QId, [User_tb].Name AS [By],
(select sum(Upvote) from Upvote_tb where Question_tb.QId=Upvote_tb.QId) AS [UpVote]
 FROM Question_tb INNER JOIN [User_tb] ON Question_tb.UId = [User_tb].UID"></asp:SqlDataSource>
    
    </div>
</asp:Content>

