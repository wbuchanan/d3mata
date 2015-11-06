mata: 

class d3bzoom { 
	private:
	string				scalar	zoom
	
	public:
	void						new(), destroy(), init(), zoom(), center(),
								duration(), event(), on(), scale(), size(),
								scaleExtent(), translate(), x(), y()
	string				scalar	get(), complete()
}

string scalar d3bzoom::get() { 
    return(this.zoom)
}

string scalar d3bzoom::complete() { 
    string scalar zoomObject 
    zoomObject = this.get() + ";"
    return(zoomObject)
}

void d3bzoom::init(string scalar vnm, | string scalar arguments) {
	if (arguments != "") {
		this.zoom = "var " + vnm + " = " + arguments
	}
	else {
		this.zoom = vnm
	}	
}


void d3bzoom::new() {
}

void d3bzoom::destroy() {
}

void d3bzoom::zoom(string scalar selection) { 
	this.zoom = this.get() + ".zoom(" + selection + ")"
}

void d3bzoom::center(| string scalar center) { 
	if (center != "") {
		this.zoom = this.get() + ".center(" + center + ")"
	}
	else {
		this.zoom = this.get() + ".center()"
	}
}	

void d3bzoom::duration(| string scalar x) { 
	this.zoom = this.get() + ".duration(" + x + ")"
}

void d3bzoom::event(string scalar selection) { 
	this.zoom = this.get() + ".event(" + selection + ")"
}

void d3bzoom::on(string scalar type, string scalar listener) { 
	if (type == "zoomstart" | type == "zoom" | type == "zoomend") {
		this.zoom = this.get() + ".on(" + type + ", " + listener + ")"
	}
	else {
		this.zoom = this.get()
	}
}

void d3bzoom::scale(| string scalar scale) { 
	if (scale != "") {
		this.zoom = this.get() + ".scale(" + scale + ")"
	}
	else {
		this.zoom = this.get() + ".scale()"
	}
}

void d3bzoom::scaleExtent(| string scalar extent) { 
	if (extent != "") {
		this.zoom = this.get() + ".scaleExtent(" + extent + ")"
	}
	else {
		this.zoom = this.get() + ".scaleExtent()"
	}
}

void d3bzoom::size(| string scalar size) { 
	if (size != "") {
		this.zoom = this.get() + ".size(" + size + ")"
	}
	else {
		this.zoom = this.get() + ".size()"
	}
}

void d3bzoom::translate(| string scalar translate) { 
	if (translate != "") {
		this.zoom = this.get() + ".translate(" + translate + ")"
	}
	else {
		this.zoom = this.get() + ".translate()"
	}
}

void d3bzoom::x(| string scalar x) { 
	if (x != "") {
		this.zoom = this.get() + ".x(" + x + ")"
	}
	else {
		this.zoom = this.get() + ".x()"
	}
}

void d3bzoom::y(| string scalar y) { 
	if (y != "") {
		this.zoom = this.get() + ".y(" + y + ")"
	}
	else {
		this.zoom = this.get() + ".y()"
	}
}

end


