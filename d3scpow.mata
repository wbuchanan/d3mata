mata: 

class d3pow { 
    private   string  scalar    pow
    void                        new(), destroy(), init()
    private   string  scalar    get()
    public    string  scalar    complete() 
	void						pow()
    void                        clamp() 
    void                        copy() 
    void                        domain() 
    void                        exponent() 
    void                        interpolate() 
    void                        invert() 
    void                        nice() 
    void                        range() 
    void                        rangeRound() 
    void                        tickFormat() 
    void                        ticks() 
}

string scalar d3pow::get() { 
    return(this.pow)
}

string scalar d3pow::complete() { 
    string scalar powObject 
    powObject = this.get() + ";"
    return(powObject)
}

void d3pow::init(string scalar vnm, string scalar arguments) { 
	this.pow = "var " + vnm + " = " + arguments
}

void d3pow::new() {
}

void d3pow::destroy() {
}

void d3pow::pow(string scalar x) { 
	this.pow = this.get() + ".pow(" + x + ")"
}


void d3pow::clamp(| string scalar bool) { 
	if (bool == "true" | bool == "false") {
		this.pow = this.get() + ".clamp(" + bool + ")"
	}
	else {
		this.pow = this.get() + ".clamp()"
	}
}


void d3pow::copy() { 
	this.pow = this.get() + ".copy()"
}


void d3pow::domain(| string scalar numbers) { 
	if (numbers != "") {
		this.pow = this.get() + ".domain(" + numbers + ")"
	}
	else {
		this.pow = this.get() + ".domain()"
	}
}


void d3pow::exponent(string scalar k) { 
	if (k != "") {
		this.pow = this.get() + ".exponent(" + k + ")"
	}
	else {
		this.pow = this.get() + ".exponent()"
	}
}


void d3pow::interpolate(| string scalar factory) { 
	if (factory != "") {
		this.pow = this.get() + ".interpolate(" + factory + ")"
	}
	else {
		this.pow = this.get() + ".interpolate()"
	}
}


void d3pow::invert(string scalar y) { 
	this.pow = this.get() + ".invert(" + y + ")"
}


void d3pow::nice(string scalar m) { 
	if (m != "") {
		this.pow = this.get() + ".nice(" + m + ")"
	}
	else {
		this.pow = this.get() + ".nice()"
	}
}


void d3pow::range(| string scalar values) { 
	if (values != "") {
		this.pow = this.get() + ".range(" + values + ")"
	}
	else {
		this.pow = this.get() + ".range()"
	}
}


void d3pow::rangeRound(string scalar values) { 
	this.pow = this.get() + ".rangeRound(" + values + ")"
}


void d3pow::tickFormat(| string scalar count, string scalar format) { 
	if (count != "" & format != "") {
		this.pow = this.get() + ".tickFormat(" + count + ", " + format + ")"
	}
	else if (count != "" & format == "") {
		this.pow = this.get() + ".tickFormat(" + count + ")"
	}
	else {
		this.pow = this.get() + ".tickFormat()"
	}
}	
	
	
void d3pow::ticks(string scalar count) { 
	if (count != "") {
		this.pow = this.get() + ".ticks(" + count + ")"
	}
	else {
		this.pow = this.get() + ".ticks()"
	}
}


end


