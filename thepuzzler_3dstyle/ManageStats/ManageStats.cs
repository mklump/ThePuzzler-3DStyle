//
//-------------------------------------------------------------------------------
// Module: ManageStats Module
// Date:   March 4, 2005
// Purpose: Please see the Unit Test Plan for this completely defined.
// Author: Matthew Klump
//		   
// Project: The Puzzler - 3D Style
//-------------------------------------------------------------------------------
//
using System;
using System.Collections;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using Puzzle_Solution;
using ns_DictionaryCreator;
using Puzzle_Creation;

namespace ns_ManageStats
{
	/// <summary>
	/// Summary description for ManageStats.
	/// </summary>
	public class ManageStats
	{
		/// <summary>
		/// This System.String represents the Dictionary Creation execution time.
		/// </summary>
		private string dictionaryTime;
		/// <summary>
		/// This System.String represents the Puzzle Creation execution time.
		/// </summary>
		private string puzzleTime;
		/// <summary>
		/// This System.String represents the Puzzle Solution execution time.
		/// </summary>
		private string solutionTime;

		// C# logic added code behind library files
		/// <summary>
		/// Object responsible for providing the puzzle solution.
		/// </summary>
		public Solution solution;
		/// <summary>
		/// Object responsible for providing the puzzle creation.
		/// </summary>
		public PuzzleCreator puzzleCreator;
		/// <summary>
		/// Object responsible for providing the dictionary creation.
		/// </summary>
		public DictionaryCreator dictionaryCreator;
		/// <summary>
		/// Timer used to get the time of the System clock before an algorithm execution.
		/// </summary>
		private DateTime timer1;
		/// <summary>
		/// Timer used to get the time of the System clock after an algorithm execution.
		/// </summary>
		private TimeSpan timer2;
		/// <summary>
		/// Default constructor for ManageStats.
		/// </summary>
		public ManageStats()
		{
			dictionaryTime = "";
			puzzleTime = "";
			solutionTime = "";
			solution = new Solution();
			dictionaryCreator = new DictionaryCreator();
			puzzleCreator = new PuzzleCreator();
		}
		/// <summary>
		/// This operation will execute the CreateDictionary() operation and
		/// return the time taken to make it as a System.String
		/// </summary>
		/// <param name="table">The HtmlTable to which will be printed the results.</param>
		/// <param name="dictionNum">Specifies which dictionary to pass to DictionaryCreator().</param>
		/// <param name="listSize">Specifies how large the dictionary should be when passed
		/// to DictionaryCreator() as its second arguement.</param>
		/// <param name="stats">The string array collection keeping track of the
		/// resultant statistics</param>
		/// <param name="minimum">Specifies the minimum size of a word to use.</param>
		public void GetDictionaryTime( ref HtmlTable table, int dictionNum,
			int listSize, int minimum,ArrayList stats )
		{
			timer1 = DateTime.Now;
            dictionaryCreator.CreateDictionary( table.Page, dictionNum, listSize, minimum );
			timer2 = DateTime.Now - timer1;
			
			HtmlTableRow row = new HtmlTableRow(); HtmlTableCell cell = new HtmlTableCell();
			cell.Controls.Add(new LiteralControl(
				(string)stats[stats.Add( string.Format(
					"Dictionary Creator took: {0} min. {1} sec. {2} ms.",
				timer2.Minutes, timer2.Seconds, timer2.Milliseconds ) )]
				) );
			row.Controls.Add( cell );
			table.Controls.Add( row );
			dictionaryTime = timer2.Minutes.ToString() + " " +
				timer2.Seconds.ToString() + " " +
				timer2.Milliseconds.ToString();
		}
		/// <summary>
		/// This operation will execute the GeneratePuzzle() operaton and
		/// return the time taken to make it as a System.String
		/// </summary>
		/// <param name="table">The HtmlTable to which will be printed the results.</param>
		/// <param name="stats">The string array collection keeping track of the
		/// resultant statistics</param>
		public void GetPuzzleTime( ref HtmlTable table, ArrayList stats )
		{
			timer1 = DateTime.Now;
			puzzleCreator.GeneratePuzzle();
			timer2 = DateTime.Now - timer1;
			HtmlTableRow row = new HtmlTableRow(); HtmlTableCell cell = new HtmlTableCell();
			cell.Controls.Add(new LiteralControl(
				(string)stats[stats.Add( string.Format(
				"Puzzle Creator took: {0} min. {1} sec. {2} ms.",
				timer2.Minutes, timer2.Seconds, timer2.Milliseconds ) )]
				) );
			row.Controls.Add( cell );
			table.Controls.Add( row );
			puzzleTime = timer2.Minutes.ToString() + " " +
				timer2.Seconds.ToString() + " " +
				timer2.Milliseconds.ToString();
		}
		/// <summary>
		/// This operation will execute the Solve() operation and return
		/// the time taken to solve the puzzle as a System.String
		/// </summary>
		/// <param name="table">The HtmlTable to which will be printed the results.</param>
		/// <param name="stats">The string array collection keeping track of the
		/// resultant statistics</param>
		/// <returns>The total number of words found in the puzzle that matched the
		/// dictionary.</returns>
		public int GetSolutionTime( ref HtmlTable table, ArrayList stats )
		{
			timer1 = DateTime.Now;
			int numWordsFound = solution.Solve();
			timer2 = DateTime.Now - timer1;
			HtmlTableRow row = new HtmlTableRow(); HtmlTableCell cell = new HtmlTableCell();
			cell.Controls.Add(new LiteralControl(
				(string)stats[stats.Add( string.Format(
				"Puzzle Solver took: {0} min. {1} sec. {2} ms.",
				timer2.Minutes, timer2.Seconds, timer2.Milliseconds ) )]
				) );
			row.Controls.Add( cell );
			table.Controls.Add( row );
			solutionTime = timer2.Minutes.ToString() + " " +
				timer2.Seconds.ToString() + " " +
				timer2.Milliseconds.ToString();
			return numWordsFound;
		}
	}
}
