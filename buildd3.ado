


// Drop program if already loaded in memory
cap prog drop buildd3

// Define program to automate compiling mata classes for D3js wrappers
prog def buildd3, rclass

	// Version of Stata to use
	version 12
	
	// Define syntax structure for program
	syntax anything(name=what id="D3 Classes or All") [, DIsplay MLib MOSave ///   
		dir(passthru) REPlace size(integer 2048) noPATH ]
	
	// Clear any existing class from mata
	mata: mata clear
	
	// Build a class list macro to store the names of the mata classes
	loc classlist ""
	
	// Check for path option
	if `"`path'"' != "nopath" {
	
		// Set Directory for locating Mata source
		loc location `c(sysdir_plus)'d/
		
	} // End IF Block for nopath option
	
	// If user wants to compile the mega class
	if `: word count `what'' == 1 & `"`what'"' == "all" {
	
		// Drop class if exists in mata already
		cap mata: mata drop d3()
		cap mata: mata drop header()
		cap mata: mata drop doc()
		cap mata: mata drop filedoc()
		
		// Compile the mega d3 class
		run `"`location'd3.mata"'
		
		// Compile the HTML Header/Footer class
		run `"`location'header.mata"'
		
		// Add d3 to class list
		loc classlist "d3()" "header()" "doc()" "filebase()"
		
	} // End IF Block for all classes
	
	// If what argument is not all
	else {
	
		// Loop over the arguments passed to the program
		forv i = 1/`: word count `what'' {
		
			// Get the first word from the passed arguments
			loc classes `: word `i' of `what''
			
			// Check for valid arguments
			if !inlist(`"`classes'"', "behavior", "core", "geo", "geom", 	 ///   
			"layout", "scales", "svg", "time") {
			
				// Print error message to console
				di as err "`classes' is not a valid class to compile.  "	 ///   
				"Must be one of: " as res "behavior, core, geo, geom, " 	 ///   
				"layout, scale, svg, or time"
				
				// Error out of program
				err 198
				
			} // End IF Block to check for valid arguments
			
			// If it is a valid argument
			else {
			
				// Drop existing class definitions if present
				cap mata: mata drop `classes'()
				
				// Compile the drag behavior class
				run `"`location'`classes'.mata"'
				
				// Return the classes defined here
				loc classlist `"`classlist' "`classes'()""'
				
			} // End ELSE Block for compiling individual classes
			
			
				// Loop over time objects
				foreach v in csv dsv tsv xhr {
					
					// Drop existing class definitions if present
					cap mata: mata drop d3`v'()
					
					// Compile
					run `"`location'd3`v'.mata"'
					
					// Return the classes defined here
					loc classlist `"`classlist' "d3`v'()""' 
				
				} // End Loop over time classes
				
			} // End IF Block for time/all argument

		} // End Loop over arguments passed to program's parameter
		
		// Compile header class
		cap mata: mata drop header()
		cap mata: mata drop doc()
		cap mata: mata drop filedoc()
		
		// Compile the drag behavior class
		run `"`location'header.mata"'

		// Return the classes contained in the header.mata file
		loc classlist `"`classlist' "header()" "doc()" "filebase()""'
		
	} // End ELSE Block for individual class compilation
		
	// Loop over the classes in the class list
	forv i = 1/`: word count `classlist'' {
	
		// Return the name of the class in a macro
		loc nm `: word `i' of `classlist'' 
		
		// Remove parentheses
		loc lnm `: subinstr loc nm `"()"' "", all'
		
		// Return the nmae of the class
		ret loc `lnm' "`nm'"
		
		// Check for MoSave option
		if `"`mosave'"' != "" {
		
			// Save the mata objects
			mata: mata mosave `nm', `dir' complete `replace'
		
		} // End IF Block for mata mo save
		
	} // End Loop over the class list

	// If display option is turned on
	if "`display'" != "" {
		
		// Print message to screen
		di as res "Compiled the classes : `classlist'" _n _continue
		
		// Describe the classes/methods
		mata: mata d, all
					
	} // End IF Block for display option
		
	// Check for MLib option
	if `"`mlib'"' != "" {

		// Create the library
		mata: mata mlib create libd3, `dir' size(`size') `replace'

		// Add the first class to the library
		mata: mata mlib add libd3 *(), `dir' complete
		
		// Index the mata classes/functions
		mata: mata mlib index
			
	} // End IF Block to build custom d3 library for user
	
// End of program
end

	
