mata: 

class d3lbundle { 
    private   string  scalar    bundle
    void                        new(), destroy(), init()
    public    string  scalar    get()
    public    string  scalar    complete() 
    void					    bundle() 
}

string scalar d3lbundle::get() { 
    return(this.bundle)
}

string scalar d3lbundle::complete() { 
    string scalar bundleObject 
    bundleObject = this.get() + ";"
    return(bundleObject)
}

void d3lbundle::init(string scalar vnm, | string scalar arguments) {
	if (arguments != "") {
		this.bundle = "var " + vnm + " = " + arguments
	}
	else {
		this.bundle = vnm
	}	
}

void d3lbundle::bundle(string scalar links) {
    this.bundle = this.get() + ".bundle(" + links + ")"
}

void d3lbundle::new() {
}

void d3lbundle::destroy() {
}

end


