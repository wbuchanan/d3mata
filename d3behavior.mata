mata:

class d3behavior {
	private:
	string				scalar	behavior, varnm
	
	public:
	void						new(), destroy(), init()
	string				scalar	get(), getVarnm()
	class	d3bzoom		scalar	zoom()
	class 	d3bdrag		scalar	drag()	
}	

void d3behavior::new() {
}

void d3behavior::destroy() {
}

void d3behavior::init(string scalar vnm, | string scalar arguments) {
	if (arguments != "") {
		this.behavior = "var " + vnm + " = " + arguments
	}
	else {
		this.behavior = vnm
	}	
	this.varnm = varnm
}

string scalar d3behavior::get() {
	return(this.behavior)
}

string scalar d3behavior::getVarnm() {
	return(this.varnm)
}

class d3bdrag scalar d3behavior::drag(string scalar varnm) {
	class d3bdrag scalar dragger 
	dragger = d3bdrag()
	dragger.init(varnm, this.getVarnm() + ".drag()")
	return(dragger)
}

class d3bzoom scalar d3behavior::zoom(string scalar varnm) {
	class d3bzoom scalar zoomer 
	zoomer = d3bzoom()
	zoomer.init(varnm, this.getVarnm() + ".zoom()")
	return(zoomer)
}


end


