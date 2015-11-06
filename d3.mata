mata:

class d3 {

	private:		
	string 					scalar 	d3, varname
	
	public:
	string 					scalar	get(), getVarnm()
	void							new(), destroy(), init()
	string					scalar  complete()	
	
	/* Selection Methods/Class Constructors */
	class	d3selection		scalar	select(), selectAll()
	void							event(), mouse(), touch(), touches(), selection()

	/* Transition Methods/Class Constructors */
	class	d3transition 	scalar	transition()
	
	/* Easing */
	void							ease()
	
	/* Timers */
	void							timer(), timer_flush()
	
	/** Interpolation **/
	void 							interpolate(), interpolateNumber(), 
									interpolateRound(), interpolateString(), 
									interpolateRgb(),interpolateHsl(), 
									interpolateLab(), interpolateHcl(), 
									interpolateArray(), interpolateObject(), 
									interpolateTransform(), interpolateZoom(), 
									interpolators()
	/* Working With Arrays */
	/** Ordering **/
	void							ascending(), descending(), min(), max(),
									extent(), sum(), mean(), median(), quantile(),
									variance(), deviation(), bisectLeft(), 
									bisect(), bisectRight(), bisector(), shuffle()
	
	/** Associative Arrays **/
	void							keys(), values(), entries()
	
	/* Map Object */
	class	d3map 			scalar	map()
	
	/* Set Object */
	class	d3set 			scalar	set()
	
	/* Array Operators */
	void							merge(), range(), permute(), zip(), 
									transpose(), pairs()
	
	/* Nest Object */
	class	d3nest 			scalar	nest()
	
	/* Pseudorandom Number Generation */
	class	d3math			scalar	random()
	
	/* 2D Transforms */
	class	d3transform		scalar	transform()
	
	/* Loading External Resources */
	/** XHR Object **/
	class	d3xhr			scalar	xhr()
		
	/** Text Data Object **/
	string					scalar	text()
	
	/** JSON Data Object **/
	string					scalar	json()
	
	/** XML Data Object **/
	string					scalar	xml()
	
	/** HTML Data Object **/
	string					scalar	html()
	
	/** CSV Data Object **/
	class	d3csv			scalar	csv()
	
	/** TSV Data Object **/
	class	d3tsv			scalar	tsv()
	
	/** DSV Data Object **/
	class	d3dsv			scalar	dsv()
	
	/* Formatting */
	/** Numbers **/
	string					scalar	format(), formatPrefix(), round()

	/* Strings */
	string					scalar	requote() 

	class	d3locale		scalar	locale()

	/* Color Objects */
	class	d3rgb			scalar	rgb()
	class	d3hcl			scalar	hcl()
	class	d3hsl			scalar	hsl()
	class	d3lab			scalar	lab()
	
	/* Behavior Object */
	class 	d3behavior		scalar	behavior()
	
	/* Internals */
	void							rebind(), ns_qualify() 
	
	string 					scalar 	ns_prefix(), functor()
	
	/* Dispatch */
	class	d3dispatch		scalar	dispatch()
	
	/* Geography */
	class	d3geo			scalar	geo()
	
	/* Geometry */
	class	d3geom			scalar	geom()

	/* Layouts */
	class	d3layout		scalar	layout()
	
	/* Time */
	class	d3time			scalar	time()
	
	/* SVG */
	class	d3svg			scalar	svg()
	
	/* Scales */
	class	d3scale			scalar	scale()
								
}


class d3geo scalar d3::geo(string scalar varnm, | string scalar arguments) {
	class d3geo scalar geo
	geo = d3geo()
	geo.init(this.getVarnm() + ".geo")
	return(geo)
}


class d3geom scalar d3::geom(string scalar varnm, | string scalar arguments) {
	class d3geom scalar geom
	geom = d3geom()
	geom.init(this.getVarnm() + ".geom")
	return(geom)
}


class d3layout scalar d3::layout(string scalar varnm, | string scalar arguments) {
	class d3layout scalar layout
	layout = d3layout()
	layout.init(varnm, this.getVarnm() + ".layout")
	return(layout)
}


class d3time scalar d3::time(string scalar varnm, | string scalar arguments) {
	class d3time scalar time
	time = d3time()
	time.init(varnm, this.getVarnm() + ".time")
	return(time)
}


class d3svg scalar d3::svg(string scalar varnm, | string scalar arguments) {
	class d3svg scalar svg
	svg = d3svg()
	svg.init(varnm, this.getVarnm() + ".svg")
	return(svg)
}


