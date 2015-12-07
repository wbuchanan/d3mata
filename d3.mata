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
	
	// Defines class constructor method
	void					new()
	
	// Defines methods used to access class internals and to print the JS object
	string 		scalar 		getter(), complete(), undo(), getVarnm(), 
							getLastFunction(), getCurrentFunction()

	// Defines methods based on D3js library functions/methods
	class 	d3	scalar		abort(), add(), append(), ascending(), attr(), 
							attrTween(), bates(), bisect(), bisectLeft(), 
							bisectRight(), bisector(), brighter(), call(), 
							classed(), color(), csv(), darker(), 
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
							scale(), select(), selectAll(), selection(), 
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
	
} // End Constructor method definition

// Method to initialize the class object
class d3 scalar d3::init(string scalar vnm) {

	// Declare member variable used to implement logic
	string colvector varnmvec
	
	// Parses method argument on spaces and stores in separate columns of the 
	// string column vector declared above
	varnmvec = tokens(vnm, " ")
	
	// If there is only a single column
	if (cols(varnmvec) == 1) {
	
		// Set the variable name for the class
	    this.varnm = vnm
		
		// Set the d3 property for the class
		this.d3 = "var " + vnm + " = d3"
		
		// Set the current property for the class
		this.current = "var " + vnm + " = d3"
		
	} // End IF Block for single column
	
	// If there are two columns
	else {
	
		// Set the variable name for the class
		this.varnm = varnmvec[1, 1]
		
		// Set the d3 property for the class
		this.d3 = varnmvec[1, 1] + " = " + varnmvec[1, 2]
		
		// Set the current property for the class
		this.current = varnmvec[1, 1] + " = " + varnmvec[1, 2]

	} // End ELSE Block for multiple columns
	
	// Set previous value member variable
	this.prev = ""
	
	// Set current function member variable
	this.currentFunction = "d3"
	
	// Set last function member variable
	this.lastFunction = "d3"
	
	// Return a copy of the object
	return(this)
	
} // End of Method declaration

// Method to retrieve current state of the D3 object
string scalar d3::getter() {
	return(this.current) 
}

// Method to print the complete JS object
string scalar d3::complete() {
 	return(this.current + ";") 
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

class d3 scalar d3::geo() {
	this.currentFunction = "geo"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".geo"
	return(this)
}

class d3 scalar d3::key(string scalar func) {
	this.currentFunction = "key"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".key(" + func + ")"
	return(this)
}

class d3 scalar d3::random() {
	this.currentFunction = "random"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".random"
	return(this)
}

class d3 scalar d3::scale(| string scalar scale) {
	this.currentFunction = "scale"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".scale(" + scale +")"
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


class d3 scalar d3::add(string scalar value) { 
	this.currentFunction = "add"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".add(" + value + ")" 
	return(this)
}


class d3 scalar d3::append(string scalar name) { 
	this.currentFunction = "append"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + `".append(""' + name + `"")"' 
	return(this)
}


class d3 scalar d3::ascending(string scalar a, string scalar b) { 
	this.currentFunction = "ascending"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".ascending(" + a + ", " + b + ")" 
	return(this)
}


class d3 scalar d3::attr(string scalar name, | string scalar value) { 
	this.currentFunction = "attr"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + `".attr(""' + name + `"", "' + value + ")" 
	}
	else {
		this.current = this.getter() + `".attr(""' + name + `"")"' 
	}
	return(this)
}


class d3 scalar d3::attrTween(string scalar name, string scalar tween) { 
	this.currentFunction = "attrTween"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + `".attrTween(""' + name + `"", "' + tween + ")" 
	return(this)
}


class d3 scalar d3::bates(real scalar count) { 
	this.currentFunction = "bates"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".bates(" + strofreal(count) + ")" 
	return(this)
}


class d3 scalar d3::bisect(string scalar aray, string scalar x, | string scalar lo, string scalar hi) { 
	this.currentFunction = "bisect"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 4) {
		this.current = this.getter() + ".bisect(" + aray + ", " + x + ", " + lo + ", " + hi + ")" 
	}
	else if (args() == 3) {
		this.current = this.getter() + ".bisect(" + aray + ", " + x + ", " + lo + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".bisect(" + aray + ", " + x + ")" 
	}
	return(this)
}


class d3 scalar d3::bisectLeft(string scalar aray, string scalar x, | string scalar lo, string scalar hi) { 
	this.currentFunction = "bisectLeft"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 4) {
		this.current = this.getter() + ".bisectLeft(" + aray + ", " + x + ", " + lo + ", " + hi + ")" 
	}
	else if (args() == 3) {
		this.current = this.getter() + ".bisectLeft(" + aray + ", " + x + ", " + lo + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".bisectLeft(" + aray + ", " + x + ")" 
	}
	return(this)
}


class d3 scalar d3::bisectRight(string scalar aray, string scalar x, | string scalar lo, string scalar hi) { 
	this.currentFunction = "bisectRight"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 4) {
		this.current = this.getter() + ".bisectRight(" + aray + ", " + x + ", " + lo + ", " + hi + ")" 
	}
	else if (args() == 3) {
		this.current = this.getter() + ".bisectRight(" + aray + ", " + x + ", " + lo + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".bisectRight(" + aray + ", " + x + ")" 
	}
	return(this)
}


class d3 scalar d3::bisector(string scalar comparator) { 
	this.currentFunction = "bisector"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".bisector(" + comparator + ")" 
	return(this)
}


class d3 scalar d3::brighter(| real scalar k) { 
	this.currentFunction = "brighter"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".brighter(" + strofreal(k) + ")" 
	}
	else {
		this.current = this.getter() + ".brighter()" 
	}
	return(this)
}


class d3 scalar d3::call(string scalar func, | string scalar arguments) { 
	this.currentFunction = "call"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".call(" + func + ", " + arguments + ")" 
	}
	else {
		this.current = this.getter() + ".call(" + func + ")" 
	}
	return(this)
}


class d3 scalar d3::classed(string scalar name, | string scalar value) { 
	this.currentFunction = "classed"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + `".classed(""' + name + `"", "' + value + ")" 
	}
	else {
		this.current = this.getter() + ".classed(" + name + ")"
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


class d3 scalar d3::csv(string scalar url, | string scalar accessor, string scalar callback) { 
	this.currentFunction = "csv"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + `".csv(""' + url + `"", "' + accessor + ", " + callback + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + `".csv(""' + url + `"", "' + accessor + ")" 
	}
	else {
		this.current = this.getter() + `".csv(""' + url + `"")"' 
	}
	return(this)
}


class d3 scalar d3::darker(| real scalar k) { 
	this.currentFunction = "darker"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".darker(" + strofreal(k) + ")" 
	}
	else {
		this.current = this.getter() + ".darker()" 
	}
	return(this)
}


class d3 scalar d3::data(| string scalar values, string scalar key) { 
	this.currentFunction = "data"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".data(" + values + ", " + key + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".data(" + values + ")" 
	}
	else {
		this.current = this.getter() + ".data()" 
	}
	return(this)
}


class d3 scalar d3::datum(| string scalar value) { 
	this.currentFunction = "datum"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".datum(" + value + ")" 
	}
	else {
		this.current = this.getter() + ".datum()" 
	}
	return(this)
}


class d3 scalar d3::delay(| string scalar delay) { 
	this.currentFunction = "delay"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".delay(" + delay + ")" 
	}
	else {
		this.current = this.getter() + ".delay()" 
	}
	return(this)
}


class d3 scalar d3::descending(string scalar a, string scalar b) { 
	this.currentFunction = "descending"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".descending(" + a + ", " + b + ")" 
	return(this)
}


class d3 scalar d3::deviation(string scalar aray, | string scalar accessor) { 
	this.currentFunction = "deviation"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".deviation(" + aray + ", " + accessor + ")" 
	}
	else {
		this.current = this.getter() + ".deviation(" + aray + ")" 
	}
	return(this)
}


class d3 scalar d3::dispatch(string scalar types) { 
	this.currentFunction = "dispatch"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".dispatch(" + types + ")" 
	return(this)
}


class d3 scalar d3::duration(| string scalar duration) { 
	this.currentFunction = "duration"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".duration(" + duration + ")" 
	}
	else {
		this.current = this.getter() + ".duration()" 
	}
	return(this)
}


class d3 scalar d3::each(| string scalar type, string scalar listener) { 
	this.currentFunction = "each"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".each(" + type + ", " + listener + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".each(" + type + ")" 
	}
	else {
		this.current = this.getter() + ".each()" 
	}
	return(this)
}


class d3 scalar d3::ease(| string scalar value, string scalar arguments) { 
	this.currentFunction = "ease"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".ease(" + value + ", " + arguments + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".ease(" + value + ")" 
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


class d3 scalar d3::entries(| string scalar object) { 
	this.currentFunction = "entries"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".entries(" + object + ")" 
	}
	else {
		this.current = this.getter() + ".entries()" 
	}
	return(this)
}

class d3 scalar d3::event(| string scalar event) {
	this.currentFunction = "event"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".event(" + event + ")"
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


class d3 scalar d3::extent(| string scalar aray, string scalar accessor) { 
	this.currentFunction = "extent"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".extent(" + aray + ", " + accessor + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".extent(" + aray + ")" 
	}
	else {
		this.current = this.getter() + ".extent(" + aray + ")" 
	}
	return(this)
}


