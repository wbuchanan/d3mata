mata:

class d3behavior {

	void						new(), destroy(), init()
	private	string 		scalar 	behavior	
	private string		scalar  varnm
	public	string		scalar	get(), getVarnm()
	class	d3bzoom		scalar	zoom()
	class 	d3bdrag		scalar	drag()
	
}	

void d3behavior::new() {
}

void d3behavior::destroy() {
}

void d3behavior::init(string scalar varnm, string scalar arguments) {
	this.varnm = varnm
	this.behavior = "var " + varnm + " = " + arguments
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


