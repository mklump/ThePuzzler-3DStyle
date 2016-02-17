<%@ Page language="c#" Codebehind="Help.aspx.cs" AutoEventWireup="false" Inherits="thepuzzler_3dstyle.Help" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Help</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<HR style="Z-INDEX: 100; LEFT: 8px; WIDTH: 100%; POSITION: absolute; TOP: 8px; HEIGHT: 4px"
				width="100%" SIZE="4">
			<asp:Button id="BACK2" style="Z-INDEX: 109; LEFT: 8px; POSITION: absolute; TOP: 1480px" runat="server"
				Text="BACK" Font-Size="Small" Font-Bold="True" Width="176px"></asp:Button>
			<br>
			<br>
			<font style="FONT-WEIGHT: bold; FONT-SIZE: 18pt; COLOR: maroon; FONT-STYLE: italic; FONT-FAMILY: Arial, 'Times New Roman'; TEXT-DECORATION: underline">Help 
					and Information for The Puzzler - 3D Style</font>
				<br>
				<font style="FONT-SIZE: 12pt; COLOR: maroon; FONT-STYLE: italic; FONT-FAMILY: Arial, 'Times New Roman'">
					<br>
					By: Hedron Inc.© (Copyright 2004)<br>
					Special Thanks go out to:<br>
					Jay Bockelman for whose help this project would not be possible,<br>
					Matthew Klump for his development effort,<br>
					Jill Feyerherm for her exceptional moral support,<br>
					the collective Feyerherm and Klump families for their support.<br>
					<br>
					<asp:Label id="Label1" style="Z-INDEX: 104; LEFT: 760px; POSITION: absolute; TOP: 248px" runat="server"
						Width="136px" Height="64px">Caution: This will reset the remote server. You must re-enter the project URL to reinvoke the web application.</asp:Label>
					<asp:Button id="ResetServer" style="Z-INDEX: 106; LEFT: 752px; POSITION: absolute; TOP: 216px"
						runat="server" Text="RESET WEB SERVER" Height="29px" Font-Size="X-Small" Font-Bold="True"
						Width="144px"></asp:Button>
					<br>
					<asp:Label id="Label2" style="Z-INDEX: 105; LEFT: 760px; POSITION: absolute; TOP: 192px" runat="server"
						Width="145px" Height="16px">Trouble? Use this!</asp:Label>
					<asp:Button id="BACK1" style="Z-INDEX: 108; LEFT: 8px; POSITION: absolute; TOP: 232px" runat="server"
						Text="BACK" Height="28px" Font-Size="Small" Font-Bold="True" Width="176px"></asp:Button>
					<br>
				</font>
			<font style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; COLOR: maroon; FONT-FAMILY: Arial, 'Times New Roman'; TEXT-DECORATION: underline">
				Overview:</font><br>
			<font style="FONT-SIZE: 12pt; COLOR: black; FONT-FAMILY: Arial, 'Times New Roman'">The 
				basic premise is very similar with respect to <a href="http://dev.rubiks.com">Seven 
					Towns's Rubik's Cube</a>.<br>
				The rubik's.com web link will nagivate you away from this site, simply click 
				your browser's<br>
				back button to return to this help page.<br>
				The content of the puzzle is a combination of hidden words and random letters. 
				The hidden words<br>
				are based on randomly selected words from an arbitrary dictionary.<br>
				The words in the puzzle exist in one of twenty six different possible 
				directions, so only the most<br>
				efficient of algorithms and data structures were selected to create and solve 
				this order n problem.<br>
				Don't forget to check out the <a href="http://www.eviltron.com/modules/esp/esp.html">
					Eviltron web site</a> --&gt; <a href="http://www.eviltron.com/modules/esp/esp.html">
					http://www.eviltron.com/modules/esp/esp.html</a>, this is a great 
				demonstration<br>
				of a three dimentional interative view of how the puzzle is manipulated in 
				memory.<br>
				The Eviltron Supper Puzzle Cube was conceived, coded, choreographed &amp; 
				created by Eviltron<br>
				--&gt; <a href="http://www.eviltron.com">http://www.eviltron.com</a><br>
				Be sure to also return back to this help page by clicking your browser's back 
				button,<br>
				since this link will navigate you away from this web site.<br>
				Another great sight is <a href="http://www.hadron.org/~hatch/MagicCube4dApplet/">The 
					Magic 4D Cube</a> --&gt; <a href="http://www.hadron.org/~hatch/MagicCube4dApplet/">
					http://www.hadron.org/~hatch/MagicCube4dApplet/</a><br>
				by <a href="http://www.superliminal.com/cube/cube.htm">Don Hatch and Melinda Green</a>
				--&gt; <a href="http://www.superliminal.com/cube/cube.htm">http://www.superliminal.com/cube/cube.htm</a>. 
				This is another great demonstration<br>
				of third dimentional graphical design for a Rubik's Cube style of a puzzle.<br>
				<br>
			</font><font style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; COLOR: maroon; FONT-FAMILY: Arial, 'Times New Roman'; TEXT-DECORATION: underline">
				Algorithms:</font><br>
			<font style="FONT-SIZE: 12pt; COLOR: black; FONT-FAMILY: Arial, 'Times New Roman'">The 
				algorithm to create the puzzle itself is nearly the opposite of the algorithm 
				that is used to solve is solved.<br>
				Each algorithm effectively "cuts" the puzzle down into smaller two dimentional 
				pieces such as<br>
				squares and triangles, and then within that smaller piece, every series of 
				squares along a line<br>
				is looked at individually. In that context, it is possible to insert the words, 
				and look for words<br>
				within words.<br>
			</font>
			<br>
			<font style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; COLOR: maroon; FONT-FAMILY: Arial, 'Times New Roman'; TEXT-DECORATION: underline">
				Data Structure:</font> <font style="FONT-SIZE: 12pt; COLOR: black; FONT-FAMILY: Arial, 'Times New Roman'">
				<br>
				The core data structure that was used for this puzzle was the Red-Black Binary 
				Search Tree. For this<br>
				help document I will not go into detail of what make this structure so great 
				for this kind of problem<br>
				suffice to say that it is the best rated structure for accessing information 
				that you want from memory<br>
				in a worst-case time directly proportional to the natural log of n (time = lg 
				n). Where n refers to the<br>
				total number of separate pieces of information in your data structure.
				<br>
			</font>
			<br>
			<font style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; COLOR: maroon; FONT-FAMILY: Arial, 'Times New Roman'; TEXT-DECORATION: underline">
				Glossary:</font><font style="FONT-SIZE: 12pt; COLOR: black; FONT-FAMILY: Arial, 'Times New Roman'">
				<br>
				Puzzle: The actual puzzle itself is not a perfect cube, but a three dimentional 
				rectangle in memory whose<br>
				cells are subdivided just like the Rubic's Cube 3D demo you saw <a href="http://www.eviltron.com/modules/esp/esp.html">
					here</a>, and can be of any size you choose.<br>
				<br>
				Layer: From time to time you may have heard me refer to a certain "layer" of 
				the puzzle, this is specifically<br>
				refering to a cross sectional "slice" of the puzzle you could serve on a two 
				dimentional platter whose shape<br>
				would be a flat set of cubes with each containing a single letter. Feel free to 
				re-examine one of the sections<br>
				that rotate on the <a href="http://www.eviltron.com/modules/esp/esp.html">Eviltron 
					web site</a> of the Rubik's Cube.<br>
				<br>
				Dictionary: This is simply a list of words with no definions and may or be 
				english. For sake of keeping the<br>
				level of the order n problem minimized, each word can only be three letters or 
				more up to the size of the<br>
				shortest side of the puzzle. The dictionary list of words is randomly selected 
				from one of several much larger<br>
				"base" dictionarys.
				<br>
				<br>
				Algorithm: This is simply a systematic way of repeating a pattern, or set of 
				patterns, that is(are) designed to<br>
				break down a large problem into smaller pieces to arrive at a solution. That's 
				the author's thoughts on what an<br>
				algorithm is. As defined by <a href="http://mitpress.mit.edu/algorithms">Introduction 
					to Algorithms, by: Thomas H. Cormen et. al.:</a> "An algorithm is any 
				well-defined<br>
				computational procedure that takes some value, or set of values, as input and 
				produces some value, or set of values,<br>
				as output. An algorithm is thus a sequence of computational steps that 
				transform the input into the output."
				<br>
				<br>
				Data Structure: This is a container designed to persist information like name 
				and address in<br>
				memory and provide a means for accessing and manipulating that information in 
				memory.
				<br>
				<br>
				Order n Problem: This refers to the overall complexity of any problem that 
				might increase exponentially<br>
				as a certain aspect of the problem is of a variable size.<br>
			</font>
			<br>
			<font style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; COLOR: maroon; FONT-FAMILY: Arial, 'Times New Roman'; TEXT-DECORATION: underline">
				Install and Deployment:</font><br>
			<font style="FONT-SIZE: 12pt; COLOR: black; FONT-FAMILY: Arial, 'Times New Roman'">The 
				server (backend) side of this application must be deployed on to a computer 
				running Microsoft's<br>
				IIS 5.1 or 6.0 web server running MS SQL Server 2000. Read and Write access 
				rights must be set for the<br>
				ASPNET worker process account, IUSER_COMPUTERNAME anonymous user account, and 
				the<br>
				IWAM_COMPUTERNAME IIS process executer account for both the virtual directory 
				on the web server,<br>
				as well as the physical directory.<br>
				The client side of this appliation can be accessed through any compatible 
				browser, such as<br>
				Internet Explorer 5.0.<br>
			</font>
			<br>
			<HR style="Z-INDEX: 101; LEFT: 8px; WIDTH: 100%; POSITION: absolute; TOP: 1520px; HEIGHT: 6px"
				width="100%" SIZE="6">
			&nbsp;&nbsp;&nbsp;
		</form>
		</FONT>
	</body>
</HTML>
