mata: 

class d3lab { 

    private   string  scalar    lab
    void                        new(), destroy(), init()
    private   string  scalar    get()
    public    string  scalar    complete() 
    void                        brighter() 
    void                        darker() 
    void					    rgb() 
    void					    toString() 

}

string scalar d3lab::get() { 
    return(this.lab)
}

string scalar d3lab::complete() { 
    string scalar labObject 
    labObject = this.get() + ";"
    return(labObject)
}

void d3lab::init(string scalar vnm, string scalar arguments) { 
	this.lab = "var " + vnm + " = " + arguments 
}

void d3lab::new() {
}


void d3lab::brighter(| string scalar k) { 
	if (k != "") {
		this.lab = this.get() + ".brighter(" + k + ")"
    }
	else {
		this.lab = this.get() + ".brighter()"
	}
}


void d3lab::darker(| string scalar k) { 
	if (k != "") {
		this.lab = this.get() + ".darker(" + k + ")"
    }
	else {
		this.lab = this.get() + ".darker()"
	}
}


void d3lab::rgb() { 
	this.lab = this.get() + ".rgb();"
}


void d3lab::toString() { 
	this.lab = this.get() + ".toString();"
}


end