class d3 scalar d3::filter(string scalar selector) { 
	this.currentFunction = "filter"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".filter(" + selector + ")" 
	return(this)
}


class d3 scalar d3::flush() { 
	this.currentFunction = "flush"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".flush()" 
	return(this)
}


class d3 scalar d3::forEach(string scalar func) { 
	this.currentFunction = "forEach"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".forEach(" + func + ")" 
	return(this)
}


class d3 scalar d3::format(string scalar specifier) { 
	this.currentFunction = "format"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".format(" + specifier + ")" 
	return(this)
}


class d3 scalar d3::formatPrefix(string scalar value, | string scalar precision) { 
	this.currentFunction = "formatPrefix"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".formatPrefix(" + value + ", " + precision + ")" 
	}
	else {
		this.current = this.getter() + ".formatPrefix(" + value + ")" 
	}
	return(this)
}


class d3 scalar d3::functor(string scalar value) { 
	this.currentFunction = "functor"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".functor(" + value + ")" 
	return(this)
}


class d3 scalar d3::get(| string scalar callback) { 
	this.currentFunction = "get"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".get(" + callback + ")" 
	}
	else {
		this.current = this.getter() + ".get()" 
	}
	return(this)
}


class d3 scalar d3::has(string scalar key) { 
	this.currentFunction = "has"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".has(" + key + ")" 
	return(this)
}


class d3 scalar d3::hcl(string scalar h, | real scalar c, real scalar l) { 
	this.currentFunction = "hcl"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".hcl(" + h + ", " + strofreal(c) + ", " + strofreal(l) + ")" 
	}
	else {
		this.current = this.getter() + ".hcl(" + h + ")" 
	}
	return(this)
}


class d3 scalar d3::header(string scalar name, | string scalar value) { 
	this.currentFunction = "header"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + `".header(""' + name + `"", "' + value + ")" 
	}
	else {
		this.current = this.getter() + `".header(""' + name + `"")"' 
	}
	return(this)
}


class d3 scalar d3::hsl(| string scalar h, real scalar s, real scalar l) { 
	this.currentFunction = "hsl"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".hsl(" + h + ", " + strofreal(s) + ", " + strofreal(l) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".hsl(" + h + ")" 
	}
	else {
		this.current = this.getter() + ".hsl()" 
	}
	return(this)
}


class d3 scalar d3::html(| string scalar url, string scalar callback) { 
	this.currentFunction = "html"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + `".html(""' + url + `"", "' + callback + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + `".html(""' + url + `"")"'
	}
	else {
		this.current = this.getter() + ".html()" 
	}
	return(this)
}


class d3 scalar d3::insert(string scalar name, | string scalar before) { 
	this.currentFunction = "insert"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + `".insert("' + name + `", "' + before + `")"' 
	}
	else {
		this.current = this.getter() + ".insert(" + name + ")" 
	}
	return(this)
}


class d3 scalar d3::interpolate(| string scalar a, string scalar b) { 
	this.currentFunction = "interpolate"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".interpolate(" + a + ", " + b + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".interpolate(" + a + ")" 
	}
	else {
		this.current = this.getter() + ".interpolate()" 
	}
	return(this)
}


class d3 scalar d3::interpolators(string scalar func) { 
	this.currentFunction = "interpolators"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".interpolators.push(" + func + ")" 
	return(this)
}


class d3 scalar d3::interpolateArray(string scalar a, string scalar b) { 
	this.currentFunction = "interpolateArray"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".interpolateArray(" + a + ", " + b + ")" 
	return(this)
}


class d3 scalar d3::interpolateHcl(string scalar a, string scalar b) { 
	this.currentFunction = "interpolateHcl"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".interpolateHcl(" + a + ", " + b + ")" 
	return(this)
}


class d3 scalar d3::interpolateHsl(string scalar a, string scalar b) { 
	this.currentFunction = "interpolateHsl"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".interpolateHsl(" + a + ", " + b + ")" 
	return(this)
}


class d3 scalar d3::interpolateLab(string scalar a, string scalar b) { 
	this.currentFunction = "interpolateLab"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".interpolateLab(" + a + ", " + b + ")" 
	return(this)
}


class d3 scalar d3::interpolateNumber(string scalar a, string scalar b) { 
	this.currentFunction = "interpolateNumber"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".interpolateNumber(" + a + ", " + b + ")" 
	return(this)
}


class d3 scalar d3::interpolateObject(string scalar a, string scalar b) { 
	this.currentFunction = "interpolateObject"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".interpolateObject(" + a + ", " + b + ")" 
	return(this)
}


class d3 scalar d3::interpolateRgb(string scalar a, string scalar b) { 
	this.currentFunction = "interpolateRgb"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".interpolateRgb(" + a + ", " + b + ")" 
	return(this)
}


class d3 scalar d3::interpolateRound(string scalar a, string scalar b) { 
	this.currentFunction = "interpolateRound"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".interpolateRound(" + a + ", " + b + ")" 
	return(this)
}


class d3 scalar d3::interpolateString(string scalar a, string scalar b) { 
	this.currentFunction = "interpolateString"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".interpolateString(" + a + ", " + b + ")" 
	return(this)
}


class d3 scalar d3::interpolateTransform(string scalar a, string scalar b) { 
	this.currentFunction = "interpolateTransform"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".interpolateTransform(" + a + ", " + b + ")" 
	return(this)
}


class d3 scalar d3::interpolateZoom(string scalar a, string scalar b) { 
	this.currentFunction = "interpolateZoom"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".interpolateZoom(" + a + ", " + b + ")" 
	return(this)
}


class d3 scalar d3::interrupt(| string scalar name) { 
	this.currentFunction = "interrupt"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".interrupt(" + name + ")" 	
	}
	else {
		this.current = this.getter() + ".interrupt()" 
	}
	return(this)
}


class d3 scalar d3::irwinHall(real scalar count) { 
	this.currentFunction = "irwinHall"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".irwinHall(" + strofreal(count) + ")" 
	return(this)
}


class d3 scalar d3::json(string scalar url, | string scalar callback) { 
	this.currentFunction = "json"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + `".json(""' + url + `"", "' + callback + ")" 
	}
	else {
		this.current = this.getter() + `".json(""' + url + `"")"' 
	}
	return(this)
}


class d3 scalar d3::keys(string scalar object) { 
	this.currentFunction = "keys"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".keys(" + object + ")" 
	return(this)
}


class d3 scalar d3::lab(string scalar l, | real scalar a, real scalar b) { 
	this.currentFunction = "lab"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".lab(" + l + ", " + strofreal(a) + ", " + strofreal(b) + ")" 
	}
	else {
		this.current = this.getter() + ".lab(" + l + ")" 
	}
	return(this)
}


class d3 scalar d3::locale(string scalar definition) { 
	this.currentFunction = "locale"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (regexm(definition, "(decimal)(thousands)(grouping)(currency)") == 1) {
		this.current = this.getter() + ".locale(" + definition + ")" 
		return(this)
	}
	else {
		_error(3498, "Specifying a locale requires the decimal, thousands, grouping, and currency attributes be defined.")
	}
}
		


class d3 scalar d3::logNormal(| real scalar mean, real scalar deviation) { 
	this.currentFunction = "logNormal"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".logNormal(" + strofreal(mean) + ", " + strofreal(deviation) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".logNormal(" + strofreal(mean) + ")" 
	}
	else {
		this.current = this.getter() + ".logNormal()" 
	}
	return(this)
}


class d3 scalar d3::map(| string scalar object, string scalar key) { 
	this.currentFunction = "map"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".map(" + object + ", " + key + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".map(" + object + ")" 
	}
	else {
		this.current = this.getter() + ".map()" 
	}
	return(this)
}


class d3 scalar d3::max(string scalar aray, | string scalar accessor) { 
	this.currentFunction = "max"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".max(" + aray + ", " + accessor + ")" 
	}
	else {
		this.current = this.getter() + ".max(" + aray + ")" 
	}
	return(this)
}


class d3 scalar d3::mean(string scalar aray, | string scalar accessor) { 
	this.currentFunction = "mean"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".mean(" + aray + ", " + accessor + ")" 
	}
	else {
		this.current = this.getter() + ".mean(" + aray + ")" 
	}
	return(this)
}


class d3 scalar d3::median(string scalar aray, | string scalar accessor) { 
	this.currentFunction = "median"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".median(" + aray + ", " + accessor + ")" 
	}
	else {
		this.current = this.getter() + ".median(" + aray + ")" 
	}
	return(this)
}


class d3 scalar d3::merge(string scalar arays) { 
	this.currentFunction = "merge"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".merge(" + arays + ")" 
	return(this)
}


class d3 scalar d3::mimeType(| string scalar type) { 
	this.currentFunction = "mimeType"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + `".mimeType(""' + type + `"")"' 
	}
	else {
		this.current = this.getter() + ".mimeType()" 
	}
	return(this)
}


class d3 scalar d3::min(string scalar aray, | string scalar accessor) { 
	this.currentFunction = "min"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".min(" + aray + ", " + accessor + ")" 
	}
	else {
		this.current = this.getter() + ".min(" + aray + ")" 
	}
	return(this)
}


