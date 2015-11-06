mata: 

class d3hcl { 
	private:
	string				scalar	hcl
	
	public:
	void						new(), destroy(), init(), brighter(), darker(), 
								rgb(), toString()
	string				scalar	get(), complete()
}

string scalar d3hcl::get() { 
    return(this.hcl)
}

string scalar d3hcl::complete() { 
    string scalar hclObject 
    hclObject = this.get() + ";"
    return(hclObject)
}

void d3hcl::init(string scalar vnm, | string scalar arguments) {
	if (arguments != "") {
		this.hcl = "var " + vnm + " = " + arguments
	}
	else {
		this.hcl = vnm
	}	
}

void d3hcl::new() {
}

void d3hcl::destroy() {
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
	this.hcl = this.get() + ".rgb()"
}

void d3hcl::toString() { 
	this.hcl = this.get() + ".toString()"
}

end


