mata: 

class d3hsl { 

    private   string  scalar    hsl
    void                        new(), destroy(), init()
    private   string  scalar    get()
    public    string  scalar    complete() 
    void                        brighter() 
    void                        darker() 
    void					    rgb() 
    void					    toString() 

}

string scalar d3hsl::get() { 
    return(this.hsl)
}

string scalar d3hsl::complete() { 
    string scalar hslObject 
    hslObject = this.get() + ";"
    return(hslObject)
}

void d3hsl::init(string scalar vnm, string scalar arguments) { 
	this.hsl = "var " + vnm + " = " + arguments 
}

void d3hsl::new() {
}

void d3hsl::brighter(| string scalar k) { 
	if (k != "") {
		this.hsl = this.get() + ".brighter(" + k + ")"
    }
	else {
		this.hsl = this.get() + ".brighter()"
	}
}

void d3hsl::darker(| string scalar k) { 
	if (k != "") {
		this.hsl = this.get() + ".darker(" + k + ")"
    }
	else {
		this.hsl = this.get() + ".darker()"
	}
}

void d3hsl::rgb() { 
	this.hsl = this.get() + ".rgb();"
}

void d3hsl::toString() { 
	this.hsl = this.get() + ".toString();"
}

end


