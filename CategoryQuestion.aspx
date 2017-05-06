<%@ Page Title="" Language="C#" MasterPageFile="~/Default.master" AutoEventWireup="true" CodeFile="CategoryQuestion.aspx.cs" Inherits="Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet4.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <asp:DataList ID="DataList1" CssClass="ui basic bordered table" runat="server" DataSourceID="SqlDataSource1" Width="100%" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnItemCommand="DataList1_ItemCommand" DataKeyField="QId"  BorderStyle="None" ForeColor="White">
            <ItemStyle Wrap="False" />
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
            <SeparatorStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
                   <FooterTemplate>
<asp:Label Visible='<%#bool.Parse((DataList1.Items.Count==0).ToString())%>' runat="server" ID="lblNoRecord" Font-Italic="true" Font-Bold="true" Font-Size="Large" Text="No Record Found!"></asp:Label>
</FooterTemplate>
             </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:recomConnectionString1 %>" SelectCommand="SELECT Question_tb.Question, Question_tb.Category, [User_tb].Name AS [By],
 (select sum(Upvote) from Upvote_tb where Question_tb.QId=Upvote_tb.QId) AS UpVote,
 Question_tb.QId FROM Question_tb INNER JOIN [User_tb] ON Question_tb.UId = [User_tb].UID
 WHERE (Question_tb.Category = @Category)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="" Name="Category" QueryStringField="Category" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>

</asp:Content>

