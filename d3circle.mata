mata: 

class d3circle { 

    private   string  scalar    circle
    void                        new(), destroy(), init()
    private   string  scalar    get()
    public    string  scalar    complete() 
    void                        angle() 
    void                        origin() 
    void                        precision() 

}

string scalar d3circle::get() { 
    return(this.circle)
}

string scalar d3circle::complete() { 
    string scalar circleObject 
    circleObject = this.get() + ";"
    return(circleObject)
}

void d3circle::init(string scalar vnm, string scalar arguments) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "circle(" + arguments + ")"
    return(jsvarname)
}

void d3circle::new() {
}

void d3circle::angle(| string scalar angle) { 
    string scalar c 
	if (angle != "") {
		c = this.get() + ".angle(" + angle + ")"
	}
	else {
		c = this.get() + ".angle()"
	}
    this.circle = c
}

void d3circle::origin(| string scalar origin) { 
    string scalar c 
	if (origin != "") {
		c = this.get() + ".origin(" + origin + ")"
	}
	else {
		c = this.get() + ".origin()"
	}
    this.circle = c
}

void d3circle::precision(| string scalar precision) { 
    string scalar c 
	if (precision != "") {
		c = this.get() + ".precision(" + precision + ")"
	}
	else {
		c = this.get() + ".precision()"
	}
    this.circle = c
}

end


