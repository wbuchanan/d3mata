mata: 

class d3polygon { 
    private   string  scalar    polygon
    void                        new(), destroy(), init()
    public    string  scalar    get()
    public    string  scalar    complete() 
    void                        area() 
    void                        centroid() 
    void                        clip() 
}

string scalar d3polygon::get() { 
    return(this.polygon)
}

string scalar d3polygon::complete() { 
    string scalar polygonObject 
    polygonObject = this.get() + ";"
    return(polygonObject)
}

void d3polygon::init(string scalar vnm, | string scalar arguments) { 
	if (arguments != "") {
		this.polygon = "var " + vnm + " = " + arguments
	}
	else {
		this.polygon = vnm 
	}
}

void d3polygon::new() {
}

void d3polygon::destroy() {
}

void d3polygon::area() { 
	this.polygon = this.get() + ".area()"
}

void d3polygon::centroid() { 
	this.polygon = this.get() + ".centroid()"
}

void d3polygon::clip(string scalar subject) { 
	this.polygon = this.get() + ".clip(" + subject + ")"
}

end


