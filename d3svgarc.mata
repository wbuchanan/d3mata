mata: 

class d3svgarc { 

    private   string  scalar    arc
    void                        new(), destroy(), init()
    private   string  scalar    get()
    public    string  scalar    complete()
    void                        centroid() 
    void                        cornerRadius() 
    void                        endAngle() 
    void                        innerRadius() 
    void                        outerRadius() 
    void                        padAngle() 
    void                        padRadius() 
    void                        startAngle() 
}

string scalar d3svgarc::get() { 
    return(this.arc)
}

string scalar d3svgarc::complete() { 
    string scalar arcObject 
    arcObject = this.get() + ";"
    return(arcObject)
}

void d3svgarc::init(string scalar vnm, string scalar arguments) { 
	this.arc = "var " + vnm + " = " + arguments
}

void d3svgarc::new() {
}

void d3svgarc::centroid(string scalar arguments) { 
    this.arc = this.get() + ".centroid(" + arguments + ")"
}

void d3svgarc::cornerRadius(string scalar radius) { 
	if (radius != "") {
		this.arc = this.get() + ".cornerRadius(" + radius + ")"
	}
	else {
		this.arc = this.get() + ".cornerRadius()"
	}
}

void d3svgarc::endAngle(string scalar angle) { 
	if (angle != "") {
		this.arc = this.get() + ".endAngle(" + angle + ")"
	}
	else {
		this.arc = this.get() + ".endAngle()"
	}
}

void d3svgarc::innerRadius(| string scalar radius) { 
	if (radius != "") {
		this.arc = this.get() + ".innerRadius(" + radius + ")"
	}
	else {
		this.arc = this.get() + ".innerRadius()"
	}
}

void d3svgarc::outerRadius(| string scalar radius) { 
	if (radius != "") {
		this.arc = this.get() + ".outerRadius(" + radius + ")"
	}
	else {
		this.arc = this.get() + ".outerRadius()"
	}
}

void d3svgarc::padAngle(string scalar radius) { 
    this.arc = this.get() + ".padAngle(" + radius + ")"
}

void d3svgarc::padRadius(| string scalar radius) { 
	if (radius != "") {
		this.arc = this.get() + ".padRadius(" + radius + ")"
	}
	else {
		this.arc = this.get() + ".padRadius()"
	}
}

void d3svgarc::startAngle(| string scalar angle) { 
	if (angle != "") {
		this.arc = this.get() + ".startAngle(" + angle + ")"
	}
	else {
		this.arc = this.get() + ".startAngle()"
	}
}

end