class d3scale scalar d3::scale(string scalar varnm, | string scalar arguments) {
	class d3scale scalar scale
	scale = d3scale()
	scale.init(varnm, this.getVarnm() + ".scale")
	return(scale)
}


void d3::new() {
}

void d3::destroy() {
}

string scalar d3::get() {
	return(this.d3)
}

string scalar d3::getVarnm() {
	return(this.varname)
}

void d3::init(string scalar varnm) {
	this.d3 = "var " + varnm + " = d3"
	this.varname = varnm
}

string scalar d3::complete() {
	string scalar object
	object = this.get() + ";"
	return(object)
}

void d3::event() {
	this.d3 = this.get() + ".event" 
}


void d3::mouse(string scalar container) {
	this.d3 = this.get() + ".mouse(" + container + ")" 
}


void d3::touch(string scalar container, | string scalar touches, string scalar identifier) {
	if (touches != "" & identifier != "") {
		this.d3 = this.get() + ".touch(" + container + ", " + touches + ", " + identifier + ")"
	}
	else if (touches != "" & identifier == "") {
		this.d3 = this.get() + ".touch(" + container + ", " + touches + ")"
	}
	else {
		this.d3 = this.get() + ".touch(" + container + ")"
	}
}


void d3::touches(string scalar container, | string scalar touches) {
	if (touches != "") {
		this.d3 = this.get() + ".touches(" + container + ", " + touches + ")" 
	}
	else {
		this.d3 = this.get() + ".touches(" + container + ")" 
	}
}


// Constructs a selection object
class d3selection scalar d3::select(string scalar node) {
	class d3selection scalar selected
	selected = d3selection()
	selected.init(this.get() + ".select(" + node + ")")
	return(selected)
}


// Constructs a selection object
class d3selection scalar d3::selectAll(string scalar selector) {
	class d3selection scalar selected
	selected = d3selection()
	selected.init(this.get() + ".selectAll(" + selector + ")")
	return(selected)
}


void d3::selection() {
	this.d3= this.get() + ".selection()" 
}



/* Transitions */		  

// Method used to call class constructor
class d3transition scalar d3::transition(string scalar varnm, 				 ///   
								string scalar selection, | string scalar name) {
	class d3transition scalar transit
	transit = d3transition()
	string scalar Transition
	if (name != "") {
		Transition = this.get() + ".transition(" + selection + ", " + name + ")"
	}
	else {
		Transition = this.get() + ".transition(" + selection + ")" 
	}
	transit.init(varnm, Transition)
	return(transit)
}


/** Easing **/
void d3::ease(string scalar type, | string scalar arguments) {
	if ((type != "linear" & type != "quad" & type != "cubic" & 			 ///   
	type != "sin" & type != "exp" & type != "circle" & type != "bounce") ///   
	& ((strmatch(type, "poly*") != 1) & (strmatch(type, "elastic*") != 1) ///   
	& (strmatch(type, "back*") != 1))) {
		this.d3 = this.get()
	}
	else {
		if (arguments != "") {
			this.d3 = this.get() + ".ease(" + type + ", " + arguments + ")"
		} 
		else {
			this.d3 = this.get() + ".ease(" + type + ")"
		}
	}
}



/** Timers **/
void d3::timer(string scalar func, | string scalar delay, string scalar time) {
	if (delay != "" & time != "") {
		this.d3 = this.get() + ".timer(" + func + ", " + delay + ", " + time + ")" 
	}
	else if (delay != "" & time == "") {
		this.d3 = this.get() + ".timer(" + func + ", " + delay + ")" 
	}
	else {
		this.d3 = this.get() + ".timer(" + func + ")" 
	}
}


void d3::timer_flush() {
	this.d3 = this.get() + ".timer.flush()" 
}


/** Interpolation **/
void d3::interpolate(string scalar a, string scalar b) {
	this.d3 = this.get() + ".interpolate(" + a + ", " + b + ")" 
}


void d3::interpolateNumber(string scalar a, string scalar b) {
	this.d3 = this.get() + ".interpolateNumber(" + a + ", " + b + ")"  
}


void d3::interpolateRound(string scalar a, string scalar b) {
	this.d3 = this.get() + ".interpolateRound(" + a + ", " + b + ")" 
}


void d3::interpolateString(string scalar a, string scalar b) {
	this.d3 = this.get() + ".interpolateString(" + a + ", " + b + ")" 
}