class d3 scalar d3::mouse(string scalar container) { 
	this.currentFunction = "mouse"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + `".mouse(""' + container + `"")"' 
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


class d3 scalar d3::normal(| real scalar mean, real scalar deviation) { 
	this.currentFunction = "normal"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".normal(" + strofreal(mean) + ", " + strofreal(deviation) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".normal(" + strofreal(mean) + ")" 
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

class d3 scalar d3::numberFormat(string scalar specifier) { 
	this.currentFunction = "numberFormat"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".numberFormat(" + specifier + ")" 
	return(this)
}


class d3 scalar d3::on(string scalar type, | string scalar listener, string scalar capture) { 
	this.currentFunction = "on"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + `".on(""' + type + `"", "' + listener + ", " + capture + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + `".on(""' + type + `"", "' + listener + ")" 
	}
	else {
		this.current = this.getter() + `".on(""' + type + `"")"' 
	}
	return(this)
}


class d3 scalar d3::order(| string scalar order) { 
	this.currentFunction = "order"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".order(" + order + ")" 
	}
	else {
		this.current = this.getter() + ".order()" 
	}
	return(this)
}


class d3 scalar d3::pairs(string scalar aray) { 
	this.currentFunction = "pairs"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".pairs(" + aray + ")" 
	return(this)
}


class d3 scalar d3::permute(string scalar aray, string scalar indexes) { 
	this.currentFunction = "permute"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".permute(" + aray + ", " + indexes + ")" 
	return(this)
}


class d3 scalar d3::post(| string scalar data, string scalar callback) { 
	this.currentFunction = "post"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".post(" + data + ", " + callback + ")" 
	}
	else {
		this.current = this.getter() + ".post(" + data + ")" 
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

class d3 scalar d3::property(string scalar name, | string scalar value) { 
	this.currentFunction = "property"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + `".property(""' + name + `"", "' + value + ")" 
	}
	else {
		this.current = this.getter() + ".property(" + name + ")" 
	}
	return(this)
}


class d3 scalar d3::qualify(string scalar name) { 
	this.currentFunction = "qualify"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".qualify(" + name + ")" 
	return(this)
}


class d3 scalar d3::quantile(| string scalar numbers, real scalar p) { 
	this.currentFunction = "quantile"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".quantile(" + numbers + ", " + strofreal(p) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".quantile(" + numbers + ")" 
	}
	else {
		this.current = this.getter() + ".quantile()" 
	}
	return(this)
}


class d3 scalar d3::range(real scalar stop, | real scalar start, real scalar step) { 
	this.currentFunction = "range"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	string scalar strt, stp, ste
	if (start == .) {
		strt = strofreal(0)
	}
	else {
		strt = strofreal(start)
	}
	if (step == .) {
		ste = strofreal(1)
	}
	else {
		ste = strofreal(step)
	}
	stp = strofreal(stop)
	this.current = this.getter() + ".range(" + strt + ", " + stp + ", " + ste + ")" 
	return(this)
}


class d3 scalar d3::rebind(string scalar target, string scalar source, string scalar names) { 
	this.currentFunction = "rebind"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".rebind(" + target + ", " + source + ", " + names + ")" 
	return(this)
}


class d3 scalar d3::remove(| string scalar value) { 
	this.currentFunction = "remove"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".remove(" + value + ")" 
	}
	else {
		this.current = this.getter() + ".remove()" 
	}
	return(this)
}


class d3 scalar d3::requote(string scalar strng) { 
	this.currentFunction = "requote"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + `".requote(""' + strng + `"")"' 
	return(this)
}


class d3 scalar d3::response(string scalar value) { 
	this.currentFunction = "response"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".response(" + value + ")" 
	return(this)
}


class d3 scalar d3::responseType(string scalar type) { 
	this.currentFunction = "responseType"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".responseType(" + type + ")" 
	return(this)
}


class d3 scalar d3::rgb(| string scalar r, real scalar g, real scalar b) { 
	this.currentFunction = "rgb"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".rgb(" + r + ", " + strofreal(g) + ", " + strofreal(b) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".rgb(" + r + ")" 
	}
	else {
		this.current = this.getter() + ".rgb()" 
	}
	return(this)
}


class d3 scalar d3::rollup(string scalar func) { 
	this.currentFunction = "rollup"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".rollup(" + func + ")" 
	return(this)
}

class d3 scalar d3::rotate(| string scalar rotate) {
	this.currentFunction = "rotate"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".rotate(" + rotate + ")" 
	}
	else {
		this.current = this.getter() + ".rotate()" 
	}
	return(this)
}


class d3 scalar d3::round(| string scalar x, string scalar n) { 
	this.currentFunction = "round"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".round(" + strofreal(x) + ", " + strofreal(n) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".round(" + strofreal(x) + ")" 
	}
	else {
		this.current = this.getter() + ".round()" 
	}
	return(this)
}


class d3 scalar d3::select(string scalar selector) { 
	this.currentFunction = "select"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + `".select(""' + selector + `"")"' 
	return(this)
}


class d3 scalar d3::selectAll(string scalar selector) { 
	this.currentFunction = "selectAll"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + `".selectAll(""' + selector + `"")"'
	return(this)
}


class d3 scalar d3::selection() { 
	this.currentFunction = "selection"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".selection()" 
	return(this)
}


class d3 scalar d3::send(string scalar method, | string scalar data, string scalar callback) { 
	this.currentFunction = "send"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".send(" + method + ", " + data + ", " + callback + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".send(" + method + ", " + data + ")" 
	}
	else {
		this.current = this.getter() + ".send(" + method + ")" 
	}
	return(this)
}


class d3 scalar d3::set(| string scalar key, string scalar value) { 
	this.currentFunction = "set"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".set(" + key + ", " + value + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".set(" + key + ")" 
	}
	else {
		this.current = this.getter() + ".set()" 
	}
	return(this)
}

class d3 scalar d3::shuffle(string scalar aray, | string scalar lo, string scalar hi) { 
	this.currentFunction = "shuffle"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".shuffle(" + aray + ", " + lo + ", " + hi + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".shuffle(" + aray + ", " + lo + ")" 
	}
	else {
		this.current = this.getter() + ".shuffle(" + aray + ")" 
	}
	return(this)
}


class d3 scalar d3::size(| string scalar width, string scalar height) { 
	this.currentFunction = "size"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".size(" + width + ", " + height + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".size(" + width + ")" 
	}
	else {
		this.current = this.getter() + ".size()" 
	}
	return(this)
}


class d3 scalar d3::sort(| string scalar comparator) { 
	this.currentFunction = "sort"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".sort(" + comparator + ")" 
	}
	else {
		this.current = this.getter() + ".sort()" 
	}
	return(this)
}


class d3 scalar d3::sortKeys(string scalar comparator) { 
	this.currentFunction = "sortKeys"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".sortKeys(" + comparator + ")" 
	return(this)
}


class d3 scalar d3::sortValues(string scalar comparator) { 
	this.currentFunction = "sortValues"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".sortValues(" + comparator + ")" 
	return(this)
}


class d3 scalar d3::style(string scalar name, | string scalar value, string scalar priority) { 
	this.currentFunction = "style"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + `".style(""' + name + `"", "' + value + ", " + priority + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + `".style(""' + name + `"", "' + value + ")" 
	}
	else {
		this.current = this.getter() + `".style(""' + name + `"")"' 
	}
	return(this)
}


class d3 scalar d3::styleTween(string scalar name, string scalar tween, | string scalar priority) { 
	this.currentFunction = "styleTween"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + `".styleTween(""' + name + `"", "' + tween + ", " + priority + ")" 
	}
	else {
		this.current = this.getter() + `".styleTween(""' + name + `"", "' + tween + ")" 
	}
	return(this)
}


class d3 scalar d3::sum(string scalar aray, | string scalar accessor) { 
	this.currentFunction = "sum"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".sum(" + aray + ", " + accessor + ")" 
	}
	else {
		this.current = this.getter() + ".sum(" + aray + ")" 
	}
	return(this)
}


class d3 scalar d3::text(| string scalar url, string scalar mimeType, string scalar callback) { 
	this.currentFunction = "text"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + `".text(""' + url + `"", ""' + mimeType + `"", "' + callback + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + `".text(""' + url + `"", ""' + mimeType + `"")"' 
	}
	else if (args() == 1) {
		this.current = this.getter() + `".text(""' + url + `"")"' 
	}
	else {
		this.current = this.getter() + ".text()"
	}
	return(this)
}


class d3 scalar d3::timeFormat(string scalar specifier) { 
	this.currentFunction = "timeFormat"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".timeFormat(" + specifier + ")" 
	return(this)
}


class d3 scalar d3::timer(string scalar func, | string scalar delay, string scalar time) { 
	this.currentFunction = "timer"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".timer(" + func + ", " + delay + ", " + time + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".timer(" + func + ", " + delay + ")" 
	}
	else {
		this.current = this.getter() + ".timer(" + func + ")" 
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


class d3 scalar d3::touch(string scalar container, | string scalar touches, string scalar identifier) { 
	this.currentFunction = "touch"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".touch(" + container + ", " + touches + ", " + identifier + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".touch(" + container + ", " + touches + ")" 
	}
	else {
		this.current = this.getter() + ".touch(" + container + ")" 
	}
	return(this)
}


