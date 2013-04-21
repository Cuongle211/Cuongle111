<%@ Page Title="About Me" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMain" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="About myself" CssClass="h2centerblue" Width="572px"></asp:Label>
   
    <section>
        
        <asp:Image ID="Image1" runat="server" AlternateText="My Picture" DescriptionUrl="This is Me" ImageUrl="~/Images/tungs_square.png" Height="200px" Width="200px" />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Education" CssClass="h3purple"></asp:Label>
       
        <asp:BulletedList ID="BulletedList1" runat="server">
            <asp:ListItem Text="2013, Student, California State University, Long Beach"></asp:ListItem>
            <asp:ListItem Text="2012, Student, Long Beach City College"></asp:ListItem>
        </asp:BulletedList>
        

        <asp:Label ID="Label3" runat="server" Text="Experience" CssClass="h3purple"></asp:Label>
        <asp:BulletedList ID="BulletedList2" runat="server" BulletStyle="Numbered">
            <asp:ListItem Text="2009, Math Tutor, Long Beach City College, 1 year"></asp:ListItem>
            <asp:ListItem Text="2003, Operations Specialist, United States Navy, 5 years"></asp:ListItem>
        </asp:BulletedList>
        
      
        <asp:Label ID="Label4" runat="server" Text="Expectations for this course" CssClass="h3purple"></asp:Label>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Make real time drawing application, make a transaction system, and make interactive website designs" Width="380px"></asp:Label>
        
    </section>
</asp:Content>