void d3::interpolateRgb(string scalar a, string scalar b) {
	this.d3 = this.get() + ".interpolateRgb(" + a + ", " + b + ")" 
}


void d3::interpolateHsl(string scalar a, string scalar b) {
	this.d3 = this.get() + ".interpolateHsl(" + a + ", " + b + ")"  
}


void d3::interpolateLab(string scalar a, string scalar b) {
	this.d3 = this.get() + ".interpolateLab(" + a + ", " + b + ")"  
}


void d3::interpolateHcl(string scalar a, string scalar b) {
	this.d3 = this.get() + ".interpolateHcl(" + a + ", " + b + ")" 
}


void d3::interpolateArray(string scalar a, string scalar b) {
	this.d3 = this.get() + ".interpolatearay(" + a + ", " + b + ")"  
}


void d3::interpolateObject(string scalar a, string scalar b) {
	this.d3 = this.get() + ".interpolateObject(" + a + ", " + b + ")"  
}


void d3::interpolateTransform(string scalar a, string scalar b) {
	this.d3 = this.get() + ".interpolateTransform(" + a + ", " + b + ")"  
}


void d3::interpolateZoom(string scalar a, string scalar b) {
	this.d3 = this.get() + ".interpolateZoom(" + a + ", " + b + ")" 
}


void d3::interpolators() {
	this.d3 = this.get() + ".interpolators" 
}


/* Arrays */
/** Ordering **/
void d3::ascending(string scalar a, string scalar b) {
	this.d3 = this.get() + ".ascending(" + a + ", " + b + ")" 
}


void d3::descending(string scalar a, string scalar b) {
	this.d3 = this.get() + ".descending(" + a + ", " + b + ")"
}


void d3::min(string scalar aray, | string scalar accessor) {
	if (accessor != "") {
		this.d3 = this.get() + ".min(" + aray + ", " + accessor + ")" 
	}
	else {
		this.d3 = this.get() + ".min(" + aray + ")" 
	}
}


void d3::max(string scalar aray, | string scalar accessor) {
	if (accessor != "") {
		this.d3 = this.get() + ".max(" + aray + ", " + accessor + ")" 
	}
	else {
		this.d3 = this.get() + ".max(" + aray + ")" 
	}
}


void d3::extent(string scalar aray, | string scalar accessor) {
	if (accessor != "") {
		this.d3 = this.get() + ".extent(" + aray + ", " + accessor + ")" 
	}
	else {
		this.d3 = this.get() + ".extent(" + aray + ")" 
	}
}


void d3::sum(string scalar aray, | string scalar accessor) {
	if (accessor != "") {
		this.d3 = this.get() + ".sum(" + aray + ", " + accessor + ")" 
	}
	else {
		this.d3 = this.get() + ".sum(" + aray + ")" 
	}
}



void d3::mean(string scalar aray, | string scalar accessor) {
	if (accessor != "") {
		this.d3 = this.get() + ".mean(" + aray + ", " + accessor + ")" 
	}
	else {
		this.d3 = this.get() + ".mean(" + aray + ")" 
	}
}



void d3::median(string scalar aray, | string scalar accessor) {
	if (accessor != "") {
		this.d3 = this.get() + ".median(" + aray + ", " + accessor + ")" 
	}
	else {
		this.d3 = this.get() + ".median(" + aray + ")" 
	}
}


void d3::quantile(string scalar numbers, string scalar p) {
	this.d3 = this.get() + ".quantile(" + numbers + ", " + p + ")" 
}


void d3::variance(string scalar aray, | string scalar accessor) {
	if (accessor != "") {
		this.d3 = this.get() + ".variance(" + aray + ", " + accessor + ")" 
	}
	else {
		this.d3 = this.get() + ".variance(" + aray + ")" 
	}
}


void d3::deviation(string scalar aray, | string scalar accessor) {
	if (accessor != "") { 
		this.d3 = this.get() + ".deviation(" + aray + ", " + accessor + ")" 
	}
	else {
		this.d3 = this.get() + ".deviation(" + aray + ")"
	}
}


void d3::bisectLeft(string scalar aray, string scalar x, |			 ///   
							 string scalar lo, string scalar hi) {
	if (lo != "" & hi == "") {
		this.d3 = this.get() + ".bisectLeft(" + aray + ", " + x + ", " + lo + ")"
	}
	else if (lo != "" & hi != "") {
		this.d3 = this.get() + ".bisectLeft(" + aray + ", " + x + ", " + lo + ", " + hi + ")"
	}
	else {
		this.d3 = this.get() + ".bisectLeft(" + aray + ", " + x + ")"
	}
}


