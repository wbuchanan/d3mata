mata: 

class d3rgb { 

    private   string  scalar    rgb
    void                        new(), destroy(), init()
    public   string  scalar    get()
    public    string  scalar    complete() 
    void                        brighter() 
    void                        darker() 
    void					    hsl() 
    void					    toString() 

}

string scalar d3rgb::get() { 
    return(this.rgb)
}

string scalar d3rgb::complete() { 
    string scalar rgbObject 
    rgbObject = this.get() + ";"
    return(rgbObject)
}

void d3rgb::init(string scalar vnm, | string scalar arguments) {
	if (arguments != "") {
		this.rgb = "var " + vnm + " = " + arguments
	}
	else {
		this.rgb = vnm
	}	
}

void d3rgb::new() {
}

void d3rgb::destroy() {
}

void d3rgb::brighter(| string scalar k) { 
	if (k != "") {
		this.rgb = this.get() + ".brighter(" + k + ")"
    }
	else {
		this.rgb = this.get() + ".brighter()"
	}
}


void d3rgb::darker(| string scalar k) { 
	if (k != "") {
		this.rgb = this.get() + ".darker(" + k + ")"
    }
	else {
		this.rgb = this.get() + ".darker()"
	}
}


void d3rgb::hsl() { 
	this.rgb = this.get() + ".hsl()"
}


void d3rgb::toString() { 
	this.rgb = this.get() + ".toString()"
}


end


