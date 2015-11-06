mata: 

class d3lhistogram { 
	private:
	string				scalar	histogram
	
	public:
	void						new(), destroy(), init(), histogram(), bins(),
								frequency(), range(), value()
	string				scalar	get(), complete()
}

string scalar d3lhistogram::get() { 
    return(this.histogram)
}


string scalar d3lhistogram::complete() { 
    string scalar histogramObject 
    histogramObject = this.get() + ";"
    return(histogramObject)
}


void d3lhistogram::init(string scalar vnm, | string scalar arguments) {
	if (arguments != "") {
		this.histogram = "var " + vnm + " = " + arguments
	}
	else {
		this.histogram = vnm
	}	
}


void d3lhistogram::new() {
}

void d3lhistogram::destroy() {
}

void d3lhistogram::histogram(string scalar values, | string scalar index) { 
	if (index != "") {
		this.histogram = this.get() + ".histogram(" + values + ", " + index + ")"
	}
	else {
		this.histogram = this.get() + ".histogram(" + values + ")"
	}
}	


void d3lhistogram::bins(| string scalar arg) { 
	if (arg != "") {
		this.histogram = this.get() + ".bins(" + arg + ")"
	}
	else {
		this.histogram = this.get() + ".bins()"
	}
}


void d3lhistogram::frequency(| string scalar frequency) { 
	if (frequency != "") {
		this.histogram = this.get() + ".frequency(" + frequency + ")"
	}
	else {
		this.histogram = this.get() + ".frequency()"
	}
}	


void d3lhistogram::range(| string scalar range) { 
	if (range != "") {
		this.histogram = this.get() + ".range(" + range + ")"
	}
	else {
		this.histogram = this.get() + ".range()"
	}
}


void d3lhistogram::value(| string scalar accessor) { 
	if (accessor != "") {
		this.histogram = this.get() + ".value(" + accessor + ")"
	}
	else {
		this.histogram = this.get() + ".value()"
	}
}


end