void d3::bisect(string scalar aray, string scalar x, |				 ///   
						 string scalar lo, string scalar hi) {
	if (lo != "" & hi == "") {
		this.d3 = this.get() + ".bisect(" + aray + ", " + x + ", " + lo + ")"
	}
	else if (lo != "" & hi != "") {
		this.d3 = this.get() + ".bisect(" + aray + ", " + x + ", " + lo + ", " + hi + ")"
	}
	else {
		this.d3 = this.get() + ".bisect(" + aray + ", " + x + ")"
	}
}


void d3::bisectRight(string scalar aray, string scalar x, |		 ///   
							 string scalar lo, string scalar hi) {
	if (lo != "" & hi == "") {
		this.d3 = this.get() + ".bisectRight(" + aray + ", " + x + ", " + lo + ")"
	}
	else if (lo != "" & hi != "") {
		this.d3 = this.get() + ".bisectRight(" + aray + ", " + x + ", " + lo + ", " + hi + ")"
	}
	else {
		this.d3 = this.get() + ".bisectRight(" + aray + ", " + x + ")"
	}
}



void d3::bisector(string scalar accomp) {
	this.d3 = this.get() + ".bisector(" + accomp + ")" 
}


void d3::shuffle(string scalar aray, | string scalar lo, string scalar hi) {
	if (lo != "" & hi != "") {
		this.d3 = this.get() + ".shuffle(" + aray + ", " + lo + ", " + hi + ")" 
	}
	else if (lo != "" & hi == "") {
		this.d3 = this.get() + ".shuffle(" + aray + ", " + lo + ")" 
	}
	else {
		this.d3 = this.get() + ".shuffle(" + aray + ")" 
	}
}


/** Associative Arrays **/
void d3::keys(string scalar object) {
	this.d3 = this.get() + ".keys(" + object + ")" 
}


void d3::values(string scalar object) {
	this.d3 = this.get() + ".values(" + object + ")" 
}


void d3::entries(string scalar object) {
	this.d3 = this.get() + ".entries(" + object + ")"
}

/* Map Object */
class d3map scalar d3::map(string scalar vnm, | string scalar object, string scalar key) {
	class d3map scalar mapob
	mapob = d3map()
	string scalar mapargs
	if (object != "" & key != "") {
		mapargs = this.getVarnm() + ".map(" + object + ", " + key + ")"
	}
	else {
		mapargs = this.getVarnm() + ".map()"
	}
	mapob.init(vnm, mapargs)
	return(mapob)
}
							 
/* Set Object */
class d3set scalar d3::set(string scalar vnm, | string scalar aray) {
	class d3set scalar setob
	setob = d3set()
	string scalar setargs
	if (aray != "") {
		setargs = this.getVarnm() + ".set(" + aray + ")"
	}
	else {
		setargs = this.getVarnm() + ".set()"
	}
	setob.init(vnm, setargs)
	return(setob)
}
							 

/* Array Operators */
void d3::merge(string scalar arays) {
	this.d3 = this.get() + ".merge(" + arays + ")" 
}


void d3::range(string scalar stop, | string scalar start, string scalar step) {
	if (start == "") {
		start = "0"
	}
	if (step == "") {
		step = "1"
	}
	this.d3 = this.get() + ".range(" + start + ", " + stop + ", " + step + ")" 
}


void d3::permute(string scalar aray, string scalar indexes) {
	this.d3 = this.get() + ".permute(" + aray + ", " + indexes + ")" 
}


void d3::zip(string scalar arays) {
	this.d3 = this.get() + ".zip(" + arays + ")" 
}


void d3::transpose(string scalar mtrix) {
	this.d3 = this.get() + ".transpose(" + mtrix + ")" 
}


void d3::pairs(string scalar aray) {
	this.d3 = this.get() + ".pairs(" + aray + ")" 
}

/* Nest Object */
class d3nest scalar d3::nest(string scalar vnm) {
	class d3nest scalar nestob
	nestob = d3nest()
	nestob.init(vnm, this.getVarnm() + ".nest()")
	return(nestob)
}
							 
							 
/* Math Object */
class d3math scalar d3::random(string scalar vnm) {
	class d3math scalar mathob
	mathob = d3math()
	mathob.init(vnm, this.getVarnm())
	return(mathob)
}
							 