class d3 scalar d3::touches(string scalar container, | string scalar touches) { 
	this.currentFunction = "touches"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".touches(" + container + ", " + touches + ")" 
	}
	else {
		this.current = this.getter() + ".touches(" + container + ")" 
	}
	return(this)
}


class d3 scalar d3::transform(string scalar strng) { 
	this.currentFunction = "transform"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".transform(" + strng + ")" 
	return(this)
}


class d3 scalar d3::transition(| string scalar selection, string scalar name) { 
	this.currentFunction = "transition"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + `".transition(""' + selection + `"", "' + name + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + `".transition(""' + selection + `"")"' 
	}
	else {
		this.current = this.getter() + ".transition()" 
	}
	return(this)
}

class d3 scalar d3::translate(| string scalar translate, real scalar d3) {
	this.currentFunction = "translate"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (translate != "") {
		this.current = this.getter() + ".translate(" + translate + ")"
	}
	else if (translate == "" & d3 == 1) {
		this.current = this.getter() + ".translate()"
	}
	else if (translate == "" & d3 == 0) {
		this.current = this.getter() + ".translate"
	}
	return(this)
}


class d3 scalar d3::transpose(string scalar matrx) { 
	this.currentFunction = "transpose"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".transpose(" + matrx + ")" 
	return(this)
}


class d3 scalar d3::tsv(string scalar url, | string scalar accessor, string scalar callback) { 
	this.currentFunction = "tsv"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + `".tsv(""' + url + `"", "' + accessor + ", " + callback + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + `".tsv(""' + url + `"", "' + accessor + ")" 
	}
	else {
		this.current = this.getter() + `".tsv(""' + url + `"")"' 
	}
	return(this)
}


class d3 scalar d3::tween(string scalar name, string scalar factory) { 
	this.currentFunction = "tween"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + `".tween(""' + name + `"", "' + factory + ")" 
	return(this)
}


class d3 scalar d3::type(| string scalar arguments) { 
	this.currentFunction = "type"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".type(" + arguments + ")" 
	}
	else {
		this.current = this.getter() + ".type()" 
	}
	return(this)
}

class d3 scalar d3::values(| string scalar object) { 
	this.currentFunction = "values"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".values(" + object + ")" 
	}
	else {
		this.current = this.getter() + ".values()" 
	}
	return(this)
}

class d3 scalar d3::variance(string scalar aray, | string scalar accessor) { 
	this.currentFunction = "variance"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".variance(" + aray + ", " + accessor + ")" 
	}
	else {
		this.current = this.getter() + ".variance(" + aray + ")" 
	}
	return(this)
}


class d3 scalar d3::xhr(string scalar url, | string scalar mimeType, string scalar callback) { 
	this.currentFunction = "xhr"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + `".xhr(""' + url + `"", ""' + mimeType + `"", "' + callback + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + `".xhr(""' + url + `"", ""' + mimeType + `"")"' 
	}
	else {
		this.current = this.getter() + `".xhr(""' + url + `"")"' 
	}
	return(this)
}


class d3 scalar d3::xml(string scalar url, | string scalar mimeType, string scalar callback) { 
	this.currentFunction = "xml"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + `".xml(""' + url + `"", ""' + mimeType + `"", "' + callback + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + `".xml(""' + url + `"", ""' + mimeType + `"")"' 
	}
	else {
		this.current = this.getter() + `".xml(""' + url + `"")"' 
	}
	return(this)
}


class d3 scalar d3::zip(string scalar arays) { 
	this.currentFunction = "zip"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".zip(" + arays + ")" 
	return(this)
}

class d3 scalar d3::behavior() {
	this.currentFunction = "behavior"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	this.current = this.getter() + ".behavior"
	return(this)
}

class d3 scalar d3::center(| string scalar center) { 
	this.currentFunction = "center"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".center(" + center + ")" 
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

class d3 scalar d3::origin(| string scalar origin) { 
	this.currentFunction = "origin"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".origin(" + origin + ")" 
	}
	else {
		this.current = this.getter() + ".origin()" 
	}
	return(this)
}

class d3 scalar d3::scaleExtent(| string scalar extent) { 
	this.currentFunction = "scaleExtent"
	this.lastFunction = getLastFunction()
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".scaleExtent(" + extent + ")" 
	}
	else {
		this.current = this.getter() + ".scaleExtent()" 
	}
	return(this)
}

class d3 scalar d3::x(| string scalar x) { 
	this.currentFunction = "x"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".x(" + x + ")" 
	}
	else {
		this.current = this.getter() + ".x()" 
	}
	return(this)
}

class d3 scalar d3::y(| string scalar y) { 
	this.currentFunction = "y"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".y(" + y + ")" 
	}
	else {
		this.current = this.getter() + ".y()" 
	}
	return(this)
}

class d3 scalar d3::x0(| string scalar x0) { 
	this.currentFunction = "x0"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".x0(" + x0 + ")" 
	}
	else {
		this.current = this.getter() + ".x0()" 
	}
	return(this)
}

class d3 scalar d3::y0(| string scalar y0) { 
	this.currentFunction = "y0"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".y0(" + y0 + ")" 
	}
	else {
		this.current = this.getter() + ".y0()" 
	}
	return(this)
}

class d3 scalar d3::x1(| string scalar x1) { 
	this.currentFunction = "x1"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".x1(" + x1 + ")" 
	}
	else {
		this.current = this.getter() + ".x1()" 
	}
	return(this)
}

class d3 scalar d3::y1(| string scalar y1) { 
	this.currentFunction = "y1"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".y1(" + y1 + ")" 
	}
	else {
		this.current = this.getter() + ".y1()" 
	}
	return(this)
}

class d3 scalar d3::zoom(| string scalar selection) { 
	this.currentFunction = "zoom"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".zoom(" + selection + ")" 
	}
	else {
		this.current = this.getter() + ".zoom()" 
	}
	return(this)
}

class d3 scalar d3::geom() {
	this.currentFunction = "geom"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".geom"
	return(this)
}

class d3 scalar d3::clip(string scalar subject) { 
	this.currentFunction = "clip"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".clip(" + subject + ")" 
	return(this)
}

class d3 scalar d3::clipExtent(| string scalar extent) { 
	this.currentFunction = "clipExtent"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".clipExtent(" + extent + ")" 
	}
	else {
		this.current = this.getter() + ".clipExtent()" 
	}
	return(this)
}

class d3 scalar d3::find(string scalar point) { 
	this.currentFunction = "find"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".find(" + point + ")" 
	return(this)
}

class d3 scalar d3::hull(| string scalar vertices) { 
	this.currentFunction = "hull"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".hull(" + vertices + ")" 
	}
	else {
		this.current = this.getter() + ".hull()" 
	}
	return(this)
}

class d3 scalar d3::polygon(string scalar vertices) { 
	this.currentFunction = "polygon"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".polygon(" + vertices + ")" 
	return(this)
}

class d3 scalar d3::quadtree(| string scalar points, string scalar x1, string scalar y1, string scalar x2, string scalar y2) { 
	this.currentFunction = "quadtree"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 5) {
		this.current = this.getter() + ".quadtree(" + points + ", " + x1 + ", " + y1 + ", " + x2 + ", " + y2 + ")" 
	}
	if (args() == 4) {
		this.current = this.getter() + ".quadtree(" + points + ", " + x1 + ", " + y1 + ", " + x2 + ")" 
	}
	if (args() == 3) {
		this.current = this.getter() + ".quadtree(" + points + ", " + x1 + ", " + y1 + ")" 
	}
	if (args() == 2) {
		this.current = this.getter() + ".quadtree(" + points + ", " + x1 + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".quadtree(" + points + ")" 
	}
	else {
		this.current = this.getter() + ".quadtree()" 	
	}
	return(this)
}

class d3 scalar d3::triangles(string scalar data) { 
	this.currentFunction = "triangles"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".triangles(" + data + ")" 
	return(this)
}

class d3 scalar d3::visit(string scalar callback) { 
	this.currentFunction = "visit"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".visit(" + callback + ")" 
	return(this)
}

class d3 scalar d3::voronoi(| string scalar data) { 
	this.currentFunction = "voronoi"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".voronoi(" + data + ")" 
	}
	else {
		this.current = this.getter() + ".voronoi()" 
	}
	return(this)
}

class d3 scalar d3::layout() {
	this.currentFunction = "layout"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".layout"
	return(this)
}

class d3 scalar d3::alpha(| string scalar value) { 
	this.currentFunction = "alpha"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".alpha(" + value + ")" 
	}
	else {
		this.current = this.getter() + ".alpha()" 
	}
	return(this)
}

class d3 scalar d3::bins(| string scalar count) { 
	this.currentFunction = "bins"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".bins(" + count + ")" 
	}
	else {
		this.current = this.getter() + ".bins()" 
	}
	return(this)
}

class d3 scalar d3::bundle(| string scalar links) { 
	this.currentFunction = "bundle"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".bundle(" + links + ")" 
	}
	else {
		this.current = this.getter() + ".bundle()" 
	}
	return(this)
}

