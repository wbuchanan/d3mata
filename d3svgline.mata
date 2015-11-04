mata: 

class d3svgline { 

    private   string  scalar    line
    void                        new(), destroy(), init()
    private   string  scalar    get()
    public    string  scalar    complete() 
    void                        angle() 
    void                        defined() 
    void                        interpolate() 
    void                        line() 
    void                        radius() 
    void                        tension() 
    void                        x() 
    void                        y() 

}

string scalar d3svgline::get() { 
    return(this.line)
}

string scalar d3svgline::complete() { 
    string scalar lineObject 
    lineObject = this.get() + ";"
    return(lineObject)
}

void d3svgline::init(string scalar vnm, string scalar arguments) { 
    this.line = "var " + vnm + " = " + arguments
}

void d3svgline::new() {
}

void d3svgline::angle(string scalar angle) { 
	if (angle != "") {
		this.line = this.get() + ".angle(" + angle + ")"
	}
	else {
		this.line = this.get() + ".angle()"
	}
}

void d3svgline::line(string scalar data) { 
    this.line = this.get() + ".line(" + data + ")"
}

void d3svgline::defined(| string scalar defined) {
	if (defined != "") {
		this.line = this.get() + ".defined(" + defined + ")"
	}
	else {
		this.line = this.get() + ".defined()"
	}
}

void d3svgline::interpolate(| string scalar interpolate) { 
	if (interpolate != "") {
		this.line = this.get() + ".interpolate(" + interpolate + ")"
	}
	else {
		this.line = this.get() + ".interpolate()"
	}
}

void d3svgline::radius(string scalar radius) { 
	if (radius != "") {
		this.line = this.get() + ".radius(" + radius + ")"
	}
	else {
		this.line = this.get() + ".radius()"
	}
}

void d3svgline::tension(| string scalar tension) { 
	if (tension != "") {
		this.line = this.get() + ".tension(" + tension + ")"
	}
	else {
		this.line = this.get() + ".tension()"
	}
}

void d3svgline::x(| string scalar x) { 
	if (x != "") {
		this.line = this.get() + ".x(" + x + ")"
	}
	else {
		this.line = this.get() + ".x()"
	}
}

void d3svgline::y(| string scalar y) { 
	if (y != "") {
		this.line = this.get() + ".y(" + y + ")"
	}
	else {
		this.line = this.get() + ".y()"
	}
}

end

