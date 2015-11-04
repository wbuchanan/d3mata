mata: 

class d3hull { 
    private   string  scalar    hull
    void                        new(), destroy(), init()
    private   string  scalar    get()
    public    string  scalar    complete() 
	void						hull()
    void                        x() 
    void                        y() 
}

string scalar d3hull::get() { 
    return(this.hull)
}

string scalar d3hull::complete() { 
    string scalar hullObject 
    hullObject = this.get() + ";"
    return(hullObject)
}

void d3hull::init(string scalar vnm, | string scalar arguments) { 
	if (arguments != "") {
		this.hull = "var " + vnm + " = " + arguments
	}
	else {
		this.hull = vnm
	}
}	

void d3hull::new() {
}

void d3hull::destroy() {
}

void d3hull::hull(string scalar vertices) {
	this.hull = this.get() + "hull(" + vertices + ")"
}

void d3hull::x(| string scalar x) { 
	if (x != "") {
		this.hull = this.get() + ".x(" + x + ")"
	}
	else {
		this.hull = this.get() + ".x()"
	}
}

void d3hull::y(| string scalar y) { 
	if (y != "") {
		this.hull = this.get() + ".y(" + y + ")"
	}
	else {
		this.hull = this.get() + ".y()"
	}
}

end