class d3 scalar d3::charge(| string scalar charge) { 
	this.currentFunction = "charge"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".charge(" + charge + ")" 
	}
	else {
		this.current = this.getter() + ".charge()" 
	}
	return(this)
}

class d3 scalar d3::chargeDistance(| string scalar distance) { 
	this.currentFunction = "chargeDistance"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".chargeDistance(" + distance + ")" 
	}
	else {
		this.current = this.getter() + ".chargeDistance()" 
	}
	return(this)
}

class d3 scalar d3::children(| string scalar accessor) { 
	this.currentFunction = "children"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".children(" + accessor + ")" 
	}
	else {
		this.current = this.getter() + ".children()" 
	}
	return(this)
}

class d3 scalar d3::chords() { 
	this.currentFunction = "chords"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".chords()" 
	return(this)
}

class d3 scalar d3::cluster(| string scalar root) { 
	this.currentFunction = "cluster"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".cluster(" + root + ")" 
	}
	else {
		this.current = this.getter() + ".cluster()" 
	}
	return(this)
}

class d3 scalar d3::force() { 
	this.currentFunction = "force"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".force()" 
	return(this)
}

class d3 scalar d3::frequency(| string scalar frequency) { 
	this.currentFunction = "frequency"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".frequency(" + frequency + ")" 
	}
	else {
		this.current = this.getter() + ".frequency()" 
	}
	return(this)
}

class d3 scalar d3::friction(| string scalar friction) { 
	this.currentFunction = "friction"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".friction(" + friction + ")" 
	}
	else {
		this.current = this.getter() + ".friction()" 
	}
	return(this)
}

class d3 scalar d3::gravity(| string scalar gravity) { 
	this.currentFunction = "gravity"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".gravity(" + gravity + ")" 
	}
	else {
		this.current = this.getter() + ".gravity()" 
	}
	return(this)
}

class d3 scalar d3::groups() { 
	this.currentFunction = "groups"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".groups()" 
	return(this)
}

class d3 scalar d3::hierarchy(| string scalar root) { 
	this.currentFunction = "hierarchy"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".hierarchy(" + root + ")" 
	}
	else {
		this.current = this.getter() + ".hierarchy()" 
	}
	return(this)
}

class d3 scalar d3::histogram(| string scalar values, string scalar index) { 
	this.currentFunction = "histogram"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".histogram(" + values + ", " + index + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".histogram(" + values + ")" 
	}
	else {
		this.current = this.getter() + ".histogram()" 
	}
	return(this)
}

class d3 scalar d3::linkDistance(| string scalar distance) { 
	this.currentFunction = "linkDistance"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".linkDistance(" + distance + ")" 
	}
	else {
		this.current = this.getter() + ".linkDistance()" 
	}
	return(this)
}

class d3 scalar d3::linkStrength(| string scalar strength) { 
	this.currentFunction = "linkStrength"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".linkStrength(" + strength + ")" 
	}
	else {
		this.current = this.getter() + ".linkStrength()" 
	}
	return(this)
}

class d3 scalar d3::links(| string scalar links) { 
	this.currentFunction = "links"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".links(" + links + ")" 
	}
	else {
		this.current = this.getter() + ".links()" 
	}
	return(this)
}

class d3 scalar d3::matrx(| string scalar matrx) { 
	this.currentFunction = "matrix"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".matrix(" + matrx + ")" 
	}
	else {
		this.current = this.getter() + ".matrix()" 
	}
	return(this)
}

class d3 scalar d3::mode(| string scalar mode) { 
	this.currentFunction = "mode"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".mode(" + mode + ")" 
	}
	else {
		this.current = this.getter() + ".mode()" 
	}
	return(this)
}

class d3 scalar d3::nodeSize(| string scalar nodeSize) { 
	this.currentFunction = "nodeSize"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".nodeSize(" + nodeSize + ")" 
	}
	else {
		this.current = this.getter() + ".nodeSize()" 
	}
	return(this)
}

class d3 scalar d3::nodes(| string scalar nodes) { 
	this.currentFunction = "nodes"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".nodes(" + nodes + ")" 
	}
	else {
		this.current = this.getter() + ".nodes()" 
	}
	return(this)
}

class d3 scalar d3::out(| string scalar setter) { 
	this.currentFunction = "out"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".out(" + setter + ")" 
	}
	else {
		this.current = this.getter() + ".out()" 
	}
	return(this)
}

class d3 scalar d3::pack(| string scalar root) { 
	this.currentFunction = "pack"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".pack(" + root + ")" 
	}
	else {
		this.current = this.getter() + ".pack()" 
	}
	return(this)
}

class d3 scalar d3::padAngle(| string scalar angle) { 
	this.currentFunction = "padAngle"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".padAngle(" + angle + ")" 
	}
	else {
		this.current = this.getter() + ".padAngle()" 
	}
	return(this)
}

class d3 scalar d3::padding(| string scalar padding) { 
	this.currentFunction = "padding"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".padding(" + padding + ")" 
	}
	else {
		this.current = this.getter() + ".padding()" 
	}
	return(this)
}

class d3 scalar d3::partition(| string scalar root) { 
	this.currentFunction = "partition"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".partition(" + root + ")" 
	}
	else {
		this.current = this.getter() + ".partition()" 
	}
	return(this)
}

class d3 scalar d3::pie(| string scalar values, string scalar index) { 
	this.currentFunction = "pie"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".pie(" + values + ", " + index + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".pie(" + values + ")" 
	}
	else {
		this.current = this.getter() + ".pie()" 
	}
	return(this)
}

class d3 scalar d3::radius(| string scalar radius) { 
	this.currentFunction = "radius"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".radius(" + radius + ")" 
	}
	else {
		this.current = this.getter() + ".radius()" 
	}
	return(this)
}

class d3 scalar d3::ratio(| string scalar ratio) { 
	this.currentFunction = "ratio"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".ratio(" + ratio + ")" 
	}
	else {
		this.current = this.getter() + ".ratio()" 
	}
	return(this)
}

class d3 scalar d3::resume() { 
	this.currentFunction = "resume"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".resume()" 
	return(this)
}

class d3 scalar d3::revalue(string scalar root) { 
	this.currentFunction = "revalue"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".revalue(" + root + ")" 
	return(this)
}

class d3 scalar d3::separation(| string scalar separation) { 
	this.currentFunction = "separation"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".separation(" + separation + ")" 
	}
	else {
		this.current = this.getter() + ".separation()" 
	}
	return(this)
}

class d3 scalar d3::sortChords(| string scalar comparator) { 
	this.currentFunction = "sortChords"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".sortChords(" + comparator + ")" 
	}
	else {
		this.current = this.getter() + ".sortChords()" 
	}
	return(this)
}

class d3 scalar d3::sortGroups(| string scalar comparator) { 
	this.currentFunction = "sortGroups"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".sortGroups(" + comparator + ")" 
	}
	else {
		this.current = this.getter() + ".sortGroups()" 
	}
	return(this)
}

class d3 scalar d3::sortSubgroups(| string scalar comparator) { 
	this.currentFunction = "sortSubgroups"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".sortSubgroups(" + comparator + ")" 
	}
	else {
		this.current = this.getter() + ".sortSubgroups()" 
	}
	return(this)
}

class d3 scalar d3::stack(| string scalar layers, string scalar index) { 
	this.currentFunction = "stack"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".stack(" + layers + ", " + index + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".stack(" + layers + ")" 
	}
	else {
		this.current = this.getter() + ".stack()" 
	}
	return(this)
}

class d3 scalar d3::start() { 
	this.currentFunction = "start"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".start()" 
	return(this)
}

class d3 scalar d3::startAngle(| string scalar angle) { 
	this.currentFunction = "startAngle"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".startAngle(" + angle + ")" 
	}
	else {
		this.current = this.getter() + ".startAngle()" 
	}
	return(this)
}

class d3 scalar d3::sticky(| string scalar sticky) { 
	this.currentFunction = "sticky"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".sticky(" + sticky + ")" 
	}
	else {
		this.current = this.getter() + ".sticky()" 
	}
	return(this)
}

class d3 scalar d3::stop() { 
	this.currentFunction = "stop"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".stop()" 
	return(this)
}

class d3 scalar d3::theta(| string scalar theta) { 
	this.currentFunction = "theta"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".theta(" + theta + ")" 
	}
	else {
		this.current = this.getter() + ".theta()" 
	}
	return(this)
}

class d3 scalar d3::tick() { 
	this.currentFunction = "tick"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".tick()" 
	return(this)
}

class d3 scalar d3::tree(| string scalar root) { 
	this.currentFunction = "tree"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".tree(" + root + ")" 
	}
	else {
		this.current = this.getter() + ".tree()" 
	}
	return(this)
}

class d3 scalar d3::treemap(| string scalar root) { 
	this.currentFunction = "treemap"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".treemap(" + root + ")"
	}
	else {
		this.current = this.getter() + ".treemap()"
	} 
	return(this)
}

class d3 scalar d3::value(| string scalar value) { 
	this.currentFunction = "value"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".value(" + value + ")"
	}
	else {
		this.current = this.getter() + ".value()"
	} 
	return(this)
}

class d3 scalar d3::albers() { 
	this.currentFunction = "albers"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".albers()" 
	return(this)
}

