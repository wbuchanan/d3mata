mata: 

class d3svgaxis { 

    private   string  scalar    axis
    void                        new(), destroy(), init()
    private   string  scalar    get()
    public    string  scalar    complete() 
    void                        innerTickSize() 
    void                        orient() 
    void                        outerTickSize() 
    void                        scale() 
    void                        tickFormat() 
    void                        tickPadding() 
    void                        tickSize() 
    void                        tickValues() 
    void                        ticks() 

}

string scalar d3svgaxis::get() { 
    return(this.axis)
}

string scalar d3svgaxis::complete() { 
    string scalar axisObject 
    axisObject = this.get() + ";"
    return(axisObject)
}

void d3svgaxis::init(string scalar vnm, string scalar arguments) { 
    this.axis = "var " + vnm + " = " + arguments
}

void d3svgaxis::new() {
}

void d3svgaxis::innerTickSize(| string scalar size) { 
	if (size != "") {
		this.axis = this.get() + ".innerTickSize(" + size + ")"
    }
	else {
		this.axis = this.get() + ".innerTickSize()"
	}
}

void d3svgaxis::orient(| string scalar orient) { 
	if (orient != "") {
		this.axis = this.get() + ".orient(" + orient + ")"
    }
	else {
		this.axis = this.get() + ".orient()"
	}
}

void d3svgaxis::outerTickSize(string scalar size) { 
	if (size != "") {
		this.axis = this.get() + ".outerTickSize(" + size + ")"
    }
	else {
		this.axis = this.get() + ".outerTickSize()"
	}
}

void d3svgaxis::scale(| string scalar scale) { 
	if (scale != "") {
		this.axis = this.get() + ".scale(" + scale + ")"
    }
	else {
		this.axis = this.get() + ".scale()"
	}
}

void d3svgaxis::tickFormat(| string scalar format) { 
	if (format != "") {
		this.axis = this.get() + ".tickFormat(" + format + ")"
    }
	else {
		this.axis = this.get() + ".tickFormat()"
	}
}

void d3svgaxis::tickPadding(| string scalar padding) { 
	if (padding != "") {
		this.axis = this.get() + ".tickPadding(" + padding + ")"
    }
	else {
		this.axis = this.get() + ".tickPadding()"
	}
}

void d3svgaxis::tickSize(| string scalar inner, string scalar outer) { 
	if (inner != "" & outer != "") {
		this.axis = this.get() + ".tickSize(" + inner + ", " + outer + ")"
    }
	else {
		this.axis = this.get() + ".tickSize()"
	}
}

void d3svgaxis::tickValues(| string scalar tickvalues) { 
	if (tickvalues != "") {
		this.axis = this.get() + ".tickValues(" + tickvalues + ")"
    }
	else {
		this.axis = this.get() + ".tickValues()"
	}
}

void d3svgaxis::ticks(| string scalar arguments) { 
	if (arguments != "") {
		this.axis = this.get() + ".ticks(" + arguments + ")"
    }
	else {
		this.axis = this.get() + ".ticks()"
	}
}

end