/* Transform Object */
class d3transform scalar d3::transform(string scalar vnm, string scalar trnstring) {
	class d3transform scalar trnsob
	trnsob = d3transform()
	trnsob.init(vnm, this.getVarnm() + ".transform(" + trnstring + ")")
	return(trnsob)
}
							 

/* XHR Object */
class d3xhr scalar d3::xhr(string scalar varnm, string scalar url, | 		 ///   
						   string scalar mimeType, string scalar callback) {
	class d3xhr scalar xhr
	xhr = d3xhr()
	string scalar arguments
	if (mimeType != "" & callback != "") {
		arguments = this.get() + ".xhr(" + url + ", " + mimeType + ", " + callback + ")" 
	}
	else if (mimeType != "" & callback == "") {
		arguments = this.get() + ".xhr(" + url + ", " + mimeType + ")"		
	}
	else {
		arguments = this.get() + ".xhr(" + url + ")"		
	}
	xhr.init(varnm, arguments)
	return(xhr)
}

/* Text Object */
string scalar d3::text(string scalar url, | string scalar mimeType,			 ///   
					   string scalar callback) {
        string scalar Text
		
		if (mimeType != "" & callback != "") {
			Text = this.get() + ".text(" + url + ", " + mimeType + ", " + callback + ")" 
		}
		else if (mimeType != "" & callback == "") {
			Text = this.get() + ".text(" + url + ", " + mimeType + ")"		
		}
		else {
			Text = this.get() + ".text(" + url + ")"		
		}
		return(Text)
}


/* JSON Object */
string scalar d3::json(string scalar url, | string scalar callback) {
        string scalar Json
		if (callback != "") {
			Json = this.get() + ".json(" + url + ", " + callback + ")" 
		}
		else {
			Json = this.get() + ".json(" + url + ")"		
		}
        return(Json)
}


/* XML Object */
string scalar d3::xml(string scalar url, | string scalar mimeType,			 ///   
					   string scalar callback) {
        string scalar Xml
		if (mimeType != "" & callback != "") {
			Xml = this.get() + ".xml(" + url + ", " + mimeType + ", " + callback + ")" 
		}
		else if (mimeType != "" & callback == "") {
			Xml = this.get() + ".xml(" + url + ", " + mimeType + ")"		
		}
		else {
			Xml = this.get() + ".xml(" + url + ")"		
		}
		return(Xml)
}


/* HTML Object */
string scalar d3::html(string scalar url, | string scalar callback) {
        string scalar Html
		if (callback != "") {
			Html = this.get() + ".html(" + url + ", " + callback + ")" 
		}
		else {
			Html = this.get() + ".html(" + url + ")"		
		}
        return(Html)
}



/* CSV Object */
class d3csv scalar d3::csv(string scalar varnm, string scalar url, | string scalar accessor, 
					  string scalar callback) {
	class d3csv scalar c
	c = d3csv()
	string scalar Csv
	if (accessor != "" & callback != "") {
		Csv = this.getVarnm() + ".csv(" + url + ", " + accessor + ", " + callback + ")" 
	}
	else if (accessor != "" & callback == "") {
		Csv = this.getVarnm() + ".csv(" + url + ", " + accessor + ")"		
	}
	else {
		Csv = this.getVarnm() + ".csv(" + url + ")"		
	}
	c.init(varnm, Csv)
	return(c)
}


/* TSV Object */							 
class d3tsv scalar d3::tsv(string scalar varnm, string scalar url, | string scalar accessor, 
					  string scalar callback) {
	class d3tsv scalar c
	c = d3tsv()
	string scalar tsv
	if (accessor != "" & callback != "") {
		tsv = this.getVarnm() + ".tsv(" + url + ", " + accessor + ", " + callback + ")" 
	}
	else if (accessor != "" & callback == "") {
		tsv = this.getVarnm() + ".tsv(" + url + ", " + accessor + ")"		
	}
	else {
		tsv = this.getVarnm() + ".tsv(" + url + ")"		
	}
	c.init(varnm, tsv)
	return(c)
}							 

							 
/* DSV Object */							 
class d3dsv scalar d3::dsv(string scalar varnm, string scalar delim, 		 ///   
						   string scalar mimeType, string scalar url, |		 ///   
						   string scalar accessor, string scalar callback) {
	class d3dsv scalar d
	d = d3dsv()
	string scalar dinit
	dinit = ".dsv(" + delim + ", " + mimeType + ")"
	d.init(varnm, dinit)
	if (accessor != "" & callback != "") {
		d.dsv(url, accessor, callback)
	}
	else if (accessor != "" & callback == "") {
		d.dsv(url, accessor)
	}
	else {
		d.dsv(url)
	}
	return(d)
}						 

							 

