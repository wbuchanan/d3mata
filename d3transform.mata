mata: 

class d3transform { 

    private   string  scalar    transform
    void                        new(), destroy(), init()
    public    string  scalar    get()
    public    string  scalar    complete() 
    void                        rotate() 
    void                        translate() 
    void                        skew() 
    void                        scale() 
    void                        toString() 
}

string scalar d3transform::get() { 
    return(this.transform)
}

string scalar d3transform::complete() { 
    string scalar transformObject 
    transformObject = this.get() + ";"
    return(transformObject)
}

void d3transform::init(string scalar vnm, | string scalar arguments) {
	if (arguments != "") {
		this.transform = "var " + vnm + " = " + arguments
	}
	else {
		this.transform = vnm
	}	
}

void d3transform::new() {
}

void d3transform::destroy() {
}

void d3transform::rotate() { 
    this.transform = this.get() + ".rotate"
}

void d3transform::translate() { 
    this.transform = this.get() + ".translate"
}

void d3transform::skew() { 
    this.transform = this.get() + ".skew"
}

void d3transform::scale() { 
    this.transform = this.get() + ".scale"
}

void d3transform::toString() { 
    this.transform = this.get() + ".toString()"
}

end


