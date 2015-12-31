// Starts Mata interpretter/compiler
mata:

// Defines a new Mata function to create a D3js based scatterplot 
void d3scatterTip(string scalar filename, string scalar dataset, 
				  string scalar xvar, string scalar yvar, 
				  string scalar group, string scalar labvar) {
 
	class doctype scalar doctype
	class html scalar htmltag
	class meta scalar meta
	class comment scalar headerCmnt1, headerCmnt2
	class style scalar style 
	class body scalar htmlbody
	class script scalar d3source, jquery, d3graph
	class d3 scalar json, scatterplot, scatterCall, xValue, xScale, xMap, xAxis, 
					d3static, yValue, yScale, yMap, yAxis, cValue, color, svg, 
					toolTip, data, graphMargins, xDom, yDom, svgXAxis, svgYAxis, 
					svgtip, labels, legend, legend2, legend3
	real scalar fileConnection
	string scalar marginString, xString, yString, colorString, legendString, 
				  xDomain, yDomain
 
 	// Object used to load the data set created by a call to jsonio.
	json = d3()

	// Object that will store the D3 js code used for the scatterplot function
	scatterplot = d3()

	// Object used to call the JavaScript function defined by the object above
	scatterCall = d3()
	
	
	// A D3 object to return the x-variable values
	xValue = d3()
	
	// A D3 object used to create the scale for the x-axis
	xScale = d3()
	
	// Stores the mapping function from values to the scale
	xMap = d3()

	// Creates the x-axis by referencing the xScale javascript object
	xAxis = d3()

	// D3 class used for constructing more complex JS 
	d3static = d3()

	// This is the same as the x-axis/values set up but for the y-variable 
	yValue = d3()
	yScale = d3()
	yMap = d3()
	yAxis = d3()

	// Used to create a function that maps groups onto colors
	cValue = d3()

	// Used to specify the color scale to use
	color = d3()

	// A D3 class object used to initialize the svg DOM object
	svg = d3()
	
	// Object to store the tool tip function
	toolTip = d3()

	// Object to initialize a data object
	data = d3()

	// Objects that will store variable labels, value labels, and variable names
	labels = d3()

	// Still working on better way to implement this, but for now, creates 
	// separate objects to store the three legend components
	legend = d3()
	legend2 = d3()
	legend3 = d3()
	
	// Scale domain objects (used to prevent overlapping and/or axis compression
	xDom = d3()
	yDom = d3()
	// Object used to map the data to the graph as circles with tooltip functions 
	// hard coded as an argument to the .on() method.
	svgtip = d3()
	
	// Objects used to draw the x and y axes
	svgYAxis = d3()
	svgXAxis = d3()

 
	// An HTML doctype tag object
	doctype = doctype()

	// An HTML html tag object
	htmltag = html()
	
	// An HTML meta tag object
	meta = meta()
	
	// An HTML comment tag
	headerCmnt1 = comment()
	
	// A second HTML comment
	headerCmnt2 = comment()
	
	// An HTML style tag object
	style = style()
	
	// An HTML body tag object
	htmlbody = body()
	
	// An HTML script tag object
	d3source = script()
	
	// An HTML script tag object
	jquery = script()
	
	// An HTML script tag object to store the graph code
	d3graph = script()
	
	// A D3 class object used to store the margins for the graph
	graphMargins = d3()
	
	// Sets the character set used 
	meta.setCharset("utf-8")
	
	// The comment to place in the the object
	headerCmnt1.setClassArgs("Example based on http://bl.ocks.org/mbostock/3887118")

	// Content for HTML content
	headerCmnt2.setClassArgs("Tooltip example from http://www.d3noob.org/2010/01/adding-tooltips-to-d3js-graph.html")

	// Sets the CSS used for this particular example
	style.setClassArgs(char((10)) + "body {" + char((10, 32, 32)) + 
			"font: 11px sans-serif;" + char((10)) + "}" + char((10)) + 
			".axis path," + char((10)) + ".axis line {" + char((10, 32, 32)) +  
			"fill: none;" + char((10)) + "stroke: #000;" + char((10)) + 
			"shape-rendering: crispEdges;" + char((10)) + "}" + char((10)) + 
			".dot {" + char((10, 32, 32)) + "stroke: #000;" + char((10)) + "}" + 
			char((10)) + ".tooltip {" + char((10, 32, 32)) + 
			"position: absolute;" + char((10, 32, 32)) + "width: 200px;" + 
			char((10, 32, 32)) + "height: 28px;" + char((10, 32, 32)) + 
			"pointer-events: none;" + char((10)) + "}" + char((10)))
	
	// The sets the source attribute for the script tag object
	d3source.setSrc("http://d3js.org/d3.v3.min.js")
	
	// Sets the source for the jQuery library
	jquery.setSrc("https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js")

	// Initializes the object w/o a variable declaration or d3 reference.  
	// This allows other JavaScript to be easily includeded
	graphMargins.init().jsfree(
		"var margin = {top: 50, right: 50, bottom: 50, left: 50}," + 
		char((10, 32, 32)) + "width = 1080 - margin.left - margin.right," + 
		char((10,  32, 32)) + "height = 780 - margin.top - margin.bottom," + 
		char((10,  32, 32)) + "xtiPosX = width / 2," + char((10, 32, 32)) + 
		"xtiPosY = 30 / 2," + char((10,  32, 32)) + "ytiPosY = -30," + 
		char((10,  32, 32)) + "ytiPosX = -height / 2")
	
	// Creates an object with the graph margins surrounded by new line characters
	marginString = char((10)) + graphMargins.complete() + char((10))

	/* The layout of the code from this function is set up in a way that tries 
	to mirror the layout/formatting of the code from the example page listed in 
	the comments as much as possible. */
	
	// Stores function used to retrieve/return the x variable values
	xValue.init().jsfree("var xValue = function(d) { return d[xvar];}")

	/* The next few objects do not include a variable declaration in the jsfree 
	method call.  This is done to declare multiple variable simultaneously with 
	a single variable declaration.  To get the string used to print this you'll 
	use the .cont() method of the D3 class.  */

	// Notice the use of obj_ in the range function.  This tells the D3 library 
	// that it should be printed as an object literal and not as a string argument.  
	// Any time you need to refer to a JS object, just prepend the argument with 
	// obj_ and the object reference will be output from the complete/printer 
	// methods.
	xScale.init().jsfree("xScale = d3").scale().linear().range("obj_[0, width]")
	
	xMap.init().jsfree("xMap = function(d) { return xScale(xValue(d));}")

	xAxis.init().jsfree("xAxis = d3").svg().axis().scale("obj_xScale").orient("bottom")

	// Puts all of the x axis/scale code into a single string scalar with proper terminators
	xString = d3static.cont((xValue, xScale, xMap, xAxis))
	 
	// Y variable analogues to the methods called for the x variable
	yValue.init().jsfree("var yValue = function(d) { return d[yvar];}")
	yScale.init().jsfree("yScale = d3").scale().linear().range("obj_[height, 0]")
	yMap.init().jsfree("yMap = function(d) { return yScale(yValue(d));}")
	yAxis.init().jsfree("yAxis = d3").svg().axis().scale("obj_yScale").orient("left")

	// Puts all of the x axis/scale code into a single string scalar with proper terminators
	yString = d3static.cont((yValue, yScale, yMap, yAxis))
	 
	// Method to return the color to use for a given group
	cValue.init().jsfree("var cValue = function(d) { return d[groups];}")
	
	// Color scale used for mapping groups to colors
	color.init().jsfree("color = d3").scale().category10()

	// Creates a string containing the color function/scale definitions
	colorString = d3static.cont((cValue, color))

	// Similar to the D3js syntax, except you are required to use the 'obj_' 
	// modifier to specify references to existing JavaScript objects, and need 
	// to use compound double quotes to return quoted values in the java script
	svg.init("svg").select("body").append("svg").attr("width", "obj_width + margin.left + margin.right").attr("height", "obj_height + margin.top + margin.bottom").append("g").attr("transform", `"translate(" + margin.left + "," + margin.top + ")"')

	// Initializes a tooltip object that attaches tool tips as <div> elements 
	// to the <body> DOM 
	toolTip.init("tooltip").select("body").append("div").attr("class", "tooltip").style("opacity", 10)

	// Initializes the data variable
	data.init().jsfree("var data")
	
	/* Using the jsonio package helps you to retain all of the metadata from 
	your Stata data set.  This then enables those data to be used when developing 
	interactive graphs that can display value labels instead of values, and can 
	behave similar to native Stata graphs (e.g., using variable labels to label 
	the axes. */
	
	labels.init().jsfree("var varlabels, valueLabels, varnames")
	
	// Initializes the legend object
	legend.init().jsfree("var legend = svg") 

	// Maps the color scale to the legends
	legend.selectAll(".legend").data("obj_color.domain()").enter().append("g").attr("class", "legend").attr("transform", `"function(d, i) { return "translate(0," + i * 20 + ")";}"')
	
	// Creates the keys in the legend
	legend2.init().jsfree("legend").append("rect").attr("x", "obj_width - 18").attr("width", 18).attr("height", 18).style("fill", "obj_color")

	// Adds the text from the group variable to the legend
	legend3.init().jsfree("legend").append("text").attr("x", "obj_width - 24").attr("y", 9).attr("dy", ".35em").style("text-anchor", "end").text("function(d) { return valueLabels[groups][d];}")

	/* Unlike the .cont() method, the printer method adds a terminal ';' to each 
	of the objects passed to the method.  So, this will return JavaScript code 
	that looks something like:
	
		legend1Contents;
		legend2Contents;
		legend3Contents;
		
	Where the word Contents is being used to show that it will be the contents 
	of the object terminated by a semi-colon that will be output. */
	legendString = d3static.printer((legend, legend2, legend3))
	
	/* Start the xDomain below the minimum x value and extend it just beyond the 
	maximum value.  The .complete() method is used to return the contents of the 
	object as a string with a terminating ';' at the end of the contents. */
	xDomain = xDom.init().jsfree("xScale.domain([d3.min(data, xValue)-1, d3.max(data, xValue)+1])").complete()
	yDomain = yDom.init().jsfree("yScale.domain([d3.min(data, yValue)-1, d3.max(data, yValue)+1])").complete()

	// Creates the points in the scatterplot and calls the tooltip method on 
	// mouse over events
	svgtip.init().jsfree("svg").selectAll(".dot").data("obj_data").enter().append("circle").attr("class", "dot").attr("r", 5).attr("cx", "obj_xMap").attr("cy", "obj_yMap").style("fill", "function(d) { return color(cValue(d));}").on("mouseover", `"function(d) { tooltip.transition().duration(200).style("opacity", .9); "' + `"tooltip.html(d[tip]).style("left", (d3.event.pageX + 5) + "px").style("top", (d3.event.pageY - 28) + "px");}"').on("mouseout", `"function(d) { tooltip.transition().duration(500).style("opacity", 0);}"')

	// Object that will attach a y-axis to the graph
	svgYAxis.init().jsfree("svg").append("g").attr("class", "y axis").call("obj_yAxis").append("text").attr("class", "label").attr("transform", "rotate(-90)").attr("y", "obj_ytiPosY").attr("x", "obj_ytiPosX").style("text-anchor", "end").text("obj_varlabels[yvar]")

	// Object that attaches an x-axis to the graph
	svgXAxis.init().jsfree("svg").append("g").attr("class", "x axis").attr("transform", `""translate(0," + height + ")""').call("obj_xAxis").append("text").attr("class", "label").attr("x", "obj_xtiPosX").attr("y", 30).attr("font-size", "14px").style("text-anchor", "middle").text("obj_varlabels[xvar]")

	/* The majority of the work for the graph creation is handled in the body of 
	the function defined as a the callback to the .json() method.  
	char((10, 32, 32)) inserts a new line followed by two spaces to indent the 
	lines slightly as content is added. */
	json.init().jsfree("d3").json(dataset, `"function(error, json) {"' + char((10, 32, 32)) + `"if (error) return console.warn(error);"' + char((10, 32, 32)) + `"data = json.data.values;"' + char((10, 32, 32)) + `"varlabels = json["variable labels"], "' + char((10, 32, 32)) + `"valueLabels = json["value labels"], "' + char((10, 32, 32)) + `"varnames = json["variable names"];"' + char((10, 32, 32)) + xDomain + char((10, 32, 32)) + yDomain + char((10, 32, 32)) + svgXAxis.complete() + char((10, 32, 32)) + svgYAxis.complete() + char((10, 32, 32)) + svgtip.complete() + legendString + char((10)) + `"}"')

	/* Object that creates a new JavaScript function named scatter that accepts
	four arguments: an x-axis variable, a y-axis variable, a variable indicating 
	how points are grouped, and a variable to use for the tooltip labels.  This 
	method uses a combination of strings that were previously created, calls to 
	the printer method, and references to static members of the d3 class. */
	scatterplot.init().jsfree(marginString + "var scatter = function(xvar, yvar, groups, tip) {" + char((10, 32, 32)) + xString + char((10, 32, 32)) + yString + char((10, 32, 32)) + colorString + char((10, 32, 32)) + d3static.printer((svg, toolTip, data, labels, json)) + scatterplot.d3cr + "}")

	// This takes the variable names passed from the Mata function and inserts 
	// them into the JavaScript code that will be output from the method.
	scatterCall.init().jsfree("scatter(" + d3static.checkValue(xvar) + ", " + 
	d3static.checkValue(yvar) + ", " + d3static.checkValue(group) + ", " + 
	d3static.checkValue(labvar) + ")")

	// This populates the HTML script tag object with the java script created above
	d3graph.setClassArgs(scatterplot.complete() + scatterCall.d3cr + scatterCall.complete())

	// Now the script tags for the D3js, jQuery, and scatter plot are attached 
	// to the body HTML tag
	htmlbody.setClassArgs(d3source.print() + jquery.print() + d3graph.print())

	// The html tag gets the meta, header comments, style, and body tags nested 
	// within it.
	htmltag.setClassArgs(meta.print() + headerCmnt1.print() + headerCmnt2.print() + style.print() + htmlbody.print())

	// Lastly, the html tags are opened with a doctype tag 
	doctype.setClassArgs(htmltag.print())
	
	// Now we open a connection to a new file defined in the first parameter for 
	// the function
	fileConnection = fopen(filename, "w")

	// And print the doctype HTML tag which includes all of the subordinate 
	// HTML tags and JavaScript code
	fwrite(fileConnection, doctype.print())

	// Then the file connection is closed
	fclose(fileConnection)

	// Prints a message to the console that explains how to view the graph and 
	// to let the user know the html file was created 
	printf(`"The file %s was created and saved."' + char((10)) + 
		   `"To view the graph open up your console, and navigate to the "' + 
		   `"directory where the file was saved.  Then enter :"' + 
		   char((10, 9)) + `"python -m SimpleHTTPServer"' + char((10)) + 
		   `"To start an http server.  Next open your browser to"' + 
		   `"localhost:8000 to view the graph."', filename)
	
} // End of Mata function	

// Ends Mata interpretter	
end
