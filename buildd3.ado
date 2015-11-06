
cap prog drop buildd3

prog def buildd3, rclass

	version 13
	
	syntax anything(name=what id="D3 Classes or All") [, DIsplay MLib MOSave ///   
		dir(passthru) REPlace size(passthru) noPATH ]
	
	// Clear any existing class from mata
	mata: mata clear
	
	// Build a class list macro to store the names of the mata classes
	loc classlist ""
	
	// Check for path option
	if `"`path'"' != "nopath" {
	
		// Set Directory for locating Mata source
		loc location `c(sysdir_plus)'d/
		
	} // End IF Block for nopath option
	
	// Loop over the arguments passed to the program
	forv i = 1/`: word count `what'' {
	
		// Get the first word from the passed arguments
		loc classes `: word `i' of `what''
		
		// If user enters all it will set the all parameter to compile all classes
		if `"`: word `i' of `what''"' == "all" {
		
			// Populate the all macro
			loc all "all"
			
		} // End IF Block to check for all argument
		
		// Otherwise
		else {
		
			// Set a null value for the macro
			loc all
			
		} // End ELSE Block for all macro
		
		// Check for valid arguments
		if !inlist(`"`classes'"', "behavior", "geo", "geom", "layout") & 	 ///   
		!inlist(`"`classes'"', "scale", "svg", "time", "color", "files", "all") {
		
			// Print error message to console
			di as err "`classes' is not a valid class to compile.  "		 ///   
			"Must be one of: " as res "behavior, geo, geom, layout, scale, " ///   
			"svg, time, color, files, or all"
			
			// Error out of program
			err 198
			
		} // End IF Block to check for valid arguments
		
		// If user requests behavior or all
		if `"`classes'"' == "behavior" | "`all'" == "all" {
		
			// Drop existing class definitions if present
			cap mata: mata drop d3bdrag()
			cap mata: mata drop d3bzoom()
			cap mata: mata drop d3behavior()
			
			
			// Compile the drag behavior class
			run `"`location'd3behaviordrag.mata"'
			run `"`location'd3behaviorzoom.mata"'
			run `"`location'd3behavior.mata"'
			
			// Return the classes defined here
			loc classlist `"`classlist' "d3bdrag()" "d3bzoom()" "d3behavior()""'
			
		} // End IF Block for behavior/all argument
		
		// If user requests geography or all
		if  `"`classes'"' ==  "geo" | "`all'" ==  "all" {
		
			// Loop over geography objects
			foreach v in circle graticule path projection rotation stream  {
				
				// Drop existing class definitions if present
				cap mata: mata drop d3geo`v'()
				
				// Compile
				run `"`location'd3geo`v'.mata"'
				
				// Add to class list
				loc classlist `"`classlist' "d3geo`v'()""'
				
			} // End Loop over geography classes
			
			// Compile geo class
			run `"`location'd3geo.mata"'
			
			// Add to class list
			loc classlist `"`classlist' "d3geo()""'
				
		} // End IF Block for geography/all argument
		
		// If user requests geometry or all
		if  `"`classes'"' ==  "geom" | "`all'" ==  "all" {
		
			// Loop over geometry objects
			foreach v in hull polygon quadtree voronoi {
				
				// Drop existing class definitions if present
				cap mata: mata drop d3geom`v'()
				
				// Compile
				run `"`location'd3geom`v'.mata"'
				
				// Add to class list
				loc classlist `"`classlist' "d3geom`v'()""'
				
			} // End Loop over geometry classes
			
			// Compile geom class
			run `"`location'd3geom.mata"'
			
			// Add to class list
			loc classlist `"`classlist' "d3geom()""'
			
		} // End IF Block for geometry/all argument
		
		// If user requests layout or all
		if  `"`classes'"' ==  "layout" | "`all'" ==  "all" {
		
			// Loop over layout objects
			foreach v in bundle chord cluster force hierarchy histogram pack ///   
			partition pie stack tree treemap ayout {
				
				// Drop existing class definitions if present
				cap mata: mata drop d3l`v'()
				
				// Compile
				run `"`location'd3l`v'.mata"'
				
				// Add to the class list
				loc classlist `"`classlist' "d3l`v'()""'
				
			} // End Loop over layout classes
					
		} // End IF Block for layout/all argument
		
		// If user requests scale or all
		if  `"`classes'"' ==  "scale" | "`all'" ==  "all" {
		
			// Loop over scale objects
			foreach v in identity linear log ordinal pow quantile quantize 	 ///   
			threshold ale {
				
				// Drop existing class definitions if present
				cap mata: mata drop d3sc`v'()
				
				// Compile
				run `"`location'd3sc`v'.mata"'
				
				// Add Classes to class list
				loc classlist `"`classlist' "d3sc`v'()""' 
				
			} // End Loop over scale classes
			
		} // End IF Block for scale/all argument
		
		// If user requests svg or all
		if  `"`classes'"' ==  "svg" | "`all'" ==  "all" {
		
			// Loop over svg objects
			foreach v in arc area axis brush chord diagonal line symbol {
				
				// Drop existing class definitions if present
				cap mata: mata drop d3svg`v'()
				
				// Compile
				run `"`location'd3svg`v'.mata"'
				
				// Return the classes defined here
				loc classlist `"`classlist' "d3svg`v'()""'  
			
			} // End Loop over svg classes

			// Drop svg class
			cap mata: mata drop d3svg()
			
			// Build svg class
			run `"`location'd3svg.mata"'
			
			// Add to classlist
			loc classlist `"`classlist' "d3svg()""'
			
		} // End IF Block for svg/all argument
		
		// If user requests time or all
		if  `"`classes'"' ==  "time" | "`all'" ==  "all" {
		
			// Loop over time objects
			foreach v in format scale {
				
				// Drop existing class definitions if present
				cap mata: mata drop d3time`v'()
				
				// Compile
				run `"`location'd3time`v'.mata"'
				
				// Return the classes defined here
				loc classlist `"`classlist' "d3time`v'()""' 
			
			} // End Loop over time classes

			// Drop the time class
			cap mata: mata drop d3time()
			
			// Build the time class
			run `"`location'd3time.mata"'
			
			// Return the classes defined here
			loc classlist `"`classlist' "d3time()""' 
			
		} // End IF Block for time/all argument

		// If user requests time or all
		if  `"`classes'"' ==  "color" | "`all'" ==  "all" {
		
			// Loop over time objects
			foreach v in rgb hcl hsl lab {
				
				// Drop existing class definitions if present
				cap mata: mata drop d3`v'()
				
				// Compile
				run `"`location'd3`v'.mata"'
				
				// Return the classes defined here
				loc classlist `"`classlist' "d3`v'()""' 
			
			} // End Loop over time classes
			
		} // End IF Block for time/all argument

		// If user requests time or all
		if  `"`classes'"' ==  "files" | "`all'" ==  "all" {
		
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

		// Check for all argument to build other classes
		if "`all'" == "all" {
		
			// Loop over time objects
			foreach v in clipExtent dispatch format map nest set math		 ///   
			interval locale transform transition selection {
			
				// Drop existing class definitions if present
				cap mata: mata drop d3`v'()
				
				// Compile
				run `"`location'd3`v'.mata"'
				
				// Return the classes defined here
				loc classlist `"`classlist' "d3`v'()""' 
			
			} // End Loop over time classes
			
			// Drop classes created by header class
			cap mata: mata drop d3filebase() 
			cap mata: mata drop d3header() 
			cap mata: mata drop d3doc() 
			
			// Compile the header classes
			run `"`location'd3header.mata"'
			
			// Add header classes to the class list
			loc classlist `"`classlist' "d3filebase()" "d3header()" "d3doc()""'
			
			// Drop the d3 class
			cap mata: mata drop d3()
			
			// Compile d3 class
			run `"`location'd3.mata"'
			
			// Add to the class list
			loc classlist `"`classlist' "d3()""'
			
		} // Finish building other classes
	
	} // End Loop over arguments passed to program's parameter
		
	// Loop over the classes in the class list
	forv i = 1/`: word count `classlist'' {
	
		// Return the name of the class in a macro
		loc nm `: word `i' of `classlist'' 
		
		// Remove parentheses
		loc lnm `: subinstr loc nm `"()"' "", all'
		
		// Return the nmae of the class
		ret loc `lnm' "`nm'"
		
		// If display option is turned on
		if "`display'" != "" {
		
			// Print message to screen
			di as res "Compiled the class : `nm' from d3mata" _n
			
		} // End IF Block for display option
		
		// Check for MoSave option
		if `"`mosave'"' != "" {
		
			// Save the mata objects
			mata: mata mosave `nm', `dir' complete `replace'
		
		} // End IF Block for mata mo save
		
	} // End Loop over the class list

	// Check for MLib option
	if `"`mlib'"' != "" {

		// Create the library
		mata: mata mlib create libd3, `dir' `size' `replace'

		// Add the first class to the library
		mata: mata mlib add libd3 *(), `dir' complete
			
	} // End IF Block to build custom d3 library for user
	
// End of program
end

	
