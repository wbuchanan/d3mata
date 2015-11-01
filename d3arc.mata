mata: 

class d3arc { 

    private   string  scalar    arc
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    init(), complete()
    string            scalar    centroid() 
    string            scalar    cornerRadius() 
    string            scalar    endAngle() 
    string            scalar    innerRadius() 
    string            scalar    outerRadius() 
    string            scalar    padAngle() 
    string            scalar    padRadius() 
    string            scalar    startAngle() 

}

string scalar d3arc::get() { 
    return(this.arc)
}

string scalar d3arc::complete() { 
    string scalar arcObject 
    arcObject = this.get() + ";"
    return(arcObject)
}

string scalar d3arc::init(string scalar vnm, string scalar datum, | 		 ///   
				 string scalar index) {) { 
    string scalar jsvarname
	if (index != "") {
		jsvarname = "var " + vnm + " = " + "arc(" + datum + ", " + index + ")"
    }
	else {
		jsvarname = "var " + vnm + " = " + "arc(" + datum + ")"
	}
	return(jsvarname)
}

void d3arc::new() {
}

string scalar d3arc::centroid(string scalar arguments) { 
    string scalar arc 
    this.arc = this.get() + ".centroid(" + arguments + ")"
    return(arc)
}

string scalar d3arc::cornerRadius(string scalar radius) { 
    string scalar arc 
	if (radius != "") {
		this.arc = this.get() + ".cornerRadius(" + radius + ")"
	}
	else {
		this.arc = this.get() + ".cornerRadius()"
	}
    return(arc)
}

string scalar d3arc::endAngle(string scalar end) { 
    string scalar arc 
	if (angle != "") {
		this.arc = this.get() + ".endAngle(" + angle + ")"
	}
	else {
		this.arc = this.get() + ".endAngle()"
	}
    return(arc)
}

string scalar d3arc::innerRadius(| string scalar radius) { 
    string scalar arc 
	if (radius != "") {
		this.arc = this.get() + ".innerRadius(" + radius + ")"
	}
	else {
		this.arc = this.get() + ".innerRadius()"
	}
	return(arc)
}

string scalar d3arc::outerRadius(string scalar radius) { 
    string scalar arc 
	if (radius != "") {
		this.arc = this.get() + ".outerRadius(" + radius + ")"
	}
	else {
		this.arc = this.get() + ".outerRadius()"
	}
    return(arc)
}

string scalar d3arc::padAngle(string scalar radius) { 
    string scalar arc 
    this.arc = this.get() + ".padAngle(" + x + ")"
    return(arc)
}

string scalar d3arc::padRadius(string scalar radius) { 
    string scalar arc 
	if (radius != "") {
		this.arc = this.get() + ".padRadius(" + radius + ")"
	}
	else {
		this.arc = this.get() + ".padRadius()"
	}
    return(arc)
}

string scalar d3arc::startAngle(string scalar angle) { 
    string scalar arc 
	if (angle != "") {
		this.arc = this.get() + ".startAngle(" + angle + ")"
	}
	else {
		this.arc = this.get() + ".startAngle()"
	}
    return(arc)
}

end


