<%@ Page Language="c#" CodeBehind="Main.aspx.cs" AutoEventWireup="false" Inherits="thepuzzler_3dstyle.MainWebForm" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
<head>
    <title>The Puzzler - 3D Style</title>
    <meta content="False" name="vs_snapToGrid">
    <meta content="True" name="vs_showGrid">
    <meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
    <meta content="C#" name="CODE_LANGUAGE">
    <meta content="VBScript" name="vs_defaultClientScript">
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
</head>
<body ms_positioning="GridLayout">
    <form id="MainWebForm" method="post" runat="server">
        <asp:DropDownList ID="Cross_sectionDropDownList" Style="Z-INDEX: 115; LEFT: 626px; POSITION: absolute; TOP: 86px"
            runat="server" Height="37px" Width="300px" ForeColor="Goldenrod">
        </asp:DropDownList>
        <asp:DropDownList ID="DictionaryViewControl" Style="Z-INDEX: 122; LEFT: 17px; POSITION: absolute; TOP: 75px"
            runat="server" Height="37px" Width="160px" ForeColor="Goldenrod">
        </asp:DropDownList>
        <asp:DropDownList ID="WordsMatchedViewControl" Style="Z-INDEX: 121; LEFT: 177px; POSITION: absolute; TOP: 75px"
            runat="server" Height="37px" Width="160px" ForeColor="Goldenrod">
        </asp:DropDownList>
        <asp:Label ID="PuzzleSize" Style="Z-INDEX: 119; LEFT: 658px; POSITION: absolute; TOP: 40px"
            runat="server" Width="326px" ForeColor="Goldenrod" BorderWidth="2px" BorderStyle="Ridge"></asp:Label>
        <asp:Label ID="WordsFound_VS_DictionarySize" Style="Z-INDEX: 118; LEFT: 344px; POSITION: absolute; TOP: 40px"
            runat="server" Width="312px" ForeColor="Goldenrod" BorderWidth="2px" BorderStyle="Ridge"></asp:Label>
        <asp:ListBox ID="DictionaryListBox" Style="Z-INDEX: 117; LEFT: 15px; POSITION: absolute; TOP: 98px"
            runat="server" Height="598px" Width="162px" ForeColor="Black" BackColor="LightYellow"></asp:ListBox>
        <asp:Label ID="Label5" Style="Z-INDEX: 114; LEFT: 465px; POSITION: absolute; TOP: 87px" runat="server"
            Height="7px" Width="161px" ForeColor="Goldenrod" BorderWidth="2px" BorderStyle="Ridge">Current Cross Section:</asp:Label>
        <asp:Button ID="Exit" Style="Z-INDEX: 113; LEFT: 859px; POSITION: absolute; TOP: 16px" runat="server"
            Height="23px" Width="125px" Text="EXIT"></asp:Button>
        <asp:Button ID="StartOver" Style="Z-INDEX: 112; LEFT: 594px; POSITION: absolute; TOP: 16px"
            runat="server" Height="23px" Width="108px" Text="Start Over"></asp:Button>
        <asp:Button ID="HELP" Style="Z-INDEX: 111; LEFT: 704px; POSITION: absolute; TOP: 16px" runat="server"
            Height="23px" Width="152px" Text="HELP"></asp:Button>
        <asp:Button ID="GetStats" Style="Z-INDEX: 110; LEFT: 466px; POSITION: absolute; TOP: 16px" runat="server"
            Height="23px" Width="126px" Text="Get Statistics"></asp:Button>
        <asp:Label ID="Label2" Style="Z-INDEX: 103; LEFT: 176px; POSITION: absolute; TOP: 11px" runat="server"
            Height="36px" Width="158px" ForeColor="Goldenrod" BorderWidth="2px" BorderStyle="Ridge">Solution words found that matched dictionary:</asp:Label>
        <asp:ListBox ID="WordsFound" Style="Z-INDEX: 102; LEFT: 176px; POSITION: absolute; TOP: 98px"
            runat="server" Height="599px" Width="158px" ForeColor="Black" BackColor="LightYellow"></asp:ListBox>
        <asp:Label ID="Label1" Style="Z-INDEX: 101; LEFT: 17px; POSITION: absolute; TOP: 11px" runat="server"
            Height="40px" Width="158px" ForeColor="Goldenrod" BorderWidth="2px" BorderStyle="Ridge"> Dictionary words: (First 2000 beginning with: )</asp:Label>
        <asp:DropDownList ID="DirectionDropDownList" Style="Z-INDEX: 104; LEFT: 626px; POSITION: absolute; TOP: 64px"
            runat="server" Height="32px" Width="300px" ForeColor="Goldenrod">
        </asp:DropDownList>
        <asp:Label ID="Label3" Style="Z-INDEX: 105; LEFT: 464px; POSITION: absolute; TOP: 64px" runat="server"
            Width="162px" ForeColor="Goldenrod" BorderWidth="2px" BorderStyle="Ridge">Current Direction Section:</asp:Label>
        <asp:Label ID="Label4" Style="Z-INDEX: 106; LEFT: 15px; POSITION: absolute; TOP: 694px" runat="server"
            Width="319px" ForeColor="Goldenrod" BorderWidth="2px" BorderStyle="Ridge" Font-Size="Small">Statistics for This Puzzle:</asp:Label>
        <table id="PuzzleView" style="BORDER-RIGHT: #000000 thin; TABLE-LAYOUT: auto; BORDER-TOP: #000000 thin; Z-INDEX: 107; LEFT: 341px; BORDER-LEFT: #000000 thin; WIDTH: 25px; BORDER-BOTTOM: #000000 thin; POSITION: absolute; TOP: 116px; BORDER-COLLAPSE: collapse; HEIGHT: 24px; BACKGROUND-COLOR: snow; TEXT-ALIGN: center"
            bordercolor="#daa520" cellspacing="1" bordercolordark="goldenrod" cellpadding="1" align="center"
            bgcolor="black" bordercolorlight="goldenrod" border="1" runat="server">
        </table>
        <table id="StatisticsView" style="BORDER-RIGHT: black thin; TABLE-LAYOUT: auto; BORDER-TOP: black thin; FONT-WEIGHT: normal; FONT-SIZE: 10pt; Z-INDEX: 108; LEFT: 15px; BORDER-LEFT: black thin; WIDTH: 320px; COLOR: black; BORDER-BOTTOM: black thin; FONT-FAMILY: Impact; POSITION: absolute; TOP: 720px; BORDER-COLLAPSE: collapse; HEIGHT: 31px; BACKGROUND-COLOR: snow; TEXT-ALIGN: center"
            bordercolor="blue" cellspacing="0" bordercolordark="blue" cellpadding="0" width="320"
            bordercolorlight="#0000ff" border="1" runat="server">
        </table>
        <asp:Button ID="SolvePuzzle" Style="Z-INDEX: 109; LEFT: 344px; POSITION: absolute; TOP: 16px"
            runat="server" Height="23px" Width="119px" Text="Solve Puzzle"></asp:Button>
        <asp:Label ID="Label6" Style="Z-INDEX: 116; LEFT: 344px; POSITION: absolute; TOP: 64px" runat="server"
            Height="46px" Width="118px" ForeColor="Goldenrod" BorderWidth="2px" BorderStyle="Ridge" Font-Size="X-Large" Font-Bold="True" Font-Italic="True" Font-Names="Impact">Puzzle:</asp:Label>
        <asp:AdRotator ID="CubeImageRotator" Style="Z-INDEX: 120; LEFT: 21px; POSITION: absolute; TOP: 837px"
            runat="server" Height="198px" Width="312px" AdvertisementFile="~/images/cube_images.xml"></asp:AdRotator>
        <asp:Button ID="Get_Puzzle" Style="Z-INDEX: 123; LEFT: 928px; POSITION: absolute; TOP: 66px"
            runat="server" Height="41px" Width="55px" Text="Display!" Font-Size="X-Small" Font-Bold="True" Font-Names="Arial"></asp:Button>
        <asp:Button ID="Get_Lists" Style="Z-INDEX: 124; LEFT: 17px; POSITION: absolute; TOP: 53px" runat="server"
            Height="22px" Width="318px" Text="Display All Words or Beginning With" Font-Size="X-Small" Font-Bold="True" Font-Names="Arial"></asp:Button>
    </form>
</body>
</html>
