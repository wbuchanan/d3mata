// Starts Mata interpreter/compiler
mata: 

// Line below is used to drop Mata object if already in memory/Mata session
// mata drop d3()

// Defines a D3js Mata library
class d3 {

	// Define private member variables
	private: 
	
	// All private member variables are strings used to write JavaScript to a file
	string 		scalar 		d3, varnm, prev, current, lastFunction, currentFunction
	
	// Define public member variables
	public: 
	
	// Method to test arguments passed  to methods and returns a string version of them
	string		scalar		checkValue()
	
	// Constants
	final 	string 	scalar	tab, nl, cr, curlyo, curlyc, squareo, squarec, 
							nlindent, crindent, dblnl, dblcr

	// Defines class constructor method
	void					new()
	
	// Defines methods used to access class internals and to print the JS object
	string 		scalar 		getter(), complete(), undo(), getVarnm(), 
							getLastFunction(), getCurrentFunction(), printer(), 
							cont(), tabs(), newlines(), printNoTermination()

	// Defines methods based on D3js library functions/methods
	class 	d3	scalar		abort(), add(), append(), ascending(), attr(), 
							attrTween(), bates(), bisect(), bisectLeft(), 
							bisectRight(), bisector(), brighter(), call(), 
							classed(), color(), csv(), darker(), jsfree(), 
							data(), datum(), delay(), descending(), 
							deviation(), dispatch(), duration(), each(), 
							ease(), empty(), enter(), entries(), event(), 
							exit(), extent(), filter(), flush(), forEach(), 
							format(), formatPrefix(), functor(), geo(), 
							get(), has(), hcl(), header(), hsl(), html(), 
							insert(), interpolate(), interpolateArray(), 
							interpolateHcl(), interpolateHsl(), 
							interpolateLab(), interpolateNumber(), 
							interpolateObject(), interpolateRgb(), 
							interpolateRound(), interpolateString(), 
							interpolateTransform(), interpolateZoom(), 
							interpolators(), interrupt(), irwinHall(), 
							json(), key(), keys(), lab(), locale(), 
							logNormal(), map(), max(), mean(), median(), 
							merge(), mimeType(), min(), mouse(), nest(), 
							node(), normal(), ns(), numberFormat(), on(), 
							order(), pairs(), permute(), post(), prefix(), 
							property(), qualify(), quantile(), random(), 
							range(), rebind(), remove(), requote(), response(), 
							responseType(), rgb(), rollup(), rotate(), round(), 
							scale(), select(), selectAll(), // selection(), 
							send(), set(), shuffle(), size(), skew(), sort(), 
							sortKeys(), sortValues(), style(), styleTween(), 
							sum(), text(), timeFormat(), timer(), toString(), 
							touch(), touches(), transform(), transition(), 
							translate(), transpose(), tsv(), tween(), type(), 
							utc(), values(), variance(), xhr(), xml(), zip(), 
							behavior(), center(), drag(), origin(), 
							scaleExtent(), x(), y(), zoom(), area(), 
							centroid(), clip(), clipExtent(), find(), 
							geom(), hull(), links(), polygon(), quadtree(), 
							triangles(), visit(), voronoi(), alpha(), bins(), 
							bundle(), charge(), chargeDistance(), children(), 
							chord(), chords(), cluster(), endAngle(), force(), 
							frequency(), friction(), gravity(), groups(), 
							hierarchy(), histogram(), layout(), linkDistance(), 
							linkStrength(), matrx(), mode(), nodeSize(), 
							nodes(), offset(), out(), pack(), padAngle(), 
							padding(), partition(), pie(), radius(), ratio(), 
							resume(), revalue(), separation(), sortChords(), 
							sortGroups(), sortSubgroups(), stack(), start(), 
							startAngle(), sticky(), stop(), theta(), tick(), 
							tree(), treemap(), value(), albers(), albersUsa(), 
							angle(), azimuthalEqualArea(), azimuthalEquidistant(), 
							bounds(), circle(), clipAngle(), conicConformal(), 
							conicEqualArea(), conicEquidistant(), context(), 
							distance(), equirectangular(), gnomonic(), graticule(), 
							invert(), length(), lineEnd(), lineStart(), lines(), 
							majorExtent(), majorStep(), mercator(), 
							minorExtent(), minorStep(), orthographic(), outline(), 
							parallels(), path(), point(), pointRadius(), 
							polygonEnd(), polygonStart(), precision(), 
							projection(), projectionMutator(), raw(), 
							rotation(), sphere(), step(), stereographic(), 
							stream(), transverseMercator(), base(), 
							category10(), category20(), category20b(), 
							category20c(), clamp(), copy(), domain(), exponent(), 
							identity(), invertExtent(), linear(), log(), nice(), 
							ordinal(), pow(), quantiles(), quantize(), 
							rangeBand(), rangeBands(), rangeExtent(), 
							rangePoints(), rangeRound(), rangeRoundBands(), 
							rangeRoundPoints(), sqrt(), threshold(), 
							tickFormat(), ticks(), time(), arc(), axis(), 
							brush(), clear(), cornerRadius(), defined(), 
							diagonal(), innerRadius(), innerTickSize(), line(), 
							orient(), outerRadius(), outerTickSize(), 
							padRadius(), radial(), source(), svg(), symbol(), 
							symbolTypes(), target(), tension(), tickPadding(), 
							tickSize(), tickValues(), x0(), x1(), y0(), y1(), 
							ceil(), day(), dayOfYear(), days(), floor(), 
							friday(), fridayOfYear(), fridays(), hour(), 
							hours(), interval(), iso(), minute(), minutes(), 
							monday(), mondayOfYear(), mondays(), month(), 
							months(), multi(), parse(), saturday(), 
							saturdayOfYear(), saturdays(), second(), seconds(), 
							sunday(), sundayOfYear(), sundays(), thursday(), 
							thursdayOfYear(), thursdays(), tuesday(), 
							tuesdayOfYear(), tuesdays(), wednesday(), 
							wednesdayOfYear(), wednesdays(), week(), 
							weekOfYear(), weeks(), year(), years(), init() 

} // End of Class definition

// Constructor to initialize the class
void d3::new() {

	/* Constructor just sets member variables to null strings. */
	this.varnm = ""
	this.d3 = ""
	this.current = ""
	this.prev = ""
	this.lastFunction = ""
	this.currentFunction = ""
	
	this.tab = char((32, 32))
	this.nl = char((10))
	this.cr = char((13))
	this.curlyo = char((123))
	this.curlyc = char((125))
	this.squareo = char((91)) 
	this.squarec = char((93))
	this.nlindent = char((10, 32, 32))
	this.crindent = char((13, 32, 32))
	this.dblnl = char((10, 10))
	this.dblcr = char((13, 13))
	
	
} // End Constructor method definition

// Function to return JavaScript style tabs of 2 spaces each
string scalar d3::tabs(real scalar tabs) {
	return(this.tab * tabs)
}

// Returns newlines # form feed/new line ASCII characters
string scalar d3::newlines(real scalar newlines) {
	return(this.nl * newlines)
}

// Method to finalize the JavaScript String
string scalar d3::printer(class d3 matrix d3values) {
	string scalar retval, spaces, temp
	real scalar dotpos, i, j
	for (j = 1; j <= cols(d3values); j++) {
		dotpos = J(0, 0, .)
		for (i = 1; i <= rows(d3values); i++) {
			temp = d3values[i, j].getter()
			dotpos = strpos(temp, char((46)))
			spaces = char((41, 10)) + (char((32)) * dotpos) + char((46))
			retval = retval + (subinstr(temp, char((41, 46)), spaces) + ";" + char((10, 10)))	
		}
	} 
	return(retval)
}

