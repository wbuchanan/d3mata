mata: 

class d3identity { 

    private   string  scalar    identity
    void                        new(), destroy(), init()
    private   string  scalar    get()
    public    string  scalar    complete() 
	void						identity()
    void                        copy() 
    void                        domain() 
    void                        invert() 
    void                        range() 
    void                        tickFormat() 
    void                        ticks() 

}

string scalar d3identity::get() { 
    return(this.identity)
}


string scalar d3identity::complete() { 
    string scalar identityObject 
    identityObject = this.get() + ";"
    return(identityObject)
}


void d3identity::init(string scalar vnm, string scalar arguments) { 
	this.identity = "var " + vnm + " = " + arguments
}


void d3identity::new() {
}


void d3identity::destroy() {
}


void d3identity::identity(string scalar x) { 
	this.identity = this.get() + ".identity(" + x + ")"
}


void d3identity::copy() { 
	this.identity = this.get() + ".copy()"
}


void d3identity::domain(| string scalar numbers) { 
	if (numbers != "") {
		this.identity = this.get() + ".domain(" + numbers + ")"
	}
	else {
		this.identity = this.get() + ".domain()"
	}
}


void d3identity::invert(string scalar y) { 
	this.identity = this.get() + ".invert(" + y + ")"
}


void d3identity::range(| string scalar numbers) { 
	if (numbers != "") {
		this.identity = this.get() + ".range(" + numbers + ")"
	}
	else {
		this.identity = this.get() + ".range()"
	}
}


void d3identity::tickFormat(| string scalar count, string scalar format) { 
	if (count != "" & format != "") {
		this.identity = this.get() + ".tickFormat(" + count + ", " + format + ")"
	}
	else if (count != "" & format == "") {
		this.identity = this.get() + ".tickFormat(" + count + ")"
	}
	else {
		this.identity = this.get() + ".tickFormat()"
	}
}	
	
	
void d3identity::ticks(string scalar count) { 
	if (count != "") {
		this.identity = this.get() + ".ticks(" + count + ")"
	}
	else {
		this.identity = this.get() + ".ticks()"
	}
}


end


