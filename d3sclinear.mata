mata: 

class d3linear { 

    private   string  scalar    linear
    void                        new(), destroy(), init()
    private   string  scalar    get()
    public    string  scalar    complete() 
	void						linear()
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

string scalar d3linear::get() { 
    return(this.linear)
}

string scalar d3linear::complete() { 
    string scalar linearObject 
    linearObject = this.get() + ";"
    return(linearObject)
}

void d3linear::init(string scalar vnm, string scalar arguments) { 
	this.linear = "var " + vnm + " = " + arguments
}

void d3linear::new() {
}


void d3linear::destroy() {
}


void d3linear::linear(string scalar x) { 
	this.linear = this.get() + ".linear(" + x + ")"
}

void d3linear::clamp(| string scalar bool) { 
	if (bool == "true" | bool == "false") {
		this.linear = this.get() + ".clamp(" + bool + ")"
	}
	else {
		this.linear = this.get() + ".clamp()"
	}
}


void d3linear::copy() { 
	this.linear = this.get() + ".copy()"
}


void d3linear::domain(| string scalar numbers) { 
	if (numbers != "") {
		this.linear = this.get() + ".domain(" + numbers + ")"
	}
	else {
		this.linear = this.get() + ".domain()"
	}
}


void d3linear::interpolate(| string scalar factory) { 
	if (factory != "") {
		this.linear = this.get() + ".interpolate(" + factory + ")"
	}
	else {
		this.linear = this.get() + ".interpolate()"
	}
}


void d3linear::invert(string scalar y) { 
	this.linear = this.get() + ".invert(" + y + ")"
}


void d3linear::nice(string scalar m) { 
	if (m != "") {
		this.linear = this.get() + ".nice(" + m + ")"
	}
	else {
		this.linear = this.get() + ".nice()"
	}
}


void d3linear::range(| string scalar values) { 
	if (values != "") {
		this.linear = this.get() + ".range(" + values + ")"
	}
	else {
		this.linear = this.get() + ".range()"
	}
}


void d3linear::rangeRound(string scalar values) { 
	this.linear = this.get() + ".rangeRound(" + values + ")"
}


void d3linear::tickFormat(| string scalar count, string scalar format) { 
	if (count != "" & format != "") {
		this.linear = this.get() + ".tickFormat(" + count + ", " + format + ")"
	}
	else if (count != "" & format == "") {
		this.linear = this.get() + ".tickFormat(" + count + ")"
	}
	else {
		this.linear = this.get() + ".tickFormat()"
	}
}	
	
	
void d3linear::ticks(string scalar count) { 
	if (count != "") {
		this.linear = this.get() + ".ticks(" + count + ")"
	}
	else {
		this.linear = this.get() + ".ticks()"
	}
}


end