/** Numbers **/							 
string scalar d3::format(string scalar varnm, string scalar specifier) {
	this.d3 = "var " + varnm + " = " + this.getVarnm() + ".format(" + specifier + ")" 
}


string scalar d3::formatPrefix(string scalar varnm, string scalar value, | string scalar precision) {
	if (precision != "") {
		return("var " + varnm + " = " + this.getVarnm() + ".formatPrefix(" + value + ", " + precision + ")") 
	}
	else {
		return(this.d3 = "var " + varnm + " = " + this.getVarnm() + ".formatPrefix(" + value + ")")
	}
}


string scalar d3::round(string scalar x, | string scalar n) {
	if (n != "") {
		return(this.getVarnm() + ".round(" + x + ", " + n + ")")
	}
	else {
		return(this.getVarnm() + ".round(" + x + ")")
	}
}

/** Strings **/
string scalar d3::requote(string scalar strng) {
	return(this.getVarnm() + ".requote(" + strng + ")")
}

/* Localization */
class d3locale scalar d3::locale(string scalar varnm, string scalar definition) {
	class d3locale scalar locl
	locl = d3locale()
	locl.init(varnm, definition)
	return(locl)
}


/* Colors */	
class d3rgb scalar d3::rgb(	string scalar varnm, string scalar r, | 		 ///   
							string scalar g, string scalar b) {
	class d3rgb scalar rg
	rg = d3rgb()
	string scalar Rgb
	if (r != "" & g != "" & b != "") {
		Rgb = this.getVarnm() + ".rgb(" + r + ", " + g + ", " + b + ")" 		
	}
	else {	
		Rgb = this.getVarnm() + ".rgb(" + r + ")" 
	} 
	rg.init(varnm, Rgb)
	return(rg)
}


class d3hsl scalar d3::hsl(	string scalar varnm, string scalar h, | 		 ///   
							string scalar s, string scalar l) {
	class d3hsl scalar hs
	hs = d3hsl()
	string scalar Hsl
	if (h != "" & s != "" & l != "") {	
		Hsl = this.getVarnm() + ".hsl(" + h + ", " + s + ", " + l + ")" 		
	}
	else {	
		Hsl = this.getVarnm() + ".hsl(" + h + ")" 
	} 
	hs.init(varnm, Hsl)
	return(hs)
}


class d3hcl scalar d3::hcl(	string scalar varnm, string scalar h, | 		 ///   
							string scalar c, string scalar l) {
	class d3hcl scalar hc
	hc = d3hcl()
	string scalar Hcl
	if (h != "" & c != "" & l != "") {	
		Hcl = this.get() + ".hcl(" + h + ", " + c + ", " + l + ")" 		
	}
	else {	
		Hcl = this.get() + ".hcl(" + h + ")" 
	} 
	hc.init(varnm, Hcl)
	return(hc)
}


class d3lab scalar d3::lab(	string scalar varnm, string scalar l, | 		 ///   
							string scalar a, string scalar b) {
	class d3lab scalar lb
	lb = d3lab()
	string scalar Lab
	if (l != "" & a != "" & b != "") {	
		Lab = this.getVarnm() + ".lab(" + l + ", " + a + ", " + b + ")" 		
	}
	else {	
		Lab = this.getVarnm() + ".lab(" + l + ")" 
	} 
	lb.init(varnm, Lab)
	return(lb)
}
							 
class d3behavior scalar d3::behavior(string scalar varnm) {
	class d3behavior scalar behave
	behave = d3behavior()
	behave.init(varnm, this.getVarnm() + ".behavior")
	return(behave)
}

string scalar d3::functor(string scalar value) {
	return(this.getVarnm() + ".functor(" + value + ")")
}


string scalar d3::ns_prefix() {
	return(this.getVarnm() + ".ns.prefix")
}


void d3::ns_qualify(string scalar name) {
	this.d3 = this.getVarnm() + ".ns.qualify(" + name + ");" + this.d3
}


void d3::rebind(string scalar target, string scalar source, string scalar names) {
	this.d3 = this.get() + ".rebind(" + target + ", " + source + ", " + names + ")" 
}

class d3dispatch scalar d3::dispatch(string scalar varnm, string scalar types) {
	class d3dispatch dispat
	dispat = d3dispatch()
	dispat.init(varnm, this.getVarnm() + ".dispatch(" + types + ")")
	return(dispat)
}


end

