mata: 

class d3threshold { 

    private   string  scalar    threshold
    void                        new(), destroy(), init()
    public    string  scalar    get()
    public    string  scalar    complete() 
    void                        threshold() 
    void                        copy() 
    void                        domain() 
    void                        invertExtent() 
    void                        range() 

}

string scalar d3threshold::get() { 
    return(this.threshold)
}

string scalar d3threshold::complete() { 
    string scalar thresholdObject 
    thresholdObject = this.get() + ";"
    return(thresholdObject)
}

void d3threshold::init(string scalar vnm, | string scalar arguments) {
	if (arguments != "") {
		this.threshold = "var " + vnm + " = " + arguments
	}
	else {
		this.threshold = vnm
	}	
}

void d3threshold::new() {
}


void d3threshold::destroy() {
}


void d3threshold::threshold(string scalar y) { 
	this.threshold = this.get() + ".threshold(" + y + ")"
}


void d3threshold::copy() { 
    this.threshold = this.get() + ".copy()"
}

void d3threshold::domain(| string scalar domain) { 
	if (domain != "") {
		this.threshold = this.get() + ".domain(" + domain + ")"
	}
	else {
		this.threshold = this.get() + ".domain()"
	}
}


void d3threshold::invertExtent(string scalar y) { 
	this.threshold = this.get() + ".invertExtent(" + y + ")"
}


void d3threshold::range(| string scalar values) { 
	if (values != "") {
		this.threshold = this.get() + ".range(" + values + ")"
	}
	else {
		this.threshold = this.get() + ".range()"
	}
}


end


