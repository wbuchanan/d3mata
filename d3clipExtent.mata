mata: 

class d3clipExtent { 

    private   string  scalar    clipExtent
    void                        new(), destroy(), init()
    public    string  scalar    get()
    public    string  scalar    complete() 
    void                        extent() 

}

string scalar d3clipExtent::get() { 
    return(this.clipExtent)
}

string scalar d3clipExtent::complete() { 
    string scalar clipExtentObject 
    clipExtentObject = this.get() + ";"
    return(clipExtentObject)
}

void d3clipExtent::init(string scalar vnm, | string scalar arguments) {
	if (arguments != "") {
		this.clipExtent = "var " + vnm + " = " + arguments
	}
	else {
		this.clipExtent = vnm
	}	
}

void d3clipExtent::new() {
}

void d3clipExtent::destroy() {
}

void d3clipExtent::extent(| string scalar x0, string scalar y0,				 ///   
						    string scalar x1, string scalar y1) { 
    string scalar c 
	if (x0 == "" | y0 == "" | x1 == "" | y1 == "") {
		c = this.get() + ".extent()"
    }
	else {
		c = this.get() + ".extent([[" + x0 + ", " + y0 + "], [" + x1 + ", " + y1 +"]])"
	}
	this.clipExtent = c
}

end