class d3 scalar d3::albersUsa() { 
	this.currentFunction = "albersUsa"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".albersUsa()" 
	return(this)
}

class d3 scalar d3::azimuthalEqualArea() { 
	this.currentFunction = "azimuthalEqualArea"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".azimuthalEqualArea()" 
	return(this)
}

class d3 scalar d3::azimuthalEquidistant() { 
	this.currentFunction = "azimuthalEquidistant"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".azimuthalEquidistant()" 
	return(this)
}

class d3 scalar d3::bounds(string scalar feature) { 
	this.currentFunction = "bounds"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".bounds(" + feature + ")" 
	return(this)
}

class d3 scalar d3::centroid(| string scalar feature) { 
	this.currentFunction = "centroid"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".centroid(" + feature + ")" 
	}
	else {
		this.current = this.getter() + ".centroid()" 
	}
	return(this)
}

class d3 scalar d3::circle(string scalar arguments) { 
	this.currentFunction = "circle"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".circle(" + arguments + ")" 
	return(this)
}

class d3 scalar d3::clipAngle(string scalar angle) { 
	this.currentFunction = "clipAngle"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".clipAngle(" + angle + ")" 
	return(this)
}

class d3 scalar d3::conicConformal() { 
	this.currentFunction = "conicConformal"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".conicConformal()" 
	return(this)
}

class d3 scalar d3::conicEqualArea() { 
	this.currentFunction = "conicEqualArea"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".conicEqualArea()" 
	return(this)
}

class d3 scalar d3::conicEquidistant() { 
	this.currentFunction = "conicEquidistant"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".conicEquidistant()" 
	return(this)
}

class d3 scalar d3::context(| string scalar context) { 
	this.currentFunction = "context"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".context(" + context + ")" 
	}
	else {
		this.current = this.getter() + ".context()" 
	}
	return(this)
}

class d3 scalar d3::distance(string scalar a, string scalar b) { 
	this.currentFunction = "distance"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".distance(" + a + ", " + b + ")" 
	return(this)
}

class d3 scalar d3::equirectangular() { 
	this.currentFunction = "equirectangular"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".equirectangular()" 
	return(this)
}

class d3 scalar d3::gnomonic() { 
	this.currentFunction = "gnomonic"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".gnomonic()" 
	return(this)
}

class d3 scalar d3::graticule() { 
	this.currentFunction = "graticule"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".graticule()" 
	return(this)
}

class d3 scalar d3::invert(string scalar point) { 
	this.currentFunction = "invert"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".invert(" + point + ")" 
	return(this)
}

class d3 scalar d3::length(string scalar feature) { 
	this.currentFunction = "length"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".length(" + feature + ")" 
	return(this)
}

class d3 scalar d3::lineEnd() { 
	this.currentFunction = "lineEnd"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".lineEnd()" 
	return(this)
}

class d3 scalar d3::lineStart() { 
	this.currentFunction = "lineStart"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".lineStart()" 
	return(this)
}

class d3 scalar d3::lines() { 
	this.currentFunction = "lines"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".lines()" 
	return(this)
}

class d3 scalar d3::majorExtent(string scalar extent) { 
	this.currentFunction = "majorExtent"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".majorExtent(" + extent + ")" 
	return(this)
}

class d3 scalar d3::majorStep(string scalar step) { 
	this.currentFunction = "majorStep"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".majorStep(" + step + ")" 
	return(this)
}

class d3 scalar d3::mercator() { 
	this.currentFunction = "mercator"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".mercator()" 
	return(this)
}

class d3 scalar d3::minorExtent(string scalar extent) { 
	this.currentFunction = "minorExtent"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".minorExtent(" + extent + ")" 
	return(this)
}

class d3 scalar d3::minorStep(string scalar step) { 
	this.currentFunction = "minorStep"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".minorStep(" + step + ")" 
	return(this)
}

class d3 scalar d3::orthographic() { 
	this.currentFunction = "orthographic"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".orthographic()" 
	return(this)
}

class d3 scalar d3::outline() { 
	this.currentFunction = "outline"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".outline()" 
	return(this)
}

class d3 scalar d3::parallels(| string scalar parallels) { 
	this.currentFunction = "parallels"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".parallels(" + parallels + ")" 
	}
	else {
		this.current = this.getter() + ".parallels()" 
	}
	return(this)
}

class d3 scalar d3::path(| string scalar feature, string scalar index) { 
	this.currentFunction = "path"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".path(" + feature + ", " + index + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".path(" + feature + ")" 
	}
	else {
		this.current = this.getter() + ".path()" 
	}
	return(this)
}

class d3 scalar d3::point(string scalar x, string scalar y, | string scalar z) { 
	this.currentFunction = "point"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".point(" + x + ", " + y + ", " + z + ")" 
	}
	else {
		this.current = this.getter() + ".point(" + x + ", " + y + ")" 
	}
	return(this)
}

class d3 scalar d3::pointRadius(| string scalar radius) { 
	this.currentFunction = "pointRadius"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".pointRadius(" + radius + ")" 
	}
	else {
		this.current = this.getter() + ".pointRadius()" 
	}
	return(this)
}

class d3 scalar d3::polygonEnd() { 
	this.currentFunction = "polygonEnd"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".polygonEnd()" 
	return(this)
}

class d3 scalar d3::polygonStart() { 
	this.currentFunction = "polygonStart"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".polygonStart()" 
	return(this)
}

class d3 scalar d3::precision(| string scalar precision) { 
	this.currentFunction = "precision"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".precision(" + precision + ")" 
	}
	else {
		this.current = this.getter() + ".precision()" 
	}
	return(this)
}

class d3 scalar d3::projection(| string scalar projection) { 
	this.currentFunction = "projection"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".projection(" + projection + ")" 
	}
	else {
		this.current = this.getter() + ".projection()" 
	}
	return(this)
}

class d3 scalar d3::projectionMutator(string scalar rawFactory) { 
	this.currentFunction = "projectionMutator"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".projectionMutator(" + rawFactory + ")" 
	return(this)
}

class d3 scalar d3::raw(string scalar psi0, string scalar psi1) { 
	this.currentFunction = "raw"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".raw(" + psi0 + ", " + psi1 + ")" 
	return(this)
}

class d3 scalar d3::rotation(string scalar rotate) { 
	this.currentFunction = "rotation"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".rotation(" + rotate + ")" 
	return(this)
}


class d3 scalar d3::sphere() { 
	this.currentFunction = "sphere"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".sphere()" 
	return(this)
}

class d3 scalar d3::step(string scalar step) { 
	this.currentFunction = "step"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".step(" + step + ")" 
	return(this)
}

class d3 scalar d3::stereographic() { 
	this.currentFunction = "stereographic"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".stereographic()" 
	return(this)
}

class d3 scalar d3::stream(string scalar object, |string scalar listener) { 
	this.currentFunction = "stream"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".stream(" + object + ", " + listener + ")" 
	}
	else {
		this.current = this.getter() + ".stream(" + object + ")" 
	}
	return(this)
}

class d3 scalar d3::transverseMercator() { 
	this.currentFunction = "transverseMercator"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".transverseMercator()" 
	return(this)
}

class d3 scalar d3::svg() {
	this.currentFunction = "svg"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".svg"
	return(this)
}

class d3 scalar d3::symbolTypes() {
	this.currentFunction = "symbolTypes"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".symbolTypes"
	return(this)
}

class d3 scalar d3::angle(| string scalar angle) { 
	this.currentFunction = "angle"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".angle(" + angle + ")" 
	}
	else {
		this.current = this.getter() + ".angle()" 
	}
	return(this)
}

class d3 scalar d3::arc(| string scalar datum, string scalar index) { 
	this.currentFunction = "arc"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".arc(" + datum + ", " + index + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".arc(" + datum + ")" 
	}
	else {
		this.current = this.getter() + ".arc()" 
	}
	return(this)
}

class d3 scalar d3::area(| string scalar data) { 
	this.currentFunction = "area"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".area(" + data + ")" 
	}
	else {
		this.current = this.getter() + ".area()" 
	}
	return(this)
}

class d3 scalar d3::axis(| string scalar selection) { 
	this.currentFunction = "axis"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".axis(" + selection + ")" 
	}
	else {
		this.current = this.getter() + ".axis()" 
	}
	return(this)
}

class d3 scalar d3::brush(| string scalar selection) { 
	this.currentFunction = "brush"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".brush(" + selection + ")" 
	}
	else {
		this.current = this.getter() + ".brush()" 
	}
	return(this)
}

class d3 scalar d3::chord(| string scalar datum, string scalar index) { 
	this.currentFunction = "chord"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".chord(" + datum + ", " + index + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".chord(" + datum + ")" 
	}
	else {
		this.current = this.getter() + ".chord()" 
	}
	return(this)
}

class d3 scalar d3::clamp(| string scalar clamp) { 
	this.currentFunction = "clamp"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".clamp(" + clamp + ")" 
	}
	else {
		this.current = this.getter() + ".clamp()" 
	}
	return(this)
}

class d3 scalar d3::clear() { 
	this.currentFunction = "clear"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".clear()" 
	return(this)
}

