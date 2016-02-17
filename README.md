# ThePuzzler-3DStyle
2005 Oregon Tech Senior Project (ASP.NET first app) C#w/.NET2.0, ASP.NET 2.0, XML, SQL, HTML2.0, CSS1.0, ASP.NET XML Web Services

Help and Information for The Puzzler - 3D Style 

 By: Hedron Inc.© (Copyright 2004)
 Special Thanks go out to:
 Jay Bockelman for whose help this project would not be possible,
 Matthew Klump for his development effort,
 Jill Feyerherm for her exceptional moral support,
 the collective Feyerherm and Klump families for their support.

  Overview:
The basic premise is very similar with respect to Seven Towns's Rubik's Cube.
 The rubik's.com web link will nagivate you away from this site, simply click your browser's
 back button to return to this help page.
 The content of the puzzle is a combination of hidden words and random letters. The hidden words
 are based on randomly selected words from an arbitrary dictionary.
 The words in the puzzle exist in one of twenty six different possible directions, so only the most
 efficient of algorithms and data structures were selected to create and solve this order n problem.
 Don't forget to check out the  Eviltron web site -->  http://www.eviltron.com/modules/esp/esp.html, this is a great demonstration
 of a three dimentional interative view of how the puzzle is manipulated in memory.
 The Eviltron Supper Puzzle Cube was conceived, coded, choreographed & created by Eviltron
 --> http://www.eviltron.com
 Be sure to also return back to this help page by clicking your browser's back button,
 since this link will navigate you away from this web site.
 Another great sight is The Magic 4D Cube -->  http://www.hadron.org/~hatch/MagicCube4dApplet/
 by Don Hatch and Melinda Green --> http://www.superliminal.com/cube/cube.htm. This is another great demonstration
 of third dimentional graphical design for a Rubik's Cube style of a puzzle.

 Algorithms:
The algorithm to create the puzzle itself is nearly the opposite of the algorithm that is used to solve is solved.
 Each algorithm effectively "cuts" the puzzle down into smaller two dimentional pieces such as
 squares and triangles, and then within that smaller piece, every series of squares along a line
 is looked at individually. In that context, it is possible to insert the words, and look for words
 within words.
 
 Data Structure: 
 The core data structure that was used for this puzzle was the Red-Black Binary Search Tree. For this
 help document I will not go into detail of what make this structure so great for this kind of problem
 suffice to say that it is the best rated structure for accessing information that you want from memory
 in a worst-case time directly proportional to the natural log of n (time = lg n). Where n refers to the
 total number of separate pieces of information in your data structure. 
 
 Glossary: 
 Puzzle: The actual puzzle itself is not a perfect cube, but a three dimentional rectangle in memory whose
 cells are subdivided just like the Rubic's Cube 3D demo you saw  here, and can be of any size you choose.

 Layer: From time to time you may have heard me refer to a certain "layer" of the puzzle, this is specifically
 refering to a cross sectional "slice" of the puzzle you could serve on a two dimentional platter whose shape
 would be a flat set of cubes with each containing a single letter. Feel free to re-examine one of the sections
 that rotate on the Eviltron web site of the Rubik's Cube.

 Dictionary: This is simply a list of words with no definions and may or be english. For sake of keeping the
 level of the order n problem minimized, each word can only be three letters or more up to the size of the
 shortest side of the puzzle. The dictionary list of words is randomly selected from one of several much larger
 "base" dictionarys. 

 Algorithm: This is simply a systematic way of repeating a pattern, or set of patterns, that is(are) designed to
 break down a large problem into smaller pieces to arrive at a solution. That's the author's thoughts on what an
 algorithm is. As defined by Introduction to Algorithms, by: Thomas H. Cormen et. al.: "An algorithm is any well-defined
 computational procedure that takes some value, or set of values, as input and produces some value, or set of values,
 as output. An algorithm is thus a sequence of computational steps that transform the input into the output." 

 Data Structure: This is a container designed to persist information like name and address in
 memory and provide a means for accessing and manipulating that information in memory. 

 Order n Problem: This refers to the overall complexity of any problem that might increase exponentially
 as a certain aspect of the problem is of a variable size.
 
 Install and Deployment:
The server (backend) side of this application must be deployed on to a computer running Microsoft's
 IIS 5.1 or 6.0 web server running MS SQL Server 2000. Read and Write access rights must be set for the
 ASPNET worker process account, IUSER_COMPUTERNAME anonymous user account, and the
 IWAM_COMPUTERNAME IIS process executer account for both the virtual directory on the web server,
 as well as the physical directory.
 The client side of this appliation can be accessed through any compatible browser, such as
 Internet Explorer 5.0.
