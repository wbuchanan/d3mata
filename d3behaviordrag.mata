mata: 

class d3bdrag { 

    private   	string  	scalar    	drag
    void                        		new(), destroy(), init()
    public   	string  	scalar    	get()
    public    	string  	scalar    	complete() 
    void                        		on() 
    void                        		origin() 

}


string scalar d3bdrag::get() { 
    return(this.drag)
}


string scalar d3bdrag::complete() { 
    string scalar dragObject 
    dragObject = this.get() + ";"
    return(dragObject)
}


void d3bdrag::init(string scalar varnm, string scalar arguments) { 
	this.drag = "var " + varnm + " = " + arguments
}


void d3bdrag::new() {
}


void d3bdrag::on(string scalar type, | string scalar listener) { 
	if (listener != "") {
		this.drag = this.get() + ".on(" + type + ", " + listener + ")"
    }
	else {
		this.drag = this.get() + ".on(" + type + ")"
	}
}


void d3bdrag::origin(| string scalar origin) { 
	if (origin != "") { 
		this.drag = this.get() + ".origin(" + origin + ")"
	}
	else {
		this.drag = this.get() + ".origin()"
	}
}


end


