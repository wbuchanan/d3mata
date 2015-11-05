mata: 

class d3log { 
    private   string  scalar    log
    void                        new(), destroy(), init()
    public    string  scalar    get()
    public    string  scalar    complete() 
	void						log()
    void                        clamp() 
    void                        copy() 
    void                        domain() 
    void                        interpolate() 
    void                        invert() 
    void                        nice() 
    void                        range() 
    void                        rangeRound() 
    void                        tickFormat() 
    void                        ticks() 
}


string scalar d3log::get() { 
    return(this.log)
}


string scalar d3log::complete() { 
    string scalar logObject 
    logObject = this.get() + ";"
    return(logObject)
}


void d3log::init(string scalar vnm, | string scalar arguments) {
	if (arguments != "") {
		this.log = "var " + vnm + " = " + arguments
	}
	else {
		this.log = vnm
	}	
}


void d3log::new() {
}


void d3log::destroy() {
}

void d3log::log(string scalar x) { 
	this.log = this.get() + ".log(" + x + ")"
}

void d3log::clamp(| string scalar bool) { 
	if (bool == "true" | bool == "false") {
		this.log = this.get() + ".clamp(" + bool + ")"
	}
	else {
		this.log = this.get() + ".clamp()"
	}
}


void d3log::copy() { 
	this.log = this.get() + ".copy()"
}


void d3log::domain(| string scalar numbers) { 
	if (numbers != "") {
		this.log = this.get() + ".domain(" + numbers + ")"
	}
	else {
		this.log = this.get() + ".domain()"
	}
}


void d3log::interpolate(| string scalar factory) { 
	if (factory != "") {
		this.log = this.get() + ".interpolate(" + factory + ")"
	}
	else {
		this.log = this.get() + ".interpolate()"
	}
}


void d3log::invert(string scalar y) { 
	this.log = this.get() + ".invert(" + y + ")"
}


void d3log::nice(string scalar m) { 
	if (m != "") {
		this.log = this.get() + ".nice(" + m + ")"
	}
	else {
		this.log = this.get() + ".nice()"
	}
}


void d3log::range(| string scalar values) { 
	if (values != "") {
		this.log = this.get() + ".range(" + values + ")"
	}
	else {
		this.log = this.get() + ".range()"
	}
}


void d3log::rangeRound(string scalar values) { 
	this.log = this.get() + ".rangeRound(" + values + ")"
}


void d3log::tickFormat(| string scalar count, string scalar format) { 
	if (count != "" & format != "") {
		this.log = this.get() + ".tickFormat(" + count + ", " + format + ")"
	}
	else if (count != "" & format == "") {
		this.log = this.get() + ".tickFormat(" + count + ")"
	}
	else {
		this.log = this.get() + ".tickFormat()"
	}
}	
	
	
void d3log::ticks(string scalar count) { 
	if (count != "") {
		this.log = this.get() + ".ticks(" + count + ")"
	}
	else {
		this.log = this.get() + ".ticks()"
	}
}


end


