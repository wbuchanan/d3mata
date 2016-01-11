


// Drop program if already loaded in memory
cap prog drop libd3

// Define program to automate compiling mata classes for D3js wrappers
prog def libd3, rclass

	// Version of Stata to use
	version 12
	
	// Define syntax structure for program
	syntax [, DIsplay MLib MOSave dir(passthru) REPlace size(integer 2048)   ///   
	QUIetly noPATH ]
	
	// Clear any existing class from mata
	mata: mata clear
	
	// Build a class list macro to store the names of the mata classes
	loc classlist ""
	
	// Check for path option
	if `"`path'"' != "nopath" {
	
		// Set Directory for locating Mata source
		loc location `c(sysdir_plus)'d/
		
	} // End IF Block for nopath option
	
	// Drop class if exists in mata already
	cap mata: mata drop d3()

	// Compile the mega d3 class
	`quietly' do `"`location'd3.mata"'
	
	// Check for MoSave option
	if `"`mosave'"' != "" & `"`mlib'"' == "" {
	
		// Save the mata objects
		mata: mata mosave d3, `dir' complete `replace'
	
	} // End IF Block for mata mo save
		
	// Check for MLib option
	if `"`mlib'"' != "" {

		// Create the library
		mata: mata mlib create libd3, `dir' size(`size') `replace'

		// Add the first class to the library
		mata: mata mlib add libd3 d3(), `dir' complete
		
		// Index the mata classes/functions
		mata: mata mlib index
			
	} // End IF Block to build custom d3 library for user
	
	// If display option is turned on
	if "`display'" != "" {
		
		// Print message to screen
		di as res "Successfully compiled libd3" _n _continue
		
		// Describe the classes/methods
		mata: mata d d3()
		
	} // End IF Block for display option
		
// End of program
end

	
