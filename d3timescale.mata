mata: 

class d3timescale { 

    private   string  scalar    timescale
    void                        new(), destroy(), init()
    private   string  scalar    get()
    public    string  scalar    complete() 
	void						scale()
	void						invert()
	void						domain()
	void						nice()
	void						range()
	void						rangeRound()
	void						interpolate()
	void						clamp()
	void						ticks()
	void						tickFormat()
	void						copy()

}

string scalar d3timescale::get() { 
    return(this.timescale)
}

string scalar d3timescale::complete() { 
    string scalar timescaleObject 
    timescaleObject = this.get() + ";"
    return(timescaleObject)
}

void d3timescale::init(string scalar vnm, string scalar arguments) { 
	this.timescale = "var " + vnm + " = " + arguments 
}

void d3timescale::new() {
}


void d3timescale::scale(string scalar x) {
	this.timescale = this.get() + ".scale(" + x + ")"
}


void d3timescale::invert(string scalar y) {
	this.timescale = this.get() + ".invert(" + y + ")"
}


void d3timescale::domain(| string scalar dates) {
	if (dates != "") {
		this.timescale = this.get() + ".domain(" + dates + ")"
	}
	else {
		this.timescale = this.get() + ".domain()"
	}
}


void d3timescale::nice(| string scalar interval, string scalar step) {
	if (interval != "" & step != "") {
		this.timescale = this.get() + ".nice(" + interval + ", " + step + ")"
	}
	else if (interval != "" & step == "") {
		this.timescale = this.get() + ".nice(" + interval + ")"
	}
	else {
		this.timescale = this.get() + ".nice()"
	}
}


void d3timescale::range(| string scalar values) {
	if (values != "") {
		this.timescale = this.get() + ".range(" + values + ")"
	}
	else {
		this.timescale = this.get() + ".range()"
	}
}


void d3timescale::rangeRound(| string scalar values) {
	if (values != "") {
		this.timescale = this.get() + ".rangeRound(" + values + ")"
	}
	else {
		this.timescale = this.get() + ".rangeRound()"
	}
}


void d3timescale::interpolate(| string scalar factory) {
	if (factory != "") {
		this.timescale = this.get() + ".interpolate(" + factory + ")"
	}
	else {
		this.timescale = this.get() + ".interpolate()"
	}
}


void d3timescale::clamp(| string scalar bool) {
	if (bool == "true" | bool == "false") {
		this.timescale = this.get() + ".clamp(" + bool + ")"
	}
	else {
		this.timescale = this.get() + ".clamp()"
	}
}


void d3timescale::ticks(| string scalar interval, string scalar step) {
	if (interval != "" & step != "") {
		this.timescale = this.get() + ".ticks(" + interval + ", " + step + ")"
	}
	else if (interval != "" & step == "") {
		this.timescale = this.get() + ".ticks(" + interval + ")"
	}
	else {
		this.timescale = this.get() + ".ticks()"
	}
}


void d3timescale::tickFormat() {
	this.timescale = this.get() + ".tickFormat()"
}


void d3timescale::copy() {
	this.timescale = this.get() + ".copy()"
}





end
