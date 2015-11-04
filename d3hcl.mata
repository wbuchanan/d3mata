mata: 

class d3hcl { 

    private   string  scalar    hcl
    void                        new(), destroy(), init()
    private   string  scalar    get()
    public    string  scalar    complete() 
    void                        brighter() 
    void                        darker() 
    void					    rgb() 
    void					    toString() 

}

string scalar d3hcl::get() { 
    return(this.hcl)
}

string scalar d3hcl::complete() { 
    string scalar hclObject 
    hclObject = this.get() + ";"
    return(hclObject)
}

void d3hcl::init(string scalar vnm, string scalar arguments) { 
	this.hcl = "var " + vnm + " = " + arguments
}

void d3hcl::new() {
}

void d3hcl::brighter(| string scalar k) { 
	if (k != "") {
		this.hcl = this.get() + ".brighter(" + k + ")"
    }
	else {
		this.hcl = this.get() + ".brighter()"
	}
}

void d3hcl::darker(| string scalar k) { 
	if (k != "") {
		this.hcl = this.get() + ".darker(" + k + ")"
    }
	else {
		this.hcl = this.get() + ".darker()"
	}
}

void d3hcl::rgb() { 
	this.hcl = this.get() + ".rgb();"
}

void d3hcl::toString() { 
	this.hcl = this.get() + ".toString();"
}

end


