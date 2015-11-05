mata: 

class d3geoprojection { 

    private   string  scalar    projection
    void                        new(), destroy(), init()
    public    string  scalar    get()
    public    string  scalar    complete() 
    void                        center() 
    void                        clipAngle() 
    void                        clipExtent() 
    void                        invert() 
    void                        precision() 
    void                        rotate() 
    void                        scale() 
    void                        stream() 
    void                        translate() 

}

string scalar d3geoprojection::get() { 
    return(this.projection)
}

string scalar d3geoprojection::complete() { 
    string scalar projectionObject 
    projectionObject = this.get() + ";"
    return(projectionObject)
}

void d3geoprojection::init(string scalar vnm, | string scalar arguments) {
	if (arguments != "") {
		this.projection = "var " + vnm + " = " + arguments
	}
	else {
		this.projection = vnm
	}	
}

void d3geoprojection::new() {
}

void d3geoprojection::destroy() {
}

void d3geoprojection::center(| string scalar location) { 
	if (location != "") {
		this.projection = this.get() + ".center(" + location + ")"
	}
	else {
		this.projection = this.get() + ".center()"
	}
}

void d3geoprojection::clipAngle(string scalar angle) { 
    this.projection = this.get() + ".clipAngle(" + angle + ")"
}

void d3geoprojection::clipExtent(string scalar extent) { 
    this.projection = this.get() + ".clipExtent(" + extent + ")"
}

void d3geoprojection::invert(string scalar point) { 
    this.projection = this.get() + ".invert(" + point + ")"
}

void d3geoprojection::precision(string scalar precision) { 
    this.projection = this.get() + ".precision(" + precision + ")"
}

void d3geoprojection::rotate(| string scalar rotation) { 
	if (rotation != "") {
		this.projection = this.get() + ".rotate(" + rotation + ")"
	}
	else {
		this.projection = this.get() + ".rotate()"
	}
}

void d3geoprojection::scale(| string scalar scale) { 
	if (scale != "") {
		this.projection = this.get() + ".scale(" + scale + ")"
	}
	else {
		this.projection = this.get() + ".scale()"
	}
}

void d3geoprojection::stream(string scalar listener) { 
    this.projection = this.get() + ".stream(" + listener + ")"
}

void d3geoprojection::translate(string scalar point) { 
	if (point != "") {
		this.projection = this.get() + ".translate(" + point + ")"
	}
	else {
		this.projection = this.get() + ".translate()"
	}
}

end


