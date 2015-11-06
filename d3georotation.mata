mata: 

class d3georotation { 
	private:
	string				scalar	rotation
	
	public:
	void						new(), destroy(), init(), invert(), rotation()
	string				scalar	get(), complete()
}

string scalar d3georotation::get() { 
    return(this.rotation)
}

string scalar d3georotation::complete() { 
    string scalar rotationObject 
    rotationObject = this.get() + ";"
    return(rotationObject)
}

void d3georotation::init(string scalar vnm, | string scalar arguments) {
	if (arguments != "") {
		this.rotation = "var " + vnm + " = " + arguments
	}
	else {
		this.rotation = vnm
	}	
}

void d3georotation::new() {
}

void d3georotation::destroy() {
}

void d3georotation::invert(string scalar x) { 
    this.rotation = this.get() + ".invert(" + x + ")"
}

void d3georotation::rotation(string scalar location) { 
    this.rotation = "rotation(" + location + ")"
}

end


