mata: 

class d3quantize { 

    private   string  scalar    quantize
    void                        new(), destroy(), init()
    private   string  scalar    get()
    public    string  scalar    complete() 
	void						quantize()
    void                        copy() 
    void                        domain() 
    void                        invertExtent() 
    void                        range() 

}

string scalar d3quantize::get() { 
    return(this.quantize)
}

string scalar d3quantize::complete() { 
    string scalar quantizeObject 
    quantizeObject = this.get() + ";"
    return(quantizeObject)
}

void d3quantize::init(string scalar vnm, string scalar arguments) { 
	this.quantize = "var " + vnm + " = " + arguments
}

void d3quantize::new() {
}

void d3quantize::destroy() {
}

void d3quantize::quantize(string scalar x) { 
	this.quantize = this.get() + ".quantize(" + x + ")"
}


void d3quantize::copy() { 
	this.quantize = this.get() + ".copy()"
}


void d3quantize::domain(| string scalar numbers) { 
	if (numbers != "") {
		this.quantize = this.get() + ".domain(" + numbers + ")"
	}
	else {
		this.quantize = this.get() + ".domain()"
	}
}


void d3quantize::invertExtent(string scalar y) { 
	this.quantize = this.get() + ".invertExtent(" + y + ")"
}


void d3quantize::range(| string scalar values) { 
	if (values != "") {
		this.quantize = this.get() + ".range(" + values + ")"
	}
	else {
		this.quantize = this.get() + ".range()"
	}
}


end