class d3 scalar d3::cornerRadius(| string scalar radius) { 
	this.currentFunction = "cornerRadius"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".cornerRadius(" + radius + ")" 
	}
	else {
		this.current = this.getter() + ".cornerRadius()" 
	}
	return(this)
}

class d3 scalar d3::defined(| string scalar defined) { 
	this.currentFunction = "defined"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".defined(" + defined + ")" 
	}
	else {
		this.current = this.getter() + ".defined()" 
	}
	return(this)
}

class d3 scalar d3::diagonal(| string scalar datum, string scalar index) { 
	this.currentFunction = "diagonal"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".diagonal(" + datum + ", " + index + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".diagonal(" + datum + ")" 
	}
	else {
		this.current = this.getter() + ".diagonal()" 
	}
	return(this)
}

class d3 scalar d3::endAngle(| string scalar angle) { 
	this.currentFunction = "endAngle"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".endAngle(" + angle + ")" 
	}
	else {
		this.current = this.getter() + ".endAngle()" 
	}
	return(this)
}

class d3 scalar d3::innerRadius(| string scalar radius) { 
	this.currentFunction = "innerRadius"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".innerRadius(" + radius + ")" 
	}
	else {
		this.current = this.getter() + ".innerRadius()" 
	}
	return(this)
}

class d3 scalar d3::innerTickSize(| string scalar size) { 
	this.currentFunction = "innerTickSize"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".innerTickSize(" + size + ")" 
	}
	else {
		this.current = this.getter() + ".innerTickSize()" 
	}
	return(this)
}

class d3 scalar d3::line(| string scalar data) { 
	this.currentFunction = "line"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".line(" + data + ")" 
	}
	else {
		this.current = this.getter() + ".line()" 
	}
	return(this)
}

class d3 scalar d3::orient(| string scalar orientation) { 
	this.currentFunction = "orient"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".orient(" + orientation + ")" 
	}
	else {
		this.current = this.getter() + ".orient()" 
	}
	return(this)
}

class d3 scalar d3::outerRadius(| string scalar radius) { 
	this.currentFunction = "outerRadius"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".outerRadius(" + radius + ")" 
	}
	else {
		this.current = this.getter() + ".outerRadius()" 
	}
	return(this)
}

class d3 scalar d3::outerTickSize(| string scalar size) { 
	this.currentFunction = "outerTickSize"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".outerTickSize(" + size + ")" 
	}
	else {
		this.current = this.getter() + ".outerTickSize()" 
	}
	return(this)
}

class d3 scalar d3::padRadius(| string scalar radius) { 
	this.currentFunction = "padRadius"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".padRadius(" + radius + ")" 
	}
	else {
		this.current = this.getter() + ".padRadius()" 
	}
	return(this)
}

class d3 scalar d3::radial() { 
	this.currentFunction = "radial"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".radial()" 
	return(this)
}

class d3 scalar d3::source(| string scalar source) { 
	this.currentFunction = "source"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".source(" + source + ")" 
	}
	else {
		this.current = this.getter() + ".source()" 
	}
	return(this)
}

class d3 scalar d3::symbol(| string scalar datum, string scalar index) { 
	this.currentFunction = "symbol"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".symbol(" + datum + ", " + index + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".symbol(" + datum + ")" 
	}
	else {
		this.current = this.getter() + ".symbol()" 
	}
	return(this)
}

class d3 scalar d3::target(| string scalar target) { 
	this.currentFunction = "target"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".target(" + target + ")" 
	}
	else {
		this.current = this.getter() + ".target()" 
	}
	return(this)
}

class d3 scalar d3::tension(| string scalar tension) { 
	this.currentFunction = "tension"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".tension(" + tension + ")" 
	}
	else {
		this.current = this.getter() + ".tension()" 
	}
	return(this)
}

class d3 scalar d3::tickPadding(| string scalar padding) { 
	this.currentFunction = "tickPadding"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".tickPadding(" + padding + ")" 
	}
	else {
		this.current = this.getter() + ".tickPadding()" 
	}
	return(this)
}

class d3 scalar d3::tickSize(| string scalar inner, string scalar outer) { 
	this.currentFunction = "tickSize"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".tickSize(" + inner + ", " + outer + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".tickSize(" + inner + ")" 
	}
	else {
		this.current = this.getter() + ".tickSize()" 
	}
	return(this)
}

class d3 scalar d3::tickValues(| string scalar values) { 
	this.currentFunction = "tickValues"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".tickValues(" + values + ")" 
	}
	else {
		this.current = this.getter() + ".tickValues()" 
	}
	return(this)
}

class d3 scalar d3::base(| string scalar base) { 
	this.currentFunction = "base"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".base(" + base + ")" 
	}
	else {
		this.current = this.getter() + ".base()" 
	}
	return(this)
}

class d3 scalar d3::category10() { 
	this.currentFunction = "category10"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".category10()" 
	return(this)
}

class d3 scalar d3::category20() { 
	this.currentFunction = "category20"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".category20()" 
	return(this)
}

class d3 scalar d3::category20b() { 
	this.currentFunction = "category20b"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".category20b()" 
	return(this)
}

class d3 scalar d3::category20c() { 
	this.currentFunction = "category20c"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".category20c()" 
	return(this)
}

class d3 scalar d3::domain(| string scalar values) { 
	this.currentFunction = "domain"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".domain(" + values + ")" 
	}
	else {
		this.current = this.getter() + ".domain()" 
	}
	return(this)
}

class d3 scalar d3::exponent(| string scalar k) { 
	this.currentFunction = "exponent"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".exponent(" + k + ")" 
	}
	else {
		this.current = this.getter() + ".exponent()" 
	}
	return(this)
}

class d3 scalar d3::identity(| string scalar x) { 
	this.currentFunction = "identity"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".identity(" + x + ")" 
	}
	else {
		this.current = this.getter() + ".identity()" 
	}
	return(this)
}

class d3 scalar d3::invertExtent(string scalar y) { 
	this.currentFunction = "invertExtent"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".invertExtent(" + y + ")" 
	return(this)
}

class d3 scalar d3::linear(| string scalar x) { 
	this.currentFunction = "linear"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".linear(" + x + ")" 
	}
	else {
		this.current = this.getter() + ".linear()" 
	}
	return(this)
}

class d3 scalar d3::log(| string scalar x) { 
	this.currentFunction = "log"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".log(" + x + ")" 
	}
	else {
		this.current = this.getter() + ".log()" 
	}
	return(this)
}

class d3 scalar d3::nice(| string scalar interval, string scalar step) { 
	this.currentFunction = "nice"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".nice(" + interval + ", " + step + ")" 
	}
	if (args() == 1) {
		this.current = this.getter() + ".nice(" + interval + ")" 
	}
	else {
		this.current = this.getter() + ".nice()" 
	}
	return(this)
}

class d3 scalar d3::ordinal(| string scalar x) { 
	this.currentFunction = "ordinal"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".ordinal(" + x + ")" 
	}
	else {
		this.current = this.getter() + ".ordinal()" 
	}
	return(this)
}

class d3 scalar d3::pow(| string scalar x) { 
	this.currentFunction = "pow"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".pow(" + x + ")" 
	}
	else {
		this.current = this.getter() + ".pow()" 
	}
	return(this)
}

class d3 scalar d3::quantiles() { 
	this.currentFunction = "quantiles"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".quantiles()" 
	return(this)
}

class d3 scalar d3::quantize(| string scalar x) { 
	this.currentFunction = "quantize"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".quantize(" + x + ")" 
	}
	else {
		this.current = this.getter() + ".quantize()" 
	}
	return(this)
}

class d3 scalar d3::rangeBand() { 
	this.currentFunction = "rangeBand"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".rangeBand()" 
	return(this)
}

class d3 scalar d3::rangeBands(string scalar interval, | string scalar padding, string scalar outerPadding) { 
	this.currentFunction = "rangeBands"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".rangeBands(" + interval + ", " + padding + ", " + outerPadding + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".rangeBands(" + interval + ", " + padding + ")" 
	}
	else {
		this.current = this.getter() + ".rangeBands(" + interval + ")" 
	}
	return(this)
}

class d3 scalar d3::rangeExtent() { 
	this.currentFunction = "rangeExtent"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".rangeExtent()" 
	return(this)
}

class d3 scalar d3::rangePoints(string scalar interval, | string scalar padding) { 
	this.currentFunction = "rangePoints"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".rangePoints(" + interval + ", " + padding + ")" 
	}
	else {
		this.current = this.getter() + ".rangePoints(" + interval + ")" 
	}
	return(this)
}

class d3 scalar d3::rangeRound(| string scalar values) { 
	this.currentFunction = "rangeRound"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".rangeRound(" + values + ")" 
	}
	else {
		this.current = this.getter() + ".rangeRound()" 
	}
	return(this)
}

class d3 scalar d3::rangeRoundBands(string scalar interval, | string scalar padding, string scalar outerPadding) { 
	this.currentFunction = "rangeRoundBands"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".rangeRoundBands(" + interval + ", " + padding + ", " + outerPadding + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".rangeRoundBands(" + interval + ", " + padding + ")" 
	}
	else {
		this.current = this.getter() + ".rangeRoundBands(" + interval + ")" 
	}
	return(this)
}

