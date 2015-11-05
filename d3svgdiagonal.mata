mata: 

class d3svgdiagonal { 

    private   string  scalar    diagonal
    void                        new(), destroy(), init()
    public   string  scalar    get()
    public    string  scalar    complete() 
    void                        diagonal() 
    void                        projection() 
    void                        source() 
    void                        target() 

}

string scalar d3svgdiagonal::get() { 
    return(this.diagonal)
}

string scalar d3svgdiagonal::complete() { 
    string scalar diagonalObject 
    diagonalObject = this.get() + ";"
    return(diagonalObject)
}

void d3svgdiagonal::init(string scalar vnm, | string scalar arguments) {
	if (arguments != "") {
		this.diagonal = "var " + vnm + " = " + arguments
	}
	else {
		this.diagonal = vnm
	}	
}

void d3svgdiagonal::new() {
}

void d3svgdiagonal::destroy() {
}

void d3svgdiagonal::diagonal(string scalar datum, | string scalar index) { 
	if (index != "") {
		this.diagonal = this.get() + ".diagonal(" + datum + ", " + index + ")"
    }
	else {
		this.diagonal = this.get() + ".diagonal(" + datum + ")"
	}
}

void d3svgdiagonal::projection(| string scalar projection) { 
	if (projection != "") {
		this.diagonal = this.get() + ".projection(" + projection + ")"
	}
	else {
		this.diagonal = this.get() + ".projection()"
	}
}

void d3svgdiagonal::source(| string scalar source) { 
	if (source != "") {
		this.diagonal = this.get() + ".source(" + source + ")"
	}
	else {
		this.diagonal = this.get() + ".source()"
	}
}

void d3svgdiagonal::target(| string scalar target) { 
	if (target != "") {
		this.diagonal = this.get() + ".target(" + target + ")"
	}
	else {
		this.diagonal = this.get() + ".target()"
	}
}

end


