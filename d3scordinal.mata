mata: 

class d3ordinal { 
    private   string  scalar    ordinal
    void                        new(), destroy(), init()
    public    string  scalar    get()
    public    string  scalar    complete() 
	void						ordinal()
    void                        copy() 
    void                        domain() 
    void                        range() 
    void                        rangeBand() 
    void                        rangeBands() 
    void                        rangeExtent() 
    void                        rangePoints() 
    void                        rangeRoundBands() 
    void                        rangeRoundPoints() 
}

string scalar d3ordinal::get() { 
    return(this.ordinal)
}

string scalar d3ordinal::complete() { 
    string scalar ordinalObject 
    ordinalObject = this.get() + ";"
    return(ordinalObject)
}

void d3ordinal::init(string scalar vnm, | string scalar arguments) {
	if (arguments != "") {
		this.ordinal = "var " + vnm + " = " + arguments
	}
	else {
		this.ordinal = vnm
	}	
}

void d3ordinal::new() {
}

void d3ordinal::destroy() {
}

void d3ordinal::ordinal(string scalar x) { 
	this.ordinal = this.get() + ".ordinal(" + x + ")"
}


void d3ordinal::copy() { 
	this.ordinal = this.get() + ".copy()"
}


void d3ordinal::domain(| string scalar numbers) { 
	if (numbers != "") {
		this.ordinal = this.get() + ".domain(" + numbers + ")"
	}
	else {
		this.ordinal = this.get() + ".domain()"
	}
}


void d3ordinal::range(| string scalar values) { 
	if (values != "") {
		this.ordinal = this.get() + ".range(" + values + ")"
	}
	else {
		this.ordinal = this.get() + ".range()"
	}
}


void d3ordinal::rangeBand() { 
	this.ordinal = this.get() + ".rangeBand()"
}

void d3ordinal::rangeBands(string scalar interval, | string scalar padding, ///   
								string scalar outerPadding) {
	if (padding != "" & outerPadding != "") {
		this.ordinal = this.get() + ".rangeBands(" + interval + ", " + padding + ", " + outerPadding + ")"
	}
	else if (padding != "" & outerPadding == "") {
		this.ordinal = this.get() + ".rangeBands(" + interval + ", " + padding + ")"
	}
	else {
		this.ordinal = this.get() + ".rangeBands(" + interval + ")"
	}
}

void d3ordinal::rangeExtent() { 
	this.ordinal = this.get() + ".rangeExtent()"
}

void d3ordinal::rangePoints(string scalar interval, | string scalar padding) { 
	if (padding != "") {
		this.ordinal = this.get() + ".rangePoints(" + interval + ", " + padding + ")"	
	}
	else {
		this.ordinal = this.get() + ".rangePoints(" + interval + ")"	
	}
}	

void d3ordinal::rangeRoundBands(string scalar interval, | string scalar padding, ///   
								string scalar outerPadding) {
	if (padding != "" & outerPadding != "") {
		this.ordinal = this.get() + ".rangeRoundBands(" + interval + ", " +  ///   
											padding + ", " + outerPadding + ")"
	}
	else if (padding != "" & outerPadding == "") {
		this.ordinal = this.get() + ".rangeRoundBands(" + interval + ", " + padding + ")"
	}
	else {
		this.ordinal = this.get() + ".rangeRoundBands(" + interval + ")"
	}
}
	

void d3ordinal::rangeRoundPoints(string scalar interval, | string scalar padding) { 
	if (padding != "") {
		this.ordinal = this.get() + ".rangeRoundPoints(" + interval + ", " + padding + ")"	
	}
	else {
		this.ordinal = this.get() + ".rangeRoundPoints(" + interval + ")"	
	}
}

end