class d3 scalar d3::rangeRoundPoints(string scalar interval, | string scalar padding) { 
	this.currentFunction = "rangeRoundPoints"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".rangeRoundPoints(" + interval + ", " + padding + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".rangeRoundPoints(" + interval + ")" 
	}
	else {
		this.current = this.getter() + ".rangeRoundPoints()" 
	}
	return(this)
}

class d3 scalar d3::sqrt() { 
	this.currentFunction = "sqrt"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".sqrt()" 
	return(this)
}

class d3 scalar d3::threshold(| string scalar x) { 
	this.currentFunction = "threshold"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".threshold(" + x + ")" 
	}
	else {
		this.current = this.getter() + ".threshold()" 
	}
	return(this)
}

class d3 scalar d3::tickFormat(| string scalar count, string scalar format) { 
	this.currentFunction = "tickFormat"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".tickFormat(" + count + ", " + format + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".tickFormat(" + count + ")" 
	}
	else {
		this.current = this.getter() + ".tickFormat()" 
	}
	return(this)
}

class d3 scalar d3::ticks(| string scalar interval, string scalar step) { 
	this.currentFunction = "ticks"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".ticks(" + interval + ", " + step + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".ticks(" + interval + ")" 
	}
	else {
		this.current = this.getter() + ".ticks()" 
	}
	return(this)
}

class d3 scalar d3::time() {
	this.currentFunction = "time"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".time"
	return(this)
}

class d3 scalar d3::iso() {
	this.currentFunction = "iso"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".iso"
	return(this)
}

class d3 scalar d3::month() {
	this.currentFunction = "month"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".month"
	return(this)
}

class d3 scalar d3::week() {
	this.currentFunction = "week"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".week"
	return(this)
}

class d3 scalar d3::year() {
	this.currentFunction = "year"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".year"
	return(this)
}

class d3 scalar d3::day() {
	this.currentFunction = "day"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".day"
	return(this)
}

class d3 scalar d3::hour() {
	this.currentFunction = "hour"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".hour"
	return(this)
}

class d3 scalar d3::minute() {
	this.currentFunction = "minute"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".minute"
	return(this)
}

class d3 scalar d3::second() {
	this.currentFunction = "second"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".second"
	return(this)
}

class d3 scalar d3::friday() {
	this.currentFunction = "friday"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".friday"
	return(this)
}

class d3 scalar d3::saturday() {
	this.currentFunction = "saturday"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".saturday"
	return(this)
}

class d3 scalar d3::sunday() {
	this.currentFunction = "sunday"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".sunday"
	return(this)
}

class d3 scalar d3::monday() {
	this.currentFunction = "monday"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".monday"
	return(this)
}

class d3 scalar d3::tuesday() {
	this.currentFunction = "tuesday"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".tuesday"
	return(this)
}

class d3 scalar d3::wednesday() {
	this.currentFunction = "wednesday"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".wednesday"
	return(this)
}

class d3 scalar d3::thursday() {
	this.currentFunction = "thursday"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".thursday"
	return(this)
}

class d3 scalar d3::ceil(string scalar date) { 
	this.currentFunction = "ceil"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".ceil(" + date + ")" 
	return(this)
}

class d3 scalar d3::copy() { 
	this.currentFunction = "copy"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".copy()" 
	return(this)
}

class d3 scalar d3::dayOfYear(string scalar date) { 
	this.currentFunction = "dayOfYear"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".dayOfYear(" + date + ")" 
	return(this)
}

class d3 scalar d3::days(string scalar start, string scalar stop, | string scalar step) { 
	this.currentFunction = "days"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".days(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.getter() + ".days(" + start + ", " + stop + ")" 
	}
	return(this)
}

class d3 scalar d3::floor(string scalar date) { 
	this.currentFunction = "floor"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".floor(" + date + ")" 
	return(this)
}

class d3 scalar d3::fridayOfYear(string scalar date) { 
	this.currentFunction = "fridayOfYear"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".fridayOfYear(" + date + ")" 
	return(this)
}

class d3 scalar d3::fridays(string scalar start, string scalar stop, | string scalar step) { 
	this.currentFunction = "fridays"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".fridays(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.getter() + ".fridays(" + start + ", " + stop + ")" 
	}
	return(this)
}

class d3 scalar d3::hours(string scalar start, string scalar stop, | string scalar step) { 
	this.currentFunction = "hours"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".hours(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.getter() + ".hours(" + start + ", " + stop + ")" 
	}
	return(this)
}

class d3 scalar d3::interval(string scalar date) { 
	this.currentFunction = "interval"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".interval(" + date + ")" 
	return(this)
}

class d3 scalar d3::minutes(string scalar start, string scalar stop, | string scalar step) { 
	this.currentFunction = "minutes"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".minutes(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.getter() + ".minutes(" + start + ", " + stop + ")" 
	}
	return(this)
}

class d3 scalar d3::mondayOfYear(string scalar date) { 
	this.currentFunction = "mondayOfYear"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".mondayOfYear(" + date + ")" 
	return(this)
}

class d3 scalar d3::mondays(string scalar start, string scalar stop, | string scalar step) { 
	this.currentFunction = "mondays"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".mondays(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.getter() + ".mondays(" + start + ", " + stop + ")" 
	}
	return(this)
}

class d3 scalar d3::months(string scalar start, string scalar stop, | string scalar step) { 
	this.currentFunction = "months"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".months(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.getter() + ".months(" + start + ", " + stop + ")" 
	}
	return(this)
}

class d3 scalar d3::multi(string scalar formats) { 
	this.currentFunction = "multi"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".multi(" + formats + ")" 
	return(this)
}

class d3 scalar d3::offset(| string scalar date, string scalar step) { 
	this.currentFunction = "offset"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".offset(" + date + ", " + step + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".offset(" + date + ")" 
	}
	else {
		this.current = this.getter() + ".offset()" 
	}
	return(this)
}

class d3 scalar d3::parse(string scalar strng) { 
	this.currentFunction = "parse"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".parse(" + strng + ")" 
	return(this)
}

class d3 scalar d3::saturdayOfYear(string scalar date) { 
	this.currentFunction = "saturdayOfYear"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".saturdayOfYear(" + date + ")" 
	return(this)
}

class d3 scalar d3::saturdays(string scalar start, string scalar stop, | string scalar step) { 
	this.currentFunction = "saturdays"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".saturdays(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.getter() + ".saturdays(" + start + ", " + stop + ")" 
	}
	return(this)
}

class d3 scalar d3::seconds(string scalar start, string scalar stop, | string scalar step) { 
	this.currentFunction = "seconds"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".seconds(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.getter() + ".seconds(" + start + ", " + stop + ")" 
	}
	return(this)
}

class d3 scalar d3::sundayOfYear(string scalar date) { 
	this.currentFunction = "sundayOfYear"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".sundayOfYear(" + date + ")" 
	return(this)
}

class d3 scalar d3::sundays(string scalar start, string scalar stop, | string scalar step) { 
	this.currentFunction = "sundays"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".sundays(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.getter() + ".sundays(" + start + ", " + stop + ")" 
	}
	return(this)
}

class d3 scalar d3::thursdayOfYear(string scalar date) { 
	this.currentFunction = "thursdayOfYear"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".thursdayOfYear(" + date + ")" 
	return(this)
}

class d3 scalar d3::thursdays(string scalar start, string scalar stop, | string scalar step) { 
	this.currentFunction = "thursdays"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".thursdays(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.getter() + ".thursdays(" + start + ", " + stop + ")" 
	}
	return(this)
}

class d3 scalar d3::tuesdayOfYear(string scalar date) { 
	this.currentFunction = "tuesdayOfYear"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".tuesdayOfYear(" + date + ")" 
	return(this)
}

class d3 scalar d3::tuesdays(string scalar start, string scalar stop, | string scalar step) { 
	this.currentFunction = "tuesdays"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".tuesdays(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.getter() + ".tuesdays(" + start + ", " + stop + ")" 
	}
	return(this)
}

class d3 scalar d3::utc(| string scalar specifier) { 
	this.currentFunction = "utc"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".utc(" + specifier + ")" 
	}
	else {
		this.current = this.getter() + ".utc()" 
	}
	return(this)
}

class d3 scalar d3::wednesdayOfYear(string scalar date) { 
	this.currentFunction = "wednesdayOfYear"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".wednesdayOfYear(" + date + ")" 
	return(this)
}

class d3 scalar d3::wednesdays(string scalar start, string scalar stop, | string scalar step) { 
	this.currentFunction = "wednesdays"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".wednesdays(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.getter() + ".wednesdays(" + start + ", " + stop + ")" 
	}
	return(this)
}

class d3 scalar d3::weekOfYear(string scalar date) { 
	this.currentFunction = "weekOfYear"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	this.current = this.getter() + ".weekOfYear(" + date + ")" 
	return(this)
}

class d3 scalar d3::weeks(string scalar start, string scalar stop, | string scalar step) { 
	this.currentFunction = "weeks"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".weeks(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.getter() + ".weeks(" + start + ", " + stop + ")" 
	}
	return(this)
}

class d3 scalar d3::years(string scalar start, string scalar stop, | string scalar step) { 
	this.currentFunction = "years"
	this.lastFunction = getLastFunction
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".years(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.getter() + ".years(" + start + ", " + stop + ")" 
	}
	return(this)
}

end 


