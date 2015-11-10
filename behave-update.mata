mata: 

mata clear

class behavior {

	private: 
	string 	scalar 		behavior, varnm, prev, current

	public: 
	string 	scalar 		get(), complete(), undo(), getVarnm()

	void 				center(), drag(), event(), on(), origin(), scale(), 
						scaleExtent(), size(), translate(), x(), y(), zoom(), 
						init()

}

void behavior::init(string scalar vnm) {
     this.varnm = vnm 
     this.behavior = "var " + vnm + " = d3.behavior"
     this.current = "var " + vnm + " = d3.behavior"
     this.prev = ""
}

string scalar behavior::get() {
     return(this.current) 
}

string scalar behavior::complete() {
     return(this.current + ";") 
}

string scalar behavior::getVarnm() {
     return(this.varnm) 
}

string scalar behavior::undo() {
	this.current = this.prev
    return(this.current) 
}

void behavior::center(| string scalar center) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".center(" + center + ")" 
	}
	else {
		this.current = this.get() + ".center()" 
	}
}

void behavior::drag() { 
	this.prev = this.get()
	this.current = this.get() + ".drag()" 
}

void behavior::event(string scalar selection) { 
	this.prev = this.get()
	this.current = this.get() + ".event(" + selection + ")" 
}

void behavior::on(string scalar type, | string scalar listener) { 
	this.prev = this.get()
	if (args() == 2) {
		this.current = this.get() + ".on(" + type + ", " + listener + ")" 
	}
	else {
		this.current = this.get() + ".on(" + type + ")" 
	}
}

void behavior::origin(| string scalar origin) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".origin(" + origin + ")" 
	}
	else {
		this.current = this.get() + ".origin()" 
	}
}

void behavior::scale(| string scalar scale) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".scale(" + scale + ")" 
	}
	else {
		this.current = this.get() + ".scale()" 
	}
}

void behavior::scaleExtent(| string scalar extent) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".scaleExtent(" + extent + ")" 
	}
	else {
		this.current = this.get() + ".scaleExtent()" 
	}
}

void behavior::size(| string scalar size) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".size(" + size + ")" 
	}
	else {
		this.current = this.get() + ".size()" 
	}
}

void behavior::translate(| string scalar translate) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".translate(" + translate + ")" 
	}
	else {
		this.current = this.get() + ".translate()" 
	}
}

void behavior::x(| string scalar x) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".x(" + x + ")" 
	}
	else {
		this.current = this.get() + ".x()" 
	}
}

void behavior::y(| string scalar y) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".y(" + y + ")" 
	}
	else {
		this.current = this.get() + ".y()" 
	}
}

void behavior::zoom() { 
	this.prev = this.get()
	this.current = this.get() + ".zoom()" 
}

void behavior::zoom(string scalar selection) { 
	this.prev = this.get()
	this.current = this.get() + ".zoom(" + selection + ")" 
}

end 