// Method that converts argument types to strings and applies quotes when/if necessary 
string scalar d3::checkValue(transmorphic scalar value) {
	
	// If argument is numeric convert to string and return the value
	if (isreal(value) == 1) {
		return(strofreal(value))
	}
	
	// If argument begins with the word function return it as is
	else if (regexm(value, "^function.*") == 1 & isreal(value) != 1) {
		return(value)
	}
	
	// If the argument begins with obj_ remove the obj_ and return w/o extra quotes
	else if (regexm(value, "^obj_.*") == 1 & isreal(value) != 1) {
		return(subinstr(value, "obj_", ""))
	}
	
	// If argument is a string add quotation marks around it
	else if (isreal(value) != 1 & regexm(value, `"^".*"') == 1) {
		return(value)
	}

	// If argument is a string add quotation marks around it
	else if (isreal(value) != 1 & regexm(value, "^obj_.*") != 1 & 
			regexm(value, "^function.*") != 1) {
		return((char((34)) + value + char((34))))
	}
	
} // End of method declaration

// Method to initialize the class object
class d3 scalar d3::init(| string scalar vnm) {

	// If there is only a single column
	if (args() == 1) {
	
		// Set the variable name for the class
	    this.varnm = vnm
		
		// Set the d3 property for the class
		this.d3 = "var " + vnm + " = d3"
		
		// Set the current property for the class
		this.current = "var " + vnm + " = d3"
		
		// Set current function member variable
		this.currentFunction = "d3"
		
		// Set last function member variable
		this.lastFunction = "d3"
		
	} // End IF Block for single column
	
	// If there are two columns
	else {
	
		// Set the variable name for the class
		this.varnm = ""
		
		// Set the d3 property for the class
		this.d3 = ""
		
		// Set the current property for the class
		this.current = ""

		// Set current function member variable
		this.currentFunction = ""
		
		// Set last function member variable
		this.lastFunction = ""
		
	} // End ELSE Block for multiple columns
	
	// Set previous value member variable
	this.prev = ""
	
	// Return a copy of the object
	return(this)
	
} // End of Method declaration

// Method to retrieve current state of the D3 object
string scalar d3::getter() {
	return(this.current) 
}

// Method to print the complete JS object
string scalar d3::complete() {
	this.currentFunction = "complete"
	this.prev = this.getter()
	this.lastFunction = getLastFunction()
	this.current = this.current + ";" + char((10))
 	return(this.current) 
}

// Method to print object without inserting a terminating semicolon or comma
string scalar d3::printNoTermination() {
	return(this.current + this.nl)
}

// Method to print the complete JS object
string scalar d3::cont(class d3 matrix d3values) {
	string scalar retval, spaces
	real scalar i, j, dotpos, dotoffset
	dotpos = J(0, 0, .)
	for (j = 1; j <= cols(d3values); j++) {
		for (i = 1; i <= rows(d3values); i++) {
			dotoffset = J(0, 0, .)
			if (i == 1 & j == 1) {
				dotpos = strpos(d3values[1, 1].getter(), char((61)))
				retval = retval + (d3values[i, j].getter() + char((44, 32, 10)))
			}
			else if (j == cols(d3values)) {
				dotoffset = dotpos - strpos(d3values[i, j].getter(), char((61)))
				retval = retval + ((char((32))*dotoffset) + d3values[i, j].getter() + char((59, 10)))
			}
			else {
				dotoffset = dotpos - strpos(d3values[i, j].getter(), char((61)))
				retval = retval + ((char((32))*dotoffset) + d3values[i, j].getter() + char((44, 32, 10)))
			}
		}	
	} 
	return(retval)
}

// Method to retrieve the name of the JS variable created by the object
string scalar d3::getVarnm() {
	return(this.varnm) 
}


string scalar d3::undo() {
	this.currentFunction = getLastFunction()
	this.current = this.prev
	return(this.current) 
}

// Gets the last function/method called on the D3 object
string scalar d3::getLastFunction() {
	return(this.lastFunction)
}

// Gets the current function/method called on the D3 object
string scalar d3::getCurrentFunction() {
	return(this.currentFunction)
}

class d3 scalar d3::jsfree(string scalar jsfunction) {
	this.currentFunction = "jsfunction"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + jsfunction
	return(this)
}


class d3 scalar d3::geo() {
	this.currentFunction = "geo"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".geo"
	return(this)
}

class d3 scalar d3::key(transmorphic scalar func) {
	this.currentFunction = "key"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".key(" + checkValue(func) + ")"
	return(this)
}

class d3 scalar d3::random() {
	this.currentFunction = "random"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".random"
	return(this)
}

class d3 scalar d3::scale(| transmorphic scalar scale) {
	this.currentFunction = "scale"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".scale(" + checkValue(scale) + ")"
	}
	else {
		this.current = this.getter() + ".scale"
	}
	return(this)
}

class d3 scalar d3::skew() {
	this.currentFunction = "skew"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".skew"
	return(this)
}

class d3 scalar d3::abort() { 
	this.currentFunction = "abort"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".abort()" 
	return(this)
}


class d3 scalar d3::add(transmorphic scalar value) { 
	this.currentFunction = "add"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".add(" + checkValue(value) + ")" 
	return(this)
}


class d3 scalar d3::append(transmorphic scalar name) { 
	this.currentFunction = "append"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".append(" + checkValue(name) + ")" 
	return(this)
}


class d3 scalar d3::ascending(transmorphic scalar a, transmorphic scalar b) { 
	this.currentFunction = "ascending"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".ascending(" + checkValue(a) + ", " + checkValue(b) + ")" 
	return(this)
}


class d3 scalar d3::attr(transmorphic scalar name, | transmorphic scalar value) { 
	this.currentFunction = "attr"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (name == "class" & args() == 2) {
		this.current = this.getter() + ".attr(" + checkValue(name) + ", " + checkValue(value) + ")" 
	}
	else if (name != "class" & args() == 2)  {
			this.current = this.getter() + ".attr(" + checkValue(name) + ", " + checkValue(value) + ")" 
	}
	else {
		this.current = this.getter() + ".attr(" + checkValue(name) + ")" 
	}
	return(this)
}


class d3 scalar d3::attrTween(transmorphic scalar name, transmorphic scalar tween) { 
	this.currentFunction = "attrTween"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".attrTween(" + checkValue(name) + ", " + checkValue(tween) + ")" 
	return(this)
}


class d3 scalar d3::bates(transmorphic scalar count) { 
	this.currentFunction = "bates"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".bates(" + checkValue(count) + ")" 
	return(this)
}


class d3 scalar d3::bisect(transmorphic scalar aray, transmorphic scalar x, | transmorphic scalar lo, transmorphic scalar hi) { 
	this.currentFunction = "bisect"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 4) {
		this.current = this.getter() + ".bisect(" + checkValue(aray) + ", " + checkValue(x) + ", " + checkValue(lo) + ", " + checkValue(hi) + ")" 
	}
	else if (args() == 3) {
		this.current = this.getter() + ".bisect(" + checkValue(aray) + ", " + checkValue(x) + ", " + checkValue(lo) + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".bisect(" + checkValue(aray) + ", " + checkValue(x) + ")" 
	}
	return(this)
}


class d3 scalar d3::bisectLeft(transmorphic scalar aray, transmorphic scalar x, | transmorphic scalar lo, transmorphic scalar hi) { 
	this.currentFunction = "bisectLeft"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 4) {
		this.current = this.getter() + ".bisectLeft(" + checkValue(aray) + ", " + checkValue(x) + ", " + checkValue(lo) + ", " + checkValue(hi) + ")" 
	}
	else if (args() == 3) {
		this.current = this.getter() + ".bisectLeft(" + checkValue(aray) + ", " + checkValue(x) + ", " + checkValue(lo) + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".bisectLeft(" + checkValue(aray) + ", " + checkValue(x) + ")" 
	}
	return(this)
}


class d3 scalar d3::bisectRight(transmorphic scalar aray, transmorphic scalar x, | transmorphic scalar lo, transmorphic scalar hi) { 
	this.currentFunction = "bisectRight"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 4) {
		this.current = this.getter() + ".bisectRight(" + checkValue(aray) + ", " + checkValue(x) + ", " + checkValue(lo) + ", " + checkValue(hi) + ")" 
	}
	else if (args() == 3) {
		this.current = this.getter() + ".bisectRight(" + checkValue(aray) + ", " + checkValue(x) + ", " + checkValue(lo) + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".bisectRight(" + checkValue(aray) + ", " + checkValue(x) + ")" 
	}
	return(this)
}


class d3 scalar d3::bisector(transmorphic scalar comparator) { 
	this.currentFunction = "bisector"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".bisector(" + checkValue(comparator) + ")" 
	return(this)
}


class d3 scalar d3::brighter(| transmorphic scalar k) { 
	this.currentFunction = "brighter"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".brighter(" + checkValue(k) + ")" 
	}
	else {
		this.current = this.getter() + ".brighter()" 
	}
	return(this)
}


class d3 scalar d3::call(transmorphic scalar func, | transmorphic scalar arguments) { 
	this.currentFunction = "call"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".call(" + checkValue(func) + ", " + checkValue(arguments) + ")" 
	}
	else {
		this.current = this.getter() + ".call(" + checkValue(func) + ")" 
	}
	return(this)
}


class d3 scalar d3::classed(transmorphic scalar name, | transmorphic scalar value) { 
	this.currentFunction = "classed"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".classed(" + checkValue(name) + ", " + checkValue(value) + ")" 
	}
	else {
		this.current = this.getter() + ".classed(" + checkValue(name) + ")"
	}
	return(this)
}

class d3 scalar d3::color() { 
	this.currentFunction = "color"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".color()" 
	return(this)
}


class d3 scalar d3::csv(transmorphic scalar url, | transmorphic scalar accessor, transmorphic scalar callback) { 
	this.currentFunction = "csv"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".csv(" + checkValue(url) + ", " + checkValue(accessor) + ", " + checkValue(callback) + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".csv(" + checkValue(url) + ", " + checkValue(accessor) + ")" 
	}
	else {
		this.current = this.getter() + ".csv(" + checkValue(url) + ")" 
	}
	return(this)
}


class d3 scalar d3::darker(| transmorphic scalar k) { 
	this.currentFunction = "darker"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".darker(" + checkValue(k) + ")" 
	}
	else {
		this.current = this.getter() + ".darker()" 
	}
	return(this)
}


class d3 scalar d3::data(| transmorphic scalar values, transmorphic scalar key) { 
	this.currentFunction = "data"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".data(" + checkValue(values) + ", " + checkValue(key) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".data(" + checkValue(values) + ")" 
	}
	else {
		this.current = this.getter() + ".data()" 
	}
	return(this)
}


class d3 scalar d3::datum(| transmorphic scalar value) { 
	this.currentFunction = "datum"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".datum(" + checkValue(value) + ")" 
	}
	else {
		this.current = this.getter() + ".datum()" 
	}
	return(this)
}


class d3 scalar d3::delay(| transmorphic scalar delay) { 
	this.currentFunction = "delay"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".delay(" + checkValue(delay) + ")" 
	}
	else {
		this.current = this.getter() + ".delay()" 
	}
	return(this)
}


class d3 scalar d3::descending(transmorphic scalar a, transmorphic scalar b) { 
	this.currentFunction = "descending"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".descending(" + checkValue(a) + ", " + checkValue(b) + ")" 
	return(this)
}


class d3 scalar d3::deviation(transmorphic scalar aray, | transmorphic scalar accessor) { 
	this.currentFunction = "deviation"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".deviation(" + checkValue(aray) + ", " + checkValue(accessor) + ")" 
	}
	else {
		this.current = this.getter() + ".deviation(" + checkValue(aray) + ")" 
	}
	return(this)
}


class d3 scalar d3::dispatch(transmorphic scalar types) { 
	this.currentFunction = "dispatch"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".dispatch(" + checkValue(types) + ")" 
	return(this)
}


class d3 scalar d3::duration(| transmorphic scalar duration) { 
	this.currentFunction = "duration"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".duration(" + checkValue(duration) + ")" 
	}
	else {
		this.current = this.getter() + ".duration()" 
	}
	return(this)
}


class d3 scalar d3::each(| transmorphic scalar type, transmorphic scalar listener) { 
	this.currentFunction = "each"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".each(" + checkValue(type) + ", " + checkValue(listener) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".each(" + checkValue(type) + ")" 
	}
	else {
		this.current = this.getter() + ".each()" 
	}
	return(this)
}


class d3 scalar d3::ease(| transmorphic scalar value, transmorphic scalar arguments) { 
	this.currentFunction = "ease"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".ease(" + checkValue(value) + ", " + checkValue(arguments) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".ease(" + checkValue(value) + ")" 
	}
	else {
		this.current = this.getter() + ".ease()" 
	}
	return(this)
}


class d3 scalar d3::empty() { 
	this.currentFunction = "empty"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".empty()" 
	return(this)
}


class d3 scalar d3::enter() { 
	this.currentFunction = "enter"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".enter()" 
	return(this)
}


class d3 scalar d3::entries(| transmorphic scalar object) { 
	this.currentFunction = "entries"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".entries(" + checkValue(object) + ")" 
	}
	else {
		this.current = this.getter() + ".entries()" 
	}
	return(this)
}

class d3 scalar d3::event(| transmorphic scalar event) {
	this.currentFunction = "event"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".event(" + checkValue(event) + ")"
	}
	else {
		this.current = this.getter() + ".event"
	}
	return(this)
}


class d3 scalar d3::exit() { 
	this.currentFunction = "exit"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".exit()" 
	return(this)
}


class d3 scalar d3::extent(| transmorphic scalar aray, transmorphic scalar accessor) { 
	this.currentFunction = "extent"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".extent(" + checkValue(aray) + ", " + checkValue(accessor) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".extent(" + checkValue(aray) + ")" 
	}
	else {
		this.current = this.getter() + ".extent(" + checkValue(aray) + ")" 
	}
	return(this)
}


class d3 scalar d3::filter(transmorphic scalar selector) { 
	this.currentFunction = "filter"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".filter(" + checkValue(selector) + ")" 
	return(this)
}


class d3 scalar d3::flush() { 
	this.currentFunction = "flush"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".flush()" 
	return(this)
}


class d3 scalar d3::forEach(transmorphic scalar func) { 
	this.currentFunction = "forEach"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".forEach(" + checkValue(func) + ")" 
	return(this)
}


class d3 scalar d3::format(transmorphic scalar specifier) { 
	this.currentFunction = "format"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".format(" + checkValue(specifier) + ")" 
	return(this)
}


class d3 scalar d3::formatPrefix(transmorphic scalar value, | transmorphic scalar precision) { 
	this.currentFunction = "formatPrefix"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".formatPrefix(" + checkValue(value) + ", " + checkValue(precision) + ")" 
	}
	else {
		this.current = this.getter() + ".formatPrefix(" + checkValue(value) + ")" 
	}
	return(this)
}


class d3 scalar d3::functor(transmorphic scalar value) { 
	this.currentFunction = "functor"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".functor(" + checkValue(value) + ")" 
	return(this)
}


class d3 scalar d3::get(| transmorphic scalar callback) { 
	this.currentFunction = "get"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".get(" + checkValue(callback) + ")" 
	}
	else {
		this.current = this.getter() + ".get()" 
	}
	return(this)
}


class d3 scalar d3::has(transmorphic scalar key) { 
	this.currentFunction = "has"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".has(" + checkValue(key) + ")" 
	return(this)
}


class d3 scalar d3::hcl(transmorphic scalar h, | transmorphic scalar c, transmorphic scalar l) { 
	this.currentFunction = "hcl"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".hcl(" + checkValue(h) + ", " + checkValue(c) + ", " + checkValue(l) + ")" 
	}
	else {
		this.current = this.getter() + ".hcl(" + checkValue(h) + ")" 
	}
	return(this)
}


class d3 scalar d3::header(transmorphic scalar name, | transmorphic scalar value) { 
	this.currentFunction = "header"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".header(" + checkValue(name) + ", " + checkValue(value) + ")" 
	}
	else {
		this.current = this.getter() + ".header(" + checkValue(name) + ")" 
	}
	return(this)
}


class d3 scalar d3::hsl(| transmorphic scalar h, transmorphic scalar s, transmorphic scalar l) { 
	this.currentFunction = "hsl"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".hsl(" + checkValue(h) + ", " + checkValue(s) + ", " + checkValue(l) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".hsl(" + checkValue(h) + ")" 
	}
	else {
		this.current = this.getter() + ".hsl()" 
	}
	return(this)
}


class d3 scalar d3::html(| transmorphic scalar url, transmorphic scalar callback) { 
	this.currentFunction = "html"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".html(" + checkValue(url) + ", " + checkValue(callback) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".html(" + checkValue(url) + ")"
	}
	else {
		this.current = this.getter() + ".html()" 
	}
	return(this)
}


class d3 scalar d3::insert(transmorphic scalar name, | transmorphic scalar before) { 
	this.currentFunction = "insert"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".insert(" + checkValue(name) + ", " + checkValue(before) + ")" 
	}
	else {
		this.current = this.getter() + ".insert(" + checkValue(name) + ")" 
	}
	return(this)
}


class d3 scalar d3::interpolate(| transmorphic scalar a, transmorphic scalar b) { 
	this.currentFunction = "interpolate"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".interpolate(" + checkValue(a) + ", " + checkValue(b) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".interpolate(" + checkValue(a) + ")" 
	}
	else {
		this.current = this.getter() + ".interpolate()" 
	}
	return(this)
}


class d3 scalar d3::interpolators(transmorphic scalar func) { 
	this.currentFunction = "interpolators"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".interpolators.push(" + checkValue(func) + ")" 
	return(this)
}


class d3 scalar d3::interpolateArray(transmorphic scalar a, transmorphic scalar b) { 
	this.currentFunction = "interpolateArray"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".interpolateArray(" + checkValue(a) + ", " + checkValue(b) + ")" 
	return(this)
}


class d3 scalar d3::interpolateHcl(transmorphic scalar a, transmorphic scalar b) { 
	this.currentFunction = "interpolateHcl"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".interpolateHcl(" + checkValue(a) + ", " + checkValue(b) + ")" 
	return(this)
}


class d3 scalar d3::interpolateHsl(transmorphic scalar a, transmorphic scalar b) { 
	this.currentFunction = "interpolateHsl"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".interpolateHsl(" + checkValue(a) + ", " + checkValue(b) + ")" 
	return(this)
}


class d3 scalar d3::interpolateLab(transmorphic scalar a, transmorphic scalar b) { 
	this.currentFunction = "interpolateLab"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".interpolateLab(" + checkValue(a) + ", " + checkValue(b) + ")" 
	return(this)
}


class d3 scalar d3::interpolateNumber(transmorphic scalar a, transmorphic scalar b) { 
	this.currentFunction = "interpolateNumber"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".interpolateNumber(" + checkValue(a) + ", " + checkValue(b) + ")" 
	return(this)
}


class d3 scalar d3::interpolateObject(transmorphic scalar a, transmorphic scalar b) { 
	this.currentFunction = "interpolateObject"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".interpolateObject(" + checkValue(a) + ", " + checkValue(b) + ")" 
	return(this)
}


class d3 scalar d3::interpolateRgb(transmorphic scalar a, transmorphic scalar b) { 
	this.currentFunction = "interpolateRgb"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".interpolateRgb(" + checkValue(a) + ", " + checkValue(b) + ")" 
	return(this)
}


class d3 scalar d3::interpolateRound(transmorphic scalar a, transmorphic scalar b) { 
	this.currentFunction = "interpolateRound"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".interpolateRound(" + checkValue(a) + ", " + checkValue(b) + ")" 
	return(this)
}


class d3 scalar d3::interpolateString(transmorphic scalar a, transmorphic scalar b) { 
	this.currentFunction = "interpolateString"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".interpolateString(" + checkValue(a) + ", " + checkValue(b) + ")" 
	return(this)
}


class d3 scalar d3::interpolateTransform(transmorphic scalar a, transmorphic scalar b) { 
	this.currentFunction = "interpolateTransform"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".interpolateTransform(" + checkValue(a) + ", " + checkValue(b) + ")" 
	return(this)
}


class d3 scalar d3::interpolateZoom(transmorphic scalar a, transmorphic scalar b) { 
	this.currentFunction = "interpolateZoom"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".interpolateZoom(" + checkValue(a) + ", " + checkValue(b) + ")" 
	return(this)
}


class d3 scalar d3::interrupt(| transmorphic scalar name) { 
	this.currentFunction = "interrupt"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".interrupt(" + checkValue(name) + ")" 	
	}
	else {
		this.current = this.getter() + ".interrupt()" 
	}
	return(this)
}


class d3 scalar d3::irwinHall(transmorphic scalar count) { 
	this.currentFunction = "irwinHall"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".irwinHall(" + checkValue(count) + ")" 
	return(this)
}


class d3 scalar d3::json(transmorphic scalar url, | transmorphic scalar callback) { 
	this.currentFunction = "json"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".json(" + checkValue(url) + ", " + checkValue(callback) + ")" 
	}
	else {
		this.current = this.getter() + ".json(" + checkValue(url) + ")" 
	}
	return(this)
}


class d3 scalar d3::keys(transmorphic scalar object) { 
	this.currentFunction = "keys"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".keys(" + checkValue(object) + ")" 
	return(this)
}


class d3 scalar d3::lab(transmorphic scalar l, | transmorphic scalar a, transmorphic scalar b) { 
	this.currentFunction = "lab"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".lab(" + checkValue(l) + ", " + checkValue(a) + ", " + checkValue(b) + ")" 
	}
	else {
		this.current = this.getter() + ".lab(" + checkValue(l) + ")" 
	}
	return(this)
}


class d3 scalar d3::locale(transmorphic scalar definition) { 
	this.currentFunction = "locale"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (regexm(definition, "(decimal)(thousands)(grouping)(currency)") == 1) {
		this.current = this.getter() + ".locale(" + checkValue(definition) + ")" 
		return(this)
	}
	else {
		_error(3498, "Specifying a locale requires the decimal, thousands, grouping, and currency attributes be defined.")
	}
}
		


class d3 scalar d3::logNormal(| transmorphic scalar mean, transmorphic scalar deviation) { 
	this.currentFunction = "logNormal"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".logNormal(" + checkValue(mean) + ", " + checkValue(deviation) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".logNormal(" + checkValue(mean) + ")" 
	}
	else {
		this.current = this.getter() + ".logNormal()" 
	}
	return(this)
}


class d3 scalar d3::map(| transmorphic scalar object, transmorphic scalar key) { 
	this.currentFunction = "map"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".map(" + checkValue(object) + ", " + checkValue(key) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".map(" + checkValue(object) + ")" 
	}
	else {
		this.current = this.getter() + ".map()" 
	}
	return(this)
}


class d3 scalar d3::max(transmorphic scalar aray, | transmorphic scalar accessor) { 
	this.currentFunction = "max"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".max(" + checkValue(aray) + ", " + checkValue(accessor) + ")" 
	}
	else {
		this.current = this.getter() + ".max(" + checkValue(aray) + ")" 
	}
	return(this)
}


class d3 scalar d3::mean(transmorphic scalar aray, | transmorphic scalar accessor) { 
	this.currentFunction = "mean"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".mean(" + checkValue(aray) + ", " + checkValue(accessor) + ")" 
	}
	else {
		this.current = this.getter() + ".mean(" + checkValue(aray) + ")" 
	}
	return(this)
}


class d3 scalar d3::median(transmorphic scalar aray, | transmorphic scalar accessor) { 
	this.currentFunction = "median"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".median(" + checkValue(aray) + ", " + checkValue(accessor) + ")" 
	}
	else {
		this.current = this.getter() + ".median(" + checkValue(aray) + ")" 
	}
	return(this)
}


class d3 scalar d3::merge(transmorphic scalar arays) { 
	this.currentFunction = "merge"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".merge(" + checkValue(arays) + ")" 
	return(this)
}


class d3 scalar d3::mimeType(| transmorphic scalar type) { 
	this.currentFunction = "mimeType"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".mimeType(" + checkValue(type) + ")" 
	}
	else {
		this.current = this.getter() + ".mimeType()" 
	}
	return(this)
}


class d3 scalar d3::min(transmorphic scalar aray, | transmorphic scalar accessor) { 
	this.currentFunction = "min"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".min(" + checkValue(aray) + ", " + checkValue(accessor) + ")" 
	}
	else {
		this.current = this.getter() + ".min(" + checkValue(aray) + ")" 
	}
	return(this)
}


class d3 scalar d3::mouse(transmorphic scalar container) { 
	this.currentFunction = "mouse"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".mouse(" + checkValue(container) + ")" 
	return(this)
}


class d3 scalar d3::nest() { 
	this.currentFunction = "nest"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".nest()" 
	return(this)
}


class d3 scalar d3::node() { 
	this.currentFunction = "node"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".node()" 
	return(this)
}


class d3 scalar d3::normal(| transmorphic scalar mean, transmorphic scalar deviation) { 
	this.currentFunction = "normal"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".normal(" + checkValue(mean) + ", " + checkValue(deviation) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".normal(" + checkValue(mean) + ")" 
	}
	else {
		this.current = this.getter() + ".normal()" 
	}
	return(this)
}


class d3 scalar d3::ns() {
	this.currentFunction = "ns"
	this.lastFunction = getLastFunction()
	this.currentFunction = ""
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".ns"
	return(this)
}

class d3 scalar d3::numberFormat(transmorphic scalar specifier) { 
	this.currentFunction = "numberFormat"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".numberFormat(" + checkValue(specifier) + ")" 
	return(this)
}


class d3 scalar d3::on(transmorphic scalar type, | transmorphic scalar listener, transmorphic scalar capture) { 
	this.currentFunction = "on"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".on(" + checkValue(type) + ", " + checkValue(listener) + ", " + checkValue(capture) + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".on(" + checkValue(type) + ", " + checkValue(listener) + ")" 
	}
	else {
		this.current = this.getter() + ".on(" + checkValue(type) + ")" 
	}
	return(this)
}


class d3 scalar d3::order(| transmorphic scalar order) { 
	this.currentFunction = "order"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".order(" + checkValue(order) + ")" 
	}
	else {
		this.current = this.getter() + ".order()" 
	}
	return(this)
}


class d3 scalar d3::pairs(transmorphic scalar aray) { 
	this.currentFunction = "pairs"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".pairs(" + checkValue(aray) + ")" 
	return(this)
}


class d3 scalar d3::permute(transmorphic scalar aray, transmorphic scalar indexes) { 
	this.currentFunction = "permute"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".permute(" + checkValue(aray) + ", " + checkValue(indexes) + ")" 
	return(this)
}


class d3 scalar d3::post(| transmorphic scalar data, transmorphic scalar callback) { 
	this.currentFunction = "post"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".post(" + checkValue(data) + ", " + checkValue(callback) + ")" 
	}
	else {
		this.current = this.getter() + ".post(" + checkValue(data) + ")" 
	}
	return(this)
}

class d3 scalar d3::prefix() {
	this.currentFunction = "prefix"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".prefix"
	return(this)
}

class d3 scalar d3::property(transmorphic scalar name, | transmorphic scalar value) { 
	this.currentFunction = "property"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".property(" + checkValue(name) + ", " + checkValue(value) + ")" 
	}
	else {
		this.current = this.getter() + ".property(" + checkValue(name) + ")" 
	}
	return(this)
}


class d3 scalar d3::qualify(transmorphic scalar name) { 
	this.currentFunction = "qualify"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".qualify(" + checkValue(name) + ")" 
	return(this)
}


class d3 scalar d3::quantile(| transmorphic scalar numbers, transmorphic scalar p) { 
	this.currentFunction = "quantile"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".quantile(" + checkValue(numbers) + ", " + checkValue(p) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".quantile(" + checkValue(numbers) + ")" 
	}
	else {
		this.current = this.getter() + ".quantile()" 
	}
	return(this)
}


class d3 scalar d3::range(transmorphic scalar stop, | transmorphic scalar start, transmorphic scalar step) { 
	this.currentFunction = "range"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".range(" + checkValue(stop) + ")"
	}
	else {
		transmorphic scalar strt, stp, ste
		if (start == .) strt = 0
		else strt = start
		if (step == .) ste = 1
		else ste = step
		stp = stop
		this.current = this.getter() + ".range(" + checkValue(strt) + ", " + checkValue(stp) + ", " + checkValue(ste) + ")" 
	}
	return(this)
}


class d3 scalar d3::rebind(transmorphic scalar target, transmorphic scalar source, transmorphic scalar names) { 
	this.currentFunction = "rebind"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".rebind(" + checkValue(target) + ", " + checkValue(source) + ", " + checkValue(names) + ")" 
	return(this)
}


class d3 scalar d3::remove(| transmorphic scalar value) { 
	this.currentFunction = "remove"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".remove(" + checkValue(value) + ")" 
	}
	else {
		this.current = this.getter() + ".remove()" 
	}
	return(this)
}


class d3 scalar d3::requote(transmorphic scalar strng) { 
	this.currentFunction = "requote"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".requote(" + checkValue(strng) + ")" 
	return(this)
}


class d3 scalar d3::response(transmorphic scalar value) { 
	this.currentFunction = "response"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".response(" + checkValue(value) + ")" 
	return(this)
}


class d3 scalar d3::responseType(transmorphic scalar type) { 
	this.currentFunction = "responseType"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".responseType(" + checkValue(type) + ")" 
	return(this)
}


class d3 scalar d3::rgb(| transmorphic scalar r, transmorphic scalar g, transmorphic scalar b) { 
	this.currentFunction = "rgb"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".rgb(" + checkValue(r) + ", " + checkValue(g) + ", " + checkValue(b) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".rgb(" + checkValue(r) + ")" 
	}
	else {
		this.current = this.getter() + ".rgb()" 
	}
	return(this)
}


class d3 scalar d3::rollup(transmorphic scalar func) { 
	this.currentFunction = "rollup"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".rollup(" + checkValue(func) + ")" 
	return(this)
}

class d3 scalar d3::rotate(| transmorphic scalar rotate) {
	this.currentFunction = "rotate"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".rotate(" + checkValue(rotate) + ")" 
	}
	else {
		this.current = this.getter() + ".rotate()" 
	}
	return(this)
}


class d3 scalar d3::round(| transmorphic scalar x, transmorphic scalar n) { 
	this.currentFunction = "round"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".round(" + checkValue(x) + ", " + checkValue(n) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".round(" + checkValue(x) + ")" 
	}
	else {
		this.current = this.getter() + ".round()" 
	}
	return(this)
}


class d3 scalar d3::select(transmorphic scalar selector) { 
	this.currentFunction = "select"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".select(" + checkValue(selector) + ")" 
	return(this)
}


class d3 scalar d3::selectAll(transmorphic scalar selector) { 
	this.currentFunction = "selectAll"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".selectAll(" + checkValue(selector) + ")"
	return(this)
}


/*
class d3 scalar d3::selection() { 
	this.currentFunction = "selection"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".selection()" 
	return(this)
}
*/

class d3 scalar d3::send(transmorphic scalar method, | transmorphic scalar data, transmorphic scalar callback) { 
	this.currentFunction = "send"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".send(" + checkValue(method) + ", " + checkValue(data) + ", " + checkValue(callback) + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".send(" + checkValue(method) + ", " + checkValue(data) + ")" 
	}
	else {
		this.current = this.getter() + ".send(" + checkValue(method) + ")" 
	}
	return(this)
}


class d3 scalar d3::set(| transmorphic scalar key, transmorphic scalar value) { 
	this.currentFunction = "set"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".set(" + checkValue(key) + ", " + checkValue(value) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".set(" + checkValue(key) + ")" 
	}
	else {
		this.current = this.getter() + ".set()" 
	}
	return(this)
}

class d3 scalar d3::shuffle(transmorphic scalar aray, | transmorphic scalar lo, transmorphic scalar hi) { 
	this.currentFunction = "shuffle"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".shuffle(" + checkValue(aray) + ", " + checkValue(lo) + ", " + checkValue(hi) + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".shuffle(" + checkValue(aray) + ", " + checkValue(lo) + ")" 
	}
	else {
		this.current = this.getter() + ".shuffle(" + checkValue(aray) + ")" 
	}
	return(this)
}


class d3 scalar d3::size(| transmorphic scalar width, transmorphic scalar height) { 
	this.currentFunction = "size"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".size(" + checkValue(width) + ", " + checkValue(height) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".size(" + checkValue(width) + ")" 
	}
	else {
		this.current = this.getter() + ".size()" 
	}
	return(this)
}


class d3 scalar d3::sort(| transmorphic scalar comparator) { 
	this.currentFunction = "sort"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".sort(" + checkValue(comparator) + ")" 
	}
	else {
		this.current = this.getter() + ".sort()" 
	}
	return(this)
}


class d3 scalar d3::sortKeys(transmorphic scalar comparator) { 
	this.currentFunction = "sortKeys"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".sortKeys(" + checkValue(comparator) + ")" 
	return(this)
}


class d3 scalar d3::sortValues(transmorphic scalar comparator) { 
	this.currentFunction = "sortValues"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".sortValues(" + checkValue(comparator) + ")" 
	return(this)
}


class d3 scalar d3::style(transmorphic scalar name, | transmorphic scalar value, transmorphic scalar priority) { 
	this.currentFunction = "style"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".style(" + checkValue(name) + ", " + checkValue(value) + ", " + checkValue(priority) + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".style(" + checkValue(name) + ", " + checkValue(value) + ")" 
	}
	else {
		this.current = this.getter() + ".style(" + checkValue(name) + ")" 
	}
	return(this)
}


class d3 scalar d3::styleTween(transmorphic scalar name, transmorphic scalar tween, | transmorphic scalar priority) { 
	this.currentFunction = "styleTween"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".styleTween(" + checkValue(name) + ", " + checkValue(tween) + ", " + checkValue(priority) + ")" 
	}
	else {
		this.current = this.getter() + ".styleTween(" + checkValue(name) + ", " + checkValue(tween) + ")" 
	}
	return(this)
}


class d3 scalar d3::sum(transmorphic scalar aray, | transmorphic scalar accessor) { 
	this.currentFunction = "sum"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".sum(" + checkValue(aray) + ", " + checkValue(accessor) + ")" 
	}
	else {
		this.current = this.getter() + ".sum(" + checkValue(aray) + ")" 
	}
	return(this)
}


class d3 scalar d3::text(| transmorphic scalar url, transmorphic scalar mimeType, transmorphic scalar callback) { 
	this.currentFunction = "text"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".text(" + checkValue(url) + ", " + checkValue(mimeType) + ", " + checkValue(callback) + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".text(" + checkValue(url) + ", " + checkValue(mimeType) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".text(" + checkValue(url) + ")" 
	}
	else {
		this.current = this.getter() + ".text()"
	}
	return(this)
}


class d3 scalar d3::timeFormat(transmorphic scalar specifier) { 
	this.currentFunction = "timeFormat"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".timeFormat(" + checkValue(specifier) + ")" 
	return(this)
}


class d3 scalar d3::timer(transmorphic scalar func, | transmorphic scalar delay, transmorphic scalar time) { 
	this.currentFunction = "timer"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".timer(" + checkValue(func) + ", " + checkValue(delay) + ", " + checkValue(time) + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".timer(" + checkValue(func) + ", " + checkValue(delay) + ")" 
	}
	else {
		this.current = this.getter() + ".timer(" + checkValue(func) + ")" 
	}
	return(this)
}


class d3 scalar d3::toString() { 
	this.currentFunction = "toString"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".toString()" 
	return(this)
}


class d3 scalar d3::touch(transmorphic scalar container, | transmorphic scalar touches, transmorphic scalar identifier) { 
	this.currentFunction = "touch"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".touch(" + checkValue(container) + ", " + checkValue(touches) + ", " + checkValue(identifier) + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".touch(" + checkValue(container) + ", " + checkValue(touches) + ")" 
	}
	else {
		this.current = this.getter() + ".touch(" + checkValue(container) + ")" 
	}
	return(this)
}


class d3 scalar d3::touches(transmorphic scalar container, | transmorphic scalar touches) { 
	this.currentFunction = "touches"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".touches(" + checkValue(container) + ", " + checkValue(touches) + ")" 
	}
	else {
		this.current = this.getter() + ".touches(" + checkValue(container) + ")" 
	}
	return(this)
}


class d3 scalar d3::transform(transmorphic scalar strng) { 
	this.currentFunction = "transform"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".transform(" + checkValue(strng) + ")" 
	return(this)
}


class d3 scalar d3::transition(| transmorphic scalar selection, transmorphic scalar name) { 
	this.currentFunction = "transition"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".transition(" + checkValue(selection) + ", " + checkValue(name) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".transition(" + checkValue(selection) + ")" 
	}
	else {
		this.current = this.getter() + ".transition()" 
	}
	return(this)
}

class d3 scalar d3::translate(| transmorphic scalar translate, transmorphic scalar d3) {
	this.currentFunction = "translate"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (translate != "") {
		this.current = this.getter() + ".translate(" + checkValue(translate) + ")"
	}
	else if (translate == "" & d3 == 1) {
		this.current = this.getter() + ".translate()"
	}
	else if (translate == "" & d3 == 0) {
		this.current = this.getter() + ".translate"
	}
	return(this)
}


class d3 scalar d3::transpose(transmorphic scalar matrx) { 
	this.currentFunction = "transpose"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".transpose(" + checkValue(matrx) + ")" 
	return(this)
}


class d3 scalar d3::tsv(transmorphic scalar url, | transmorphic scalar accessor, transmorphic scalar callback) { 
	this.currentFunction = "tsv"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".tsv(" + checkValue(url) + ", " + checkValue(accessor) + ", " + checkValue(callback) + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".tsv(" + checkValue(url) + ", " + checkValue(accessor) + ")" 
	}
	else {
		this.current = this.getter() + ".tsv(" + checkValue(url) + ")" 
	}
	return(this)
}


class d3 scalar d3::tween(transmorphic scalar name, transmorphic scalar factory) { 
	this.currentFunction = "tween"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".tween(" + checkValue(name) + ", " + checkValue(factory) + ")" 
	return(this)
}


class d3 scalar d3::type(| transmorphic scalar arguments) { 
	this.currentFunction = "type"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".type(" + checkValue(arguments) + ")" 
	}
	else {
		this.current = this.getter() + ".type()" 
	}
	return(this)
}

class d3 scalar d3::values(| transmorphic scalar object) { 
	this.currentFunction = "values"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".values(" + checkValue(object) + ")" 
	}
	else {
		this.current = this.getter() + ".values()" 
	}
	return(this)
}

class d3 scalar d3::variance(transmorphic scalar aray, | transmorphic scalar accessor) { 
	this.currentFunction = "variance"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".variance(" + checkValue(aray) + ", " + checkValue(accessor) + ")" 
	}
	else {
		this.current = this.getter() + ".variance(" + checkValue(aray) + ")" 
	}
	return(this)
}


class d3 scalar d3::xhr(transmorphic scalar url, | transmorphic scalar mimeType, transmorphic scalar callback) { 
	this.currentFunction = "xhr"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".xhr(" + checkValue(url) + ", " + checkValue(mimeType) + ", " + checkValue(callback) + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".xhr(" + checkValue(url) + ", " + checkValue(mimeType) + ")" 
	}
	else {
		this.current = this.getter() + ".xhr(" + checkValue(url) + ")" 
	}
	return(this)
}


class d3 scalar d3::xml(transmorphic scalar url, | transmorphic scalar mimeType, transmorphic scalar callback) { 
	this.currentFunction = "xml"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".xml(" + checkValue(url) + ", " + checkValue(mimeType) + ", " + checkValue(callback) + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".xml(" + checkValue(url) + ", " + checkValue(mimeType) + ")" 
	}
	else {
		this.current = this.getter() + ".xml(" + checkValue(url) + ")" 
	}
	return(this)
}


class d3 scalar d3::zip(transmorphic scalar arays) { 
	this.currentFunction = "zip"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".zip(" + checkValue(arays) + ")" 
	return(this)
}

class d3 scalar d3::behavior() {
	this.currentFunction = "behavior"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".behavior"
	return(this)
}

class d3 scalar d3::center(| transmorphic scalar center) { 
	this.currentFunction = "center"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".center(" + checkValue(center) + ")" 
	}
	else {
		this.current = this.getter() + ".center()" 
	}
	return(this)
}

class d3 scalar d3::drag() { 
	this.currentFunction = "drag"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".drag()" 
	return(this)
}

class d3 scalar d3::origin(| transmorphic scalar origin) { 
	this.currentFunction = "origin"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".origin(" + checkValue(origin) + ")" 
	}
	else {
		this.current = this.getter() + ".origin()" 
	}
	return(this)
}

class d3 scalar d3::scaleExtent(| transmorphic scalar extent) { 
	this.currentFunction = "scaleExtent"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".scaleExtent(" + checkValue(extent) + ")" 
	}
	else {
		this.current = this.getter() + ".scaleExtent()" 
	}
	return(this)
}

class d3 scalar d3::x(| transmorphic scalar x) { 
	this.currentFunction = "x"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".x(" + checkValue(x) + ")" 
	}
	else {
		this.current = this.getter() + ".x()" 
	}
	return(this)
}

class d3 scalar d3::y(| transmorphic scalar y) { 
	this.currentFunction = "y"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".y(" + checkValue(y) + ")" 
	}
	else {
		this.current = this.getter() + ".y()" 
	}
	return(this)
}

class d3 scalar d3::x0(| transmorphic scalar x0) { 
	this.currentFunction = "x0"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".x0(" + checkValue(x0) + ")" 
	}
	else {
		this.current = this.getter() + ".x0()" 
	}
	return(this)
}

class d3 scalar d3::y0(| transmorphic scalar y0) { 
	this.currentFunction = "y0"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".y0(" + checkValue(y0) + ")" 
	}
	else {
		this.current = this.getter() + ".y0()" 
	}
	return(this)
}

class d3 scalar d3::x1(| transmorphic scalar x1) { 
	this.currentFunction = "x1"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".x1(" + checkValue(x1) + ")" 
	}
	else {
		this.current = this.getter() + ".x1()" 
	}
	return(this)
}

class d3 scalar d3::y1(| transmorphic scalar y1) { 
	this.currentFunction = "y1"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".y1(" + checkValue(y1) + ")" 
	}
	else {
		this.current = this.getter() + ".y1()" 
	}
	return(this)
}

class d3 scalar d3::zoom(| transmorphic scalar selection) { 
	this.currentFunction = "zoom"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".zoom(" + checkValue(selection) + ")" 
	}
	else {
		this.current = this.getter() + ".zoom()" 
	}
	return(this)
}

class d3 scalar d3::geom() {
	this.currentFunction = "geom"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".geom"
	return(this)
}

class d3 scalar d3::clip(transmorphic scalar subject) { 
	this.currentFunction = "clip"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".clip(" + checkValue(subject) + ")" 
	return(this)
}

class d3 scalar d3::clipExtent(| transmorphic scalar extent) { 
	this.currentFunction = "clipExtent"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".clipExtent(" + checkValue(extent) + ")" 
	}
	else {
		this.current = this.getter() + ".clipExtent()" 
	}
	return(this)
}

class d3 scalar d3::find(transmorphic scalar point) { 
	this.currentFunction = "find"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".find(" + checkValue(point) + ")" 
	return(this)
}

class d3 scalar d3::hull(| transmorphic scalar vertices) { 
	this.currentFunction = "hull"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".hull(" + checkValue(vertices) + ")" 
	}
	else {
		this.current = this.getter() + ".hull()" 
	}
	return(this)
}

class d3 scalar d3::polygon(transmorphic scalar vertices) { 
	this.currentFunction = "polygon"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".polygon(" + checkValue(vertices) + ")" 
	return(this)
}

class d3 scalar d3::quadtree(| transmorphic scalar points, transmorphic scalar x1, transmorphic scalar y1, transmorphic scalar x2, transmorphic scalar y2) { 
	this.currentFunction = "quadtree"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 5) {
		this.current = this.getter() + ".quadtree(" + checkValue(points) + ", " + checkValue(x1) + ", " + checkValue(y1) + ", " + checkValue(x2) + ", " + checkValue(y2) + ")" 
	}
	if (args() == 4) {
		this.current = this.getter() + ".quadtree(" + checkValue(points) + ", " + checkValue(x1) + ", " + checkValue(y1) + ", " + checkValue(x2) + ")" 
	}
	if (args() == 3) {
		this.current = this.getter() + ".quadtree(" + checkValue(points) + ", " + checkValue(x1) + ", " + checkValue(y1) + ")" 
	}
	if (args() == 2) {
		this.current = this.getter() + ".quadtree(" + checkValue(points) + ", " + checkValue(x1) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".quadtree(" + checkValue(points) + ")" 
	}
	else {
		this.current = this.getter() + ".quadtree()" 	
	}
	return(this)
}

class d3 scalar d3::triangles(transmorphic scalar data) { 
	this.currentFunction = "triangles"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".triangles(" + checkValue(data) + ")" 
	return(this)
}

class d3 scalar d3::visit(transmorphic scalar callback) { 
	this.currentFunction = "visit"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".visit(" + checkValue(callback) + ")" 
	return(this)
}

class d3 scalar d3::voronoi(| transmorphic scalar data) { 
	this.currentFunction = "voronoi"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".voronoi(" + checkValue(data) + ")" 
	}
	else {
		this.current = this.getter() + ".voronoi()" 
	}
	return(this)
}

class d3 scalar d3::layout() {
	this.currentFunction = "layout"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".layout"
	return(this)
}

class d3 scalar d3::alpha(| transmorphic scalar value) { 
	this.currentFunction = "alpha"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".alpha(" + checkValue(value) + ")" 
	}
	else {
		this.current = this.getter() + ".alpha()" 
	}
	return(this)
}

class d3 scalar d3::bins(| transmorphic scalar count) { 
	this.currentFunction = "bins"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".bins(" + checkValue(count) + ")" 
	}
	else {
		this.current = this.getter() + ".bins()" 
	}
	return(this)
}

class d3 scalar d3::bundle(| transmorphic scalar links) { 
	this.currentFunction = "bundle"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".bundle(" + checkValue(links) + ")" 
	}
	else {
		this.current = this.getter() + ".bundle()" 
	}
	return(this)
}

class d3 scalar d3::charge(| transmorphic scalar charge) { 
	this.currentFunction = "charge"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".charge(" + checkValue(charge) + ")" 
	}
	else {
		this.current = this.getter() + ".charge()" 
	}
	return(this)
}

class d3 scalar d3::chargeDistance(| transmorphic scalar distance) { 
	this.currentFunction = "chargeDistance"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".chargeDistance(" + checkValue(distance) + ")" 
	}
	else {
		this.current = this.getter() + ".chargeDistance()" 
	}
	return(this)
}

class d3 scalar d3::children(| transmorphic scalar accessor) { 
	this.currentFunction = "children"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".children(" + checkValue(accessor) + ")" 
	}
	else {
		this.current = this.getter() + ".children()" 
	}
	return(this)
}

class d3 scalar d3::chords() { 
	this.currentFunction = "chords"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".chords()" 
	return(this)
}

class d3 scalar d3::cluster(| transmorphic scalar root) { 
	this.currentFunction = "cluster"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".cluster(" + checkValue(root) + ")" 
	}
	else {
		this.current = this.getter() + ".cluster()" 
	}
	return(this)
}

class d3 scalar d3::force() { 
	this.currentFunction = "force"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".force()" 
	return(this)
}

class d3 scalar d3::frequency(| transmorphic scalar frequency) { 
	this.currentFunction = "frequency"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".frequency(" + checkValue(frequency) + ")" 
	}
	else {
		this.current = this.getter() + ".frequency()" 
	}
	return(this)
}

class d3 scalar d3::friction(| transmorphic scalar friction) { 
	this.currentFunction = "friction"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".friction(" + checkValue(friction) + ")" 
	}
	else {
		this.current = this.getter() + ".friction()" 
	}
	return(this)
}

class d3 scalar d3::gravity(| transmorphic scalar gravity) { 
	this.currentFunction = "gravity"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".gravity(" + checkValue(gravity) + ")" 
	}
	else {
		this.current = this.getter() + ".gravity()" 
	}
	return(this)
}

class d3 scalar d3::groups() { 
	this.currentFunction = "groups"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".groups()" 
	return(this)
}

class d3 scalar d3::hierarchy(| transmorphic scalar root) { 
	this.currentFunction = "hierarchy"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".hierarchy(" + checkValue(root) + ")" 
	}
	else {
		this.current = this.getter() + ".hierarchy()" 
	}
	return(this)
}

class d3 scalar d3::histogram(| transmorphic scalar values, transmorphic scalar index) { 
	this.currentFunction = "histogram"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".histogram(" + checkValue(values) + ", " + checkValue(index) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".histogram(" + checkValue(values) + ")" 
	}
	else {
		this.current = this.getter() + ".histogram()" 
	}
	return(this)
}

class d3 scalar d3::linkDistance(| transmorphic scalar distance) { 
	this.currentFunction = "linkDistance"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".linkDistance(" + checkValue(distance) + ")" 
	}
	else {
		this.current = this.getter() + ".linkDistance()" 
	}
	return(this)
}

class d3 scalar d3::linkStrength(| transmorphic scalar strength) { 
	this.currentFunction = "linkStrength"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".linkStrength(" + checkValue(strength) + ")" 
	}
	else {
		this.current = this.getter() + ".linkStrength()" 
	}
	return(this)
}

class d3 scalar d3::links(| transmorphic scalar links) { 
	this.currentFunction = "links"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".links(" + checkValue(links) + ")" 
	}
	else {
		this.current = this.getter() + ".links()" 
	}
	return(this)
}

class d3 scalar d3::matrx(| transmorphic scalar matrx) { 
	this.currentFunction = "matrix"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".matrix(" + checkValue(matrx) + ")" 
	}
	else {
		this.current = this.getter() + ".matrix()" 
	}
	return(this)
}

class d3 scalar d3::mode(| transmorphic scalar mode) { 
	this.currentFunction = "mode"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".mode(" + checkValue(mode) + ")" 
	}
	else {
		this.current = this.getter() + ".mode()" 
	}
	return(this)
}

class d3 scalar d3::nodeSize(| transmorphic scalar nodeSize) { 
	this.currentFunction = "nodeSize"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".nodeSize(" + checkValue(nodeSize) + ")" 
	}
	else {
		this.current = this.getter() + ".nodeSize()" 
	}
	return(this)
}

class d3 scalar d3::nodes(| transmorphic scalar nodes) { 
	this.currentFunction = "nodes"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".nodes(" + checkValue(nodes) + ")" 
	}
	else {
		this.current = this.getter() + ".nodes()" 
	}
	return(this)
}

class d3 scalar d3::out(| transmorphic scalar setter) { 
	this.currentFunction = "out"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".out(" + checkValue(setter) + ")" 
	}
	else {
		this.current = this.getter() + ".out()" 
	}
	return(this)
}

class d3 scalar d3::pack(| transmorphic scalar root) { 
	this.currentFunction = "pack"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".pack(" + checkValue(root) + ")" 
	}
	else {
		this.current = this.getter() + ".pack()" 
	}
	return(this)
}

class d3 scalar d3::padAngle(| transmorphic scalar angle) { 
	this.currentFunction = "padAngle"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".padAngle(" + checkValue(angle) + ")" 
	}
	else {
		this.current = this.getter() + ".padAngle()" 
	}
	return(this)
}

class d3 scalar d3::padding(| transmorphic scalar padding) { 
	this.currentFunction = "padding"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".padding(" + checkValue(padding) + ")" 
	}
	else {
		this.current = this.getter() + ".padding()" 
	}
	return(this)
}

class d3 scalar d3::partition(| transmorphic scalar root) { 
	this.currentFunction = "partition"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".partition(" + checkValue(root) + ")" 
	}
	else {
		this.current = this.getter() + ".partition()" 
	}
	return(this)
}

class d3 scalar d3::pie(| transmorphic scalar values, transmorphic scalar index) { 
	this.currentFunction = "pie"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".pie(" + checkValue(values) + ", " + checkValue(index) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".pie(" + checkValue(values) + ")" 
	}
	else {
		this.current = this.getter() + ".pie()" 
	}
	return(this)
}

class d3 scalar d3::radius(| transmorphic scalar radius) { 
	this.currentFunction = "radius"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".radius(" + checkValue(radius) + ")" 
	}
	else {
		this.current = this.getter() + ".radius()" 
	}
	return(this)
}

class d3 scalar d3::ratio(| transmorphic scalar ratio) { 
	this.currentFunction = "ratio"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".ratio(" + checkValue(ratio) + ")" 
	}
	else {
		this.current = this.getter() + ".ratio()" 
	}
	return(this)
}

class d3 scalar d3::resume() { 
	this.currentFunction = "resume"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".resume()" 
	return(this)
}

class d3 scalar d3::revalue(transmorphic scalar root) { 
	this.currentFunction = "revalue"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".revalue(" + checkValue(root) + ")" 
	return(this)
}

class d3 scalar d3::separation(| transmorphic scalar separation) { 
	this.currentFunction = "separation"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".separation(" + checkValue(separation) + ")" 
	}
	else {
		this.current = this.getter() + ".separation()" 
	}
	return(this)
}

class d3 scalar d3::sortChords(| transmorphic scalar comparator) { 
	this.currentFunction = "sortChords"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".sortChords(" + checkValue(comparator) + ")" 
	}
	else {
		this.current = this.getter() + ".sortChords()" 
	}
	return(this)
}

class d3 scalar d3::sortGroups(| transmorphic scalar comparator) { 
	this.currentFunction = "sortGroups"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".sortGroups(" + checkValue(comparator) + ")" 
	}
	else {
		this.current = this.getter() + ".sortGroups()" 
	}
	return(this)
}

class d3 scalar d3::sortSubgroups(| transmorphic scalar comparator) { 
	this.currentFunction = "sortSubgroups"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".sortSubgroups(" + checkValue(comparator) + ")" 
	}
	else {
		this.current = this.getter() + ".sortSubgroups()" 
	}
	return(this)
}

class d3 scalar d3::stack(| transmorphic scalar layers, transmorphic scalar index) { 
	this.currentFunction = "stack"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".stack(" + checkValue(layers) + ", " + checkValue(index) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".stack(" + checkValue(layers) + ")" 
	}
	else {
		this.current = this.getter() + ".stack()" 
	}
	return(this)
}

class d3 scalar d3::start() { 
	this.currentFunction = "start"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".start()" 
	return(this)
}

class d3 scalar d3::startAngle(| transmorphic scalar angle) { 
	this.currentFunction = "startAngle"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".startAngle(" + checkValue(angle) + ")" 
	}
	else {
		this.current = this.getter() + ".startAngle()" 
	}
	return(this)
}

class d3 scalar d3::sticky(| transmorphic scalar sticky) { 
	this.currentFunction = "sticky"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".sticky(" + checkValue(sticky) + ")" 
	}
	else {
		this.current = this.getter() + ".sticky()" 
	}
	return(this)
}

class d3 scalar d3::stop() { 
	this.currentFunction = "stop"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".stop()" 
	return(this)
}

class d3 scalar d3::theta(| transmorphic scalar theta) { 
	this.currentFunction = "theta"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".theta(" + checkValue(theta) + ")" 
	}
	else {
		this.current = this.getter() + ".theta()" 
	}
	return(this)
}

class d3 scalar d3::tick() { 
	this.currentFunction = "tick"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".tick()" 
	return(this)
}

class d3 scalar d3::tree(| transmorphic scalar root) { 
	this.currentFunction = "tree"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".tree(" + checkValue(root) + ")" 
	}
	else {
		this.current = this.getter() + ".tree()" 
	}
	return(this)
}

class d3 scalar d3::treemap(| transmorphic scalar root) { 
	this.currentFunction = "treemap"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".treemap(" + checkValue(root) + ")"
	}
	else {
		this.current = this.getter() + ".treemap()"
	} 
	return(this)
}

class d3 scalar d3::value(| transmorphic scalar value) { 
	this.currentFunction = "value"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".value(" + checkValue(value) + ")"
	}
	else {
		this.current = this.getter() + ".value()"
	} 
	return(this)
}

class d3 scalar d3::albers() { 
	this.currentFunction = "albers"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".albers()" 
	return(this)
}

class d3 scalar d3::albersUsa() { 
	this.currentFunction = "albersUsa"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".albersUsa()" 
	return(this)
}

class d3 scalar d3::azimuthalEqualArea() { 
	this.currentFunction = "azimuthalEqualArea"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".azimuthalEqualArea()" 
	return(this)
}

class d3 scalar d3::azimuthalEquidistant() { 
	this.currentFunction = "azimuthalEquidistant"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".azimuthalEquidistant()" 
	return(this)
}

class d3 scalar d3::bounds(transmorphic scalar feature) { 
	this.currentFunction = "bounds"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".bounds(" + checkValue(feature) + ")" 
	return(this)
}

class d3 scalar d3::centroid(| transmorphic scalar feature) { 
	this.currentFunction = "centroid"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".centroid(" + checkValue(feature) + ")" 
	}
	else {
		this.current = this.getter() + ".centroid()" 
	}
	return(this)
}

class d3 scalar d3::circle(transmorphic scalar arguments) { 
	this.currentFunction = "circle"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".circle(" + checkValue(arguments) + ")" 
	return(this)
}

class d3 scalar d3::clipAngle(transmorphic scalar angle) { 
	this.currentFunction = "clipAngle"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".clipAngle(" + checkValue(angle) + ")" 
	return(this)
}

class d3 scalar d3::conicConformal() { 
	this.currentFunction = "conicConformal"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".conicConformal()" 
	return(this)
}

class d3 scalar d3::conicEqualArea() { 
	this.currentFunction = "conicEqualArea"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".conicEqualArea()" 
	return(this)
}

class d3 scalar d3::conicEquidistant() { 
	this.currentFunction = "conicEquidistant"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".conicEquidistant()" 
	return(this)
}

class d3 scalar d3::context(| transmorphic scalar context) { 
	this.currentFunction = "context"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".context(" + checkValue(context) + ")" 
	}
	else {
		this.current = this.getter() + ".context()" 
	}
	return(this)
}

class d3 scalar d3::distance(transmorphic scalar a, transmorphic scalar b) { 
	this.currentFunction = "distance"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".distance(" + checkValue(a) + ", " + checkValue(b) + ")" 
	return(this)
}

class d3 scalar d3::equirectangular() { 
	this.currentFunction = "equirectangular"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".equirectangular()" 
	return(this)
}

class d3 scalar d3::gnomonic() { 
	this.currentFunction = "gnomonic"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".gnomonic()" 
	return(this)
}

class d3 scalar d3::graticule() { 
	this.currentFunction = "graticule"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".graticule()" 
	return(this)
}

class d3 scalar d3::invert(transmorphic scalar point) { 
	this.currentFunction = "invert"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".invert(" + checkValue(point) + ")" 
	return(this)
}

class d3 scalar d3::length(transmorphic scalar feature) { 
	this.currentFunction = "length"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".length(" + checkValue(feature) + ")" 
	return(this)
}

class d3 scalar d3::lineEnd() { 
	this.currentFunction = "lineEnd"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".lineEnd()" 
	return(this)
}

class d3 scalar d3::lineStart() { 
	this.currentFunction = "lineStart"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".lineStart()" 
	return(this)
}

class d3 scalar d3::lines() { 
	this.currentFunction = "lines"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".lines()" 
	return(this)
}

class d3 scalar d3::majorExtent(transmorphic scalar extent) { 
	this.currentFunction = "majorExtent"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".majorExtent(" + checkValue(extent) + ")" 
	return(this)
}

class d3 scalar d3::majorStep(transmorphic scalar step) { 
	this.currentFunction = "majorStep"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".majorStep(" + checkValue(step) + ")" 
	return(this)
}

class d3 scalar d3::mercator() { 
	this.currentFunction = "mercator"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".mercator()" 
	return(this)
}

class d3 scalar d3::minorExtent(transmorphic scalar extent) { 
	this.currentFunction = "minorExtent"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".minorExtent(" + checkValue(extent) + ")" 
	return(this)
}

class d3 scalar d3::minorStep(transmorphic scalar step) { 
	this.currentFunction = "minorStep"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".minorStep(" + checkValue(step) + ")" 
	return(this)
}

class d3 scalar d3::orthographic() { 
	this.currentFunction = "orthographic"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".orthographic()" 
	return(this)
}

class d3 scalar d3::outline() { 
	this.currentFunction = "outline"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".outline()" 
	return(this)
}

class d3 scalar d3::parallels(| transmorphic scalar parallels) { 
	this.currentFunction = "parallels"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".parallels(" + checkValue(parallels) + ")" 
	}
	else {
		this.current = this.getter() + ".parallels()" 
	}
	return(this)
}

class d3 scalar d3::path(| transmorphic scalar feature, transmorphic scalar index) { 
	this.currentFunction = "path"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".path(" + checkValue(feature) + ", " + checkValue(index) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".path(" + checkValue(feature) + ")" 
	}
	else {
		this.current = this.getter() + ".path()" 
	}
	return(this)
}

class d3 scalar d3::point(transmorphic scalar x, transmorphic scalar y, | transmorphic scalar z) { 
	this.currentFunction = "point"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".point(" + checkValue(x) + ", " + checkValue(y) + ", " + checkValue(z) + ")" 
	}
	else {
		this.current = this.getter() + ".point(" + checkValue(x) + ", " + checkValue(y) + ")" 
	}
	return(this)
}

class d3 scalar d3::pointRadius(| transmorphic scalar radius) { 
	this.currentFunction = "pointRadius"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".pointRadius(" + checkValue(radius) + ")" 
	}
	else {
		this.current = this.getter() + ".pointRadius()" 
	}
	return(this)
}

class d3 scalar d3::polygonEnd() { 
	this.currentFunction = "polygonEnd"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".polygonEnd()" 
	return(this)
}

class d3 scalar d3::polygonStart() { 
	this.currentFunction = "polygonStart"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".polygonStart()" 
	return(this)
}

class d3 scalar d3::precision(| transmorphic scalar precision) { 
	this.currentFunction = "precision"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".precision(" + checkValue(precision) + ")" 
	}
	else {
		this.current = this.getter() + ".precision()" 
	}
	return(this)
}

class d3 scalar d3::projection(| transmorphic scalar projection) { 
	this.currentFunction = "projection"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".projection(" + checkValue(projection) + ")" 
	}
	else {
		this.current = this.getter() + ".projection()" 
	}
	return(this)
}

class d3 scalar d3::projectionMutator(transmorphic scalar rawFactory) { 
	this.currentFunction = "projectionMutator"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".projectionMutator(" + checkValue(rawFactory) + ")" 
	return(this)
}

class d3 scalar d3::raw(transmorphic scalar psi0, transmorphic scalar psi1) { 
	this.currentFunction = "raw"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".raw(" + checkValue(psi0) + ", " + checkValue(psi1) + ")" 
	return(this)
}

class d3 scalar d3::rotation(transmorphic scalar rotate) { 
	this.currentFunction = "rotation"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".rotation(" + checkValue(rotate) + ")" 
	return(this)
}


class d3 scalar d3::sphere() { 
	this.currentFunction = "sphere"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".sphere()" 
	return(this)
}

class d3 scalar d3::step(transmorphic scalar step) { 
	this.currentFunction = "step"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".step(" + checkValue(step) + ")" 
	return(this)
}

class d3 scalar d3::stereographic() { 
	this.currentFunction = "stereographic"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".stereographic()" 
	return(this)
}

class d3 scalar d3::stream(transmorphic scalar object, |transmorphic scalar listener) { 
	this.currentFunction = "stream"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".stream(" + checkValue(object) + ", " + checkValue(listener) + ")" 
	}
	else {
		this.current = this.getter() + ".stream(" + checkValue(object) + ")" 
	}
	return(this)
}

class d3 scalar d3::transverseMercator() { 
	this.currentFunction = "transverseMercator"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".transverseMercator()" 
	return(this)
}

class d3 scalar d3::svg() {
	this.currentFunction = "svg"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".svg"
	return(this)
}

class d3 scalar d3::symbolTypes() {
	this.currentFunction = "symbolTypes"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".symbolTypes"
	return(this)
}

class d3 scalar d3::angle(| transmorphic scalar angle) { 
	this.currentFunction = "angle"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".angle(" + checkValue(angle) + ")" 
	}
	else {
		this.current = this.getter() + ".angle()" 
	}
	return(this)
}

class d3 scalar d3::arc(| transmorphic scalar datum, transmorphic scalar index) { 
	this.currentFunction = "arc"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".arc(" + checkValue(datum) + ", " + checkValue(index) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".arc(" + checkValue(datum) + ")" 
	}
	else {
		this.current = this.getter() + ".arc()" 
	}
	return(this)
}

class d3 scalar d3::area(| transmorphic scalar data) { 
	this.currentFunction = "area"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".area(" + checkValue(data) + ")" 
	}
	else {
		this.current = this.getter() + ".area()" 
	}
	return(this)
}

class d3 scalar d3::axis(| transmorphic scalar selection) { 
	this.currentFunction = "axis"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".axis(" + checkValue(selection) + ")" 
	}
	else {
		this.current = this.getter() + ".axis()" 
	}
	return(this)
}

class d3 scalar d3::brush(| transmorphic scalar selection) { 
	this.currentFunction = "brush"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".brush(" + checkValue(selection) + ")" 
	}
	else {
		this.current = this.getter() + ".brush()" 
	}
	return(this)
}

class d3 scalar d3::chord(| transmorphic scalar datum, transmorphic scalar index) { 
	this.currentFunction = "chord"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".chord(" + checkValue(datum) + ", " + checkValue(index) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".chord(" + checkValue(datum) + ")" 
	}
	else {
		this.current = this.getter() + ".chord()" 
	}
	return(this)
}

class d3 scalar d3::clamp(| transmorphic scalar clamp) { 
	this.currentFunction = "clamp"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".clamp(" + checkValue(clamp) + ")" 
	}
	else {
		this.current = this.getter() + ".clamp()" 
	}
	return(this)
}

class d3 scalar d3::clear() { 
	this.currentFunction = "clear"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".clear()" 
	return(this)
}

class d3 scalar d3::cornerRadius(| transmorphic scalar radius) { 
	this.currentFunction = "cornerRadius"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".cornerRadius(" + checkValue(radius) + ")" 
	}
	else {
		this.current = this.getter() + ".cornerRadius()" 
	}
	return(this)
}

class d3 scalar d3::defined(| transmorphic scalar defined) { 
	this.currentFunction = "defined"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".defined(" + checkValue(defined) + ")" 
	}
	else {
		this.current = this.getter() + ".defined()" 
	}
	return(this)
}

class d3 scalar d3::diagonal(| transmorphic scalar datum, transmorphic scalar index) { 
	this.currentFunction = "diagonal"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".diagonal(" + checkValue(datum) + ", " + checkValue(index) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".diagonal(" + checkValue(datum) + ")" 
	}
	else {
		this.current = this.getter() + ".diagonal()" 
	}
	return(this)
}

class d3 scalar d3::endAngle(| transmorphic scalar angle) { 
	this.currentFunction = "endAngle"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".endAngle(" + checkValue(angle) + ")" 
	}
	else {
		this.current = this.getter() + ".endAngle()" 
	}
	return(this)
}

class d3 scalar d3::innerRadius(| transmorphic scalar radius) { 
	this.currentFunction = "innerRadius"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".innerRadius(" + checkValue(radius) + ")" 
	}
	else {
		this.current = this.getter() + ".innerRadius()" 
	}
	return(this)
}

class d3 scalar d3::innerTickSize(| transmorphic scalar size) { 
	this.currentFunction = "innerTickSize"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".innerTickSize(" + checkValue(size) + ")" 
	}
	else {
		this.current = this.getter() + ".innerTickSize()" 
	}
	return(this)
}

class d3 scalar d3::line(| transmorphic scalar data) { 
	this.currentFunction = "line"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".line(" + checkValue(data) + ")" 
	}
	else {
		this.current = this.getter() + ".line()" 
	}
	return(this)
}

class d3 scalar d3::orient(| transmorphic scalar orientation) { 
	this.currentFunction = "orient"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".orient(" + checkValue(orientation) + ")" 
	}
	else {
		this.current = this.getter() + ".orient()" 
	}
	return(this)
}

class d3 scalar d3::outerRadius(| transmorphic scalar radius) { 
	this.currentFunction = "outerRadius"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".outerRadius(" + checkValue(radius) + ")" 
	}
	else {
		this.current = this.getter() + ".outerRadius()" 
	}
	return(this)
}

class d3 scalar d3::outerTickSize(| transmorphic scalar size) { 
	this.currentFunction = "outerTickSize"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".outerTickSize(" + checkValue(size) + ")" 
	}
	else {
		this.current = this.getter() + ".outerTickSize()" 
	}
	return(this)
}

class d3 scalar d3::padRadius(| transmorphic scalar radius) { 
	this.currentFunction = "padRadius"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".padRadius(" + checkValue(radius) + ")" 
	}
	else {
		this.current = this.getter() + ".padRadius()" 
	}
	return(this)
}

class d3 scalar d3::radial() { 
	this.currentFunction = "radial"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".radial()" 
	return(this)
}

class d3 scalar d3::source(| transmorphic scalar source) { 
	this.currentFunction = "source"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".source(" + checkValue(source) + ")" 
	}
	else {
		this.current = this.getter() + ".source()" 
	}
	return(this)
}

class d3 scalar d3::symbol(| transmorphic scalar datum, transmorphic scalar index) { 
	this.currentFunction = "symbol"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".symbol(" + checkValue(datum) + ", " + checkValue(index) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".symbol(" + checkValue(datum) + ")" 
	}
	else {
		this.current = this.getter() + ".symbol()" 
	}
	return(this)
}

class d3 scalar d3::target(| transmorphic scalar target) { 
	this.currentFunction = "target"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".target(" + checkValue(target) + ")" 
	}
	else {
		this.current = this.getter() + ".target()" 
	}
	return(this)
}

class d3 scalar d3::tension(| transmorphic scalar tension) { 
	this.currentFunction = "tension"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".tension(" + checkValue(tension) + ")" 
	}
	else {
		this.current = this.getter() + ".tension()" 
	}
	return(this)
}

class d3 scalar d3::tickPadding(| transmorphic scalar padding) { 
	this.currentFunction = "tickPadding"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".tickPadding(" + checkValue(padding) + ")" 
	}
	else {
		this.current = this.getter() + ".tickPadding()" 
	}
	return(this)
}

class d3 scalar d3::tickSize(| transmorphic scalar inner, transmorphic scalar outer) { 
	this.currentFunction = "tickSize"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".tickSize(" + checkValue(inner) + ", " + checkValue(outer) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".tickSize(" + checkValue(inner) + ")" 
	}
	else {
		this.current = this.getter() + ".tickSize()" 
	}
	return(this)
}

class d3 scalar d3::tickValues(| transmorphic scalar values) { 
	this.currentFunction = "tickValues"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".tickValues(" + checkValue(values) + ")" 
	}
	else {
		this.current = this.getter() + ".tickValues()" 
	}
	return(this)
}

class d3 scalar d3::base(| transmorphic scalar base) { 
	this.currentFunction = "base"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".base(" + checkValue(base) + ")" 
	}
	else {
		this.current = this.getter() + ".base()" 
	}
	return(this)
}

class d3 scalar d3::category10() { 
	this.currentFunction = "category10"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".category10()" 
	return(this)
}

class d3 scalar d3::category20() { 
	this.currentFunction = "category20"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".category20()" 
	return(this)
}

class d3 scalar d3::category20b() { 
	this.currentFunction = "category20b"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".category20b()" 
	return(this)
}

class d3 scalar d3::category20c() { 
	this.currentFunction = "category20c"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".category20c()" 
	return(this)
}

class d3 scalar d3::domain(| transmorphic scalar values) { 
	this.currentFunction = "domain"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".domain(" + checkValue(values) + ")" 
	}
	else {
		this.current = this.getter() + ".domain()" 
	}
	return(this)
}

class d3 scalar d3::exponent(| transmorphic scalar k) { 
	this.currentFunction = "exponent"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".exponent(" + checkValue(k) + ")" 
	}
	else {
		this.current = this.getter() + ".exponent()" 
	}
	return(this)
}

class d3 scalar d3::identity(| transmorphic scalar x) { 
	this.currentFunction = "identity"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".identity(" + checkValue(x) + ")" 
	}
	else {
		this.current = this.getter() + ".identity()" 
	}
	return(this)
}

class d3 scalar d3::invertExtent(transmorphic scalar y) { 
	this.currentFunction = "invertExtent"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".invertExtent(" + checkValue(y) + ")" 
	return(this)
}

class d3 scalar d3::linear(| transmorphic scalar x) { 
	this.currentFunction = "linear"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".linear(" + checkValue(x) + ")" 
	}
	else {
		this.current = this.getter() + ".linear()" 
	}
	return(this)
}

class d3 scalar d3::log(| transmorphic scalar x) { 
	this.currentFunction = "log"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".log(" + checkValue(x) + ")" 
	}
	else {
		this.current = this.getter() + ".log()" 
	}
	return(this)
}

class d3 scalar d3::nice(| transmorphic scalar interval, transmorphic scalar step) { 
	this.currentFunction = "nice"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".nice(" + checkValue(interval) + ", " + checkValue(step) + ")" 
	}
	if (args() == 1) {
		this.current = this.getter() + ".nice(" + checkValue(interval) + ")" 
	}
	else {
		this.current = this.getter() + ".nice()" 
	}
	return(this)
}

class d3 scalar d3::ordinal(| transmorphic scalar x) { 
	this.currentFunction = "ordinal"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".ordinal(" + checkValue(x) + ")" 
	}
	else {
		this.current = this.getter() + ".ordinal()" 
	}
	return(this)
}

class d3 scalar d3::pow(| transmorphic scalar x) { 
	this.currentFunction = "pow"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".pow(" + checkValue(x) + ")" 
	}
	else {
		this.current = this.getter() + ".pow()" 
	}
	return(this)
}

class d3 scalar d3::quantiles() { 
	this.currentFunction = "quantiles"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".quantiles()" 
	return(this)
}

class d3 scalar d3::quantize(| transmorphic scalar x) { 
	this.currentFunction = "quantize"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".quantize(" + checkValue(x) + ")" 
	}
	else {
		this.current = this.getter() + ".quantize()" 
	}
	return(this)
}

class d3 scalar d3::rangeBand() { 
	this.currentFunction = "rangeBand"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".rangeBand()" 
	return(this)
}

class d3 scalar d3::rangeBands(transmorphic scalar interval, | transmorphic scalar padding, transmorphic scalar outerPadding) { 
	this.currentFunction = "rangeBands"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".rangeBands(" + checkValue(interval) + ", " + checkValue(padding) + ", " + checkValue(outerPadding) + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".rangeBands(" + checkValue(interval) + ", " + checkValue(padding) + ")" 
	}
	else {
		this.current = this.getter() + ".rangeBands(" + checkValue(interval) + ")" 
	}
	return(this)
}

class d3 scalar d3::rangeExtent() { 
	this.currentFunction = "rangeExtent"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".rangeExtent()" 
	return(this)
}

class d3 scalar d3::rangePoints(transmorphic scalar interval, | transmorphic scalar padding) { 
	this.currentFunction = "rangePoints"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".rangePoints(" + checkValue(interval) + ", " + checkValue(padding) + ")" 
	}
	else {
		this.current = this.getter() + ".rangePoints(" + checkValue(interval) + ")" 
	}
	return(this)
}

class d3 scalar d3::rangeRound(| transmorphic scalar values) { 
	this.currentFunction = "rangeRound"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".rangeRound(" + checkValue(values) + ")" 
	}
	else {
		this.current = this.getter() + ".rangeRound()" 
	}
	return(this)
}

class d3 scalar d3::rangeRoundBands(transmorphic scalar interval, | transmorphic scalar padding, transmorphic scalar outerPadding) { 
	this.currentFunction = "rangeRoundBands"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".rangeRoundBands(" + checkValue(interval) + ", " + checkValue(padding) + ", " + checkValue(outerPadding) + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".rangeRoundBands(" + checkValue(interval) + ", " + checkValue(padding) + ")" 
	}
	else {
		this.current = this.getter() + ".rangeRoundBands(" + checkValue(interval) + ")" 
	}
	return(this)
}

class d3 scalar d3::rangeRoundPoints(transmorphic scalar interval, | transmorphic scalar padding) { 
	this.currentFunction = "rangeRoundPoints"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".rangeRoundPoints(" + checkValue(interval) + ", " + checkValue(padding) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".rangeRoundPoints(" + checkValue(interval) + ")" 
	}
	else {
		this.current = this.getter() + ".rangeRoundPoints()" 
	}
	return(this)
}

class d3 scalar d3::sqrt() { 
	this.currentFunction = "sqrt"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".sqrt()" 
	return(this)
}

class d3 scalar d3::threshold(| transmorphic scalar x) { 
	this.currentFunction = "threshold"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".threshold(" + checkValue(x) + ")" 
	}
	else {
		this.current = this.getter() + ".threshold()" 
	}
	return(this)
}

class d3 scalar d3::tickFormat(| transmorphic scalar count, transmorphic scalar format) { 
	this.currentFunction = "tickFormat"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".tickFormat(" + checkValue(count) + ", " + checkValue(format) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".tickFormat(" + checkValue(count) + ")" 
	}
	else {
		this.current = this.getter() + ".tickFormat()" 
	}
	return(this)
}

class d3 scalar d3::ticks(| transmorphic scalar interval, transmorphic scalar step) { 
	this.currentFunction = "ticks"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".ticks(" + checkValue(interval) + ", " + checkValue(step) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".ticks(" + checkValue(interval) + ")" 
	}
	else {
		this.current = this.getter() + ".ticks()" 
	}
	return(this)
}

class d3 scalar d3::time() {
	this.currentFunction = "time"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".time"
	return(this)
}

class d3 scalar d3::iso() {
	this.currentFunction = "iso"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".iso"
	return(this)
}

class d3 scalar d3::month() {
	this.currentFunction = "month"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".month"
	return(this)
}

class d3 scalar d3::week() {
	this.currentFunction = "week"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".week"
	return(this)
}

class d3 scalar d3::year() {
	this.currentFunction = "year"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".year"
	return(this)
}

class d3 scalar d3::day() {
	this.currentFunction = "day"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".day"
	return(this)
}

class d3 scalar d3::hour() {
	this.currentFunction = "hour"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".hour"
	return(this)
}

class d3 scalar d3::minute() {
	this.currentFunction = "minute"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".minute"
	return(this)
}

class d3 scalar d3::second() {
	this.currentFunction = "second"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".second"
	return(this)
}

class d3 scalar d3::friday() {
	this.currentFunction = "friday"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".friday"
	return(this)
}

class d3 scalar d3::saturday() {
	this.currentFunction = "saturday"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".saturday"
	return(this)
}

class d3 scalar d3::sunday() {
	this.currentFunction = "sunday"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".sunday"
	return(this)
}

class d3 scalar d3::monday() {
	this.currentFunction = "monday"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".monday"
	return(this)
}

class d3 scalar d3::tuesday() {
	this.currentFunction = "tuesday"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".tuesday"
	return(this)
}

class d3 scalar d3::wednesday() {
	this.currentFunction = "wednesday"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".wednesday"
	return(this)
}

class d3 scalar d3::thursday() {
	this.currentFunction = "thursday"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".thursday"
	return(this)
}

class d3 scalar d3::ceil(transmorphic scalar date) { 
	this.currentFunction = "ceil"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".ceil(" + checkValue(date) + ")" 
	return(this)
}

class d3 scalar d3::copy() { 
	this.currentFunction = "copy"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".copy()" 
	return(this)
}

class d3 scalar d3::dayOfYear(transmorphic scalar date) { 
	this.currentFunction = "dayOfYear"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".dayOfYear(" + checkValue(date) + ")" 
	return(this)
}

class d3 scalar d3::days(transmorphic scalar start, transmorphic scalar stop, | transmorphic scalar step) { 
	this.currentFunction = "days"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".days(" + checkValue(start) + ", " + checkValue(stop) + ", " + checkValue(step) + ")" 
	}
	else {
		this.current = this.getter() + ".days(" + checkValue(start) + ", " + checkValue(stop) + ")" 
	}
	return(this)
}

class d3 scalar d3::floor(transmorphic scalar date) { 
	this.currentFunction = "floor"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".floor(" + checkValue(date) + ")" 
	return(this)
}

class d3 scalar d3::fridayOfYear(transmorphic scalar date) { 
	this.currentFunction = "fridayOfYear"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".fridayOfYear(" + checkValue(date) + ")" 
	return(this)
}

class d3 scalar d3::fridays(transmorphic scalar start, transmorphic scalar stop, | transmorphic scalar step) { 
	this.currentFunction = "fridays"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".fridays(" + checkValue(start) + ", " + checkValue(stop) + ", " + checkValue(step) + ")" 
	}
	else {
		this.current = this.getter() + ".fridays(" + checkValue(start) + ", " + checkValue(stop) + ")" 
	}
	return(this)
}

class d3 scalar d3::hours(transmorphic scalar start, transmorphic scalar stop, | transmorphic scalar step) { 
	this.currentFunction = "hours"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".hours(" + checkValue(start) + ", " + checkValue(stop) + ", " + checkValue(step) + ")" 
	}
	else {
		this.current = this.getter() + ".hours(" + checkValue(start) + ", " + checkValue(stop) + ")" 
	}
	return(this)
}

class d3 scalar d3::interval(transmorphic scalar date) { 
	this.currentFunction = "interval"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".interval(" + checkValue(date) + ")" 
	return(this)
}

class d3 scalar d3::minutes(transmorphic scalar start, transmorphic scalar stop, | transmorphic scalar step) { 
	this.currentFunction = "minutes"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".minutes(" + checkValue(start) + ", " + checkValue(stop) + ", " + checkValue(step) + ")" 
	}
	else {
		this.current = this.getter() + ".minutes(" + checkValue(start) + ", " + checkValue(stop) + ")" 
	}
	return(this)
}

class d3 scalar d3::mondayOfYear(transmorphic scalar date) { 
	this.currentFunction = "mondayOfYear"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".mondayOfYear(" + checkValue(date) + ")" 
	return(this)
}

class d3 scalar d3::mondays(transmorphic scalar start, transmorphic scalar stop, | transmorphic scalar step) { 
	this.currentFunction = "mondays"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".mondays(" + checkValue(start) + ", " + checkValue(stop) + ", " + checkValue(step) + ")" 
	}
	else {
		this.current = this.getter() + ".mondays(" + checkValue(start) + ", " + checkValue(stop) + ")" 
	}
	return(this)
}

class d3 scalar d3::months(transmorphic scalar start, transmorphic scalar stop, | transmorphic scalar step) { 
	this.currentFunction = "months"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".months(" + checkValue(start) + ", " + checkValue(stop) + ", " + checkValue(step) + ")" 
	}
	else {
		this.current = this.getter() + ".months(" + checkValue(start) + ", " + checkValue(stop) + ")" 
	}
	return(this)
}

class d3 scalar d3::multi(transmorphic scalar formats) { 
	this.currentFunction = "multi"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".multi(" + checkValue(formats) + ")" 
	return(this)
}

class d3 scalar d3::offset(| transmorphic scalar date, transmorphic scalar step) { 
	this.currentFunction = "offset"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".offset(" + checkValue(date) + ", " + checkValue(step) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".offset(" + checkValue(date) + ")" 
	}
	else {
		this.current = this.getter() + ".offset()" 
	}
	return(this)
}

class d3 scalar d3::parse(transmorphic scalar strng) { 
	this.currentFunction = "parse"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".parse(" + checkValue(strng) + ")" 
	return(this)
}

class d3 scalar d3::saturdayOfYear(transmorphic scalar date) { 
	this.currentFunction = "saturdayOfYear"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".saturdayOfYear(" + checkValue(date) + ")" 
	return(this)
}

class d3 scalar d3::saturdays(transmorphic scalar start, transmorphic scalar stop, | transmorphic scalar step) { 
	this.currentFunction = "saturdays"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".saturdays(" + checkValue(start) + ", " + checkValue(stop) + ", " + checkValue(step) + ")" 
	}
	else {
		this.current = this.getter() + ".saturdays(" + checkValue(start) + ", " + checkValue(stop) + ")" 
	}
	return(this)
}

class d3 scalar d3::seconds(transmorphic scalar start, transmorphic scalar stop, | transmorphic scalar step) { 
	this.currentFunction = "seconds"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".seconds(" + checkValue(start) + ", " + checkValue(stop) + ", " + checkValue(step) + ")" 
	}
	else {
		this.current = this.getter() + ".seconds(" + checkValue(start) + ", " + checkValue(stop) + ")" 
	}
	return(this)
}

class d3 scalar d3::sundayOfYear(transmorphic scalar date) { 
	this.currentFunction = "sundayOfYear"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".sundayOfYear(" + checkValue(date) + ")" 
	return(this)
}

class d3 scalar d3::sundays(transmorphic scalar start, transmorphic scalar stop, | transmorphic scalar step) { 
	this.currentFunction = "sundays"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".sundays(" + checkValue(start) + ", " + checkValue(stop) + ", " + checkValue(step) + ")" 
	}
	else {
		this.current = this.getter() + ".sundays(" + checkValue(start) + ", " + checkValue(stop) + ")" 
	}
	return(this)
}

class d3 scalar d3::thursdayOfYear(transmorphic scalar date) { 
	this.currentFunction = "thursdayOfYear"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".thursdayOfYear(" + checkValue(date) + ")" 
	return(this)
}

class d3 scalar d3::thursdays(transmorphic scalar start, transmorphic scalar stop, | transmorphic scalar step) { 
	this.currentFunction = "thursdays"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".thursdays(" + checkValue(start) + ", " + checkValue(stop) + ", " + checkValue(step) + ")" 
	}
	else {
		this.current = this.getter() + ".thursdays(" + checkValue(start) + ", " + checkValue(stop) + ")" 
	}
	return(this)
}

class d3 scalar d3::tuesdayOfYear(transmorphic scalar date) { 
	this.currentFunction = "tuesdayOfYear"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".tuesdayOfYear(" + checkValue(date) + ")" 
	return(this)
}

class d3 scalar d3::tuesdays(transmorphic scalar start, transmorphic scalar stop, | transmorphic scalar step) { 
	this.currentFunction = "tuesdays"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".tuesdays(" + checkValue(start) + ", " + checkValue(stop) + ", " + checkValue(step) + ")" 
	}
	else {
		this.current = this.getter() + ".tuesdays(" + checkValue(start) + ", " + checkValue(stop) + ")" 
	}
	return(this)
}

class d3 scalar d3::utc(| transmorphic scalar specifier) { 
	this.currentFunction = "utc"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".utc(" + checkValue(specifier) + ")" 
	}
	else {
		this.current = this.getter() + ".utc()" 
	}
	return(this)
}

class d3 scalar d3::wednesdayOfYear(transmorphic scalar date) { 
	this.currentFunction = "wednesdayOfYear"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".wednesdayOfYear(" + checkValue(date) + ")" 
	return(this)
}

class d3 scalar d3::wednesdays(transmorphic scalar start, transmorphic scalar stop, | transmorphic scalar step) { 
	this.currentFunction = "wednesdays"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".wednesdays(" + checkValue(start) + ", " + checkValue(stop) + ", " + checkValue(step) + ")" 
	}
	else {
		this.current = this.getter() + ".wednesdays(" + checkValue(start) + ", " + checkValue(stop) + ")" 
	}
	return(this)
}

class d3 scalar d3::weekOfYear(transmorphic scalar date) { 
	this.currentFunction = "weekOfYear"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".weekOfYear(" + checkValue(date) + ")" 
	return(this)
}

class d3 scalar d3::weeks(transmorphic scalar start, transmorphic scalar stop, | transmorphic scalar step) { 
	this.currentFunction = "weeks"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".weeks(" + checkValue(start) + ", " + checkValue(stop) + ", " + checkValue(step) + ")" 
	}
	else {
		this.current = this.getter() + ".weeks(" + checkValue(start) + ", " + checkValue(stop) + ")" 
	}
	return(this)
}

class d3 scalar d3::years(transmorphic scalar start, transmorphic scalar stop, | transmorphic scalar step) { 
	this.currentFunction = "years"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".years(" + checkValue(start) + ", " + checkValue(stop) + ", " + checkValue(step) + ")" 
	}
	else {
		this.current = this.getter() + ".years(" + checkValue(start) + ", " + checkValue(stop) + ")" 
	}
	return(this)
}

end 


