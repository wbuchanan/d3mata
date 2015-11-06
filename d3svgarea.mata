mata: 

class d3svgarea { 
	private:
	string				scalar	area

	public:
    void						new(), destroy(), init(), area(), angle(), y(),
								defined(), endAngle(), innerRadius(), x(), x0(), 
								interpolate(), outerRadius(), radius(), x1(),
								startAngle(), tension(), y0(), y1()
    string				scalar	get(), complete()
}

string scalar d3svgarea::get() { 
    return(this.area)
}

string scalar d3svgarea::complete() { 
    string scalar areaObject 
    areaObject = this.get() + ";"
    return(areaObject)
}

void d3svgarea::init(string scalar vnm, | string scalar arguments) {
	if (arguments != "") {
		this.area = "var " + vnm + " = " + arguments
	}
	else {
		this.area = vnm
	}	
}

void d3svgarea::new() {
}

void d3svgarea::destroy() {
}

void d3svgarea::area(string scalar data) {
	this.area = this.get() + "area(" + data + ")"
}


void d3svgarea::angle(| string scalar angle) { 
	if (angle != "") {
		this.area = this.get() + ".angle(" + angle + ")"
    }
	else {
		this.area = this.get() + ".angle()"
	}
}

void d3svgarea::defined(| string scalar defined) { 
	if (defined != "") {
		this.area = this.get() + ".defined(" + defined + ")"
    }
	else {
		this.area = this.get() + ".defined()"
	}
}

void d3svgarea::endAngle(| string scalar angle) { 
	if (angle != "") {
		this.area = this.get() + ".endAngle(" + angle + ")"
    }
	else {
		this.area = this.get() + ".endAngle()"
	}
}

void d3svgarea::innerRadius(| string scalar radius) { 
	if (radius != "") {
		this.area = this.get() + ".innerRadius(" + radius + ")"
    }
	else {
		this.area = this.get() + ".innerRadius()"
	}
}

void d3svgarea::interpolate(| string scalar interpolate) { 
	if (interpolate != "") {
		this.area = this.get() + ".interpolate(" + interpolate + ")"
	}
	else {
		this.area = this.get() + ".interpolate()"
	}
}

void d3svgarea::outerRadius(| string scalar radius) { 
	if (radius != "") {
		this.area = this.get() + ".outerRadius(" + radius + ")"
    }
	else {
		this.area = this.get() + ".outerRadius()"
	}
}

void d3svgarea::radius(| string scalar radius) { 
	if (radius != "") {
		this.area = this.get() + ".radius(" + radius + ")"
    }
	else {
		this.area = this.get() + ".radius()"
	}
}

void d3svgarea::startAngle(| string scalar angle) { 
	if (angle != "") {
		this.area = this.get() + ".startAngle(" + angle + ")"
    }
	else {
		this.area = this.get() + ".startAngle()"
	}
}

void d3svgarea::tension(| string scalar tension) { 
	if (tension != "") {
		this.area = this.get() + ".tension(" + tension + ")"
    }
	else {
		this.area = this.get() + ".tension()"
	}
}

void d3svgarea::x(| string scalar x) { 
	if (x != "") {
		this.area = this.get() + ".x(" + x + ")"
	}
	else {
		this.area = this.get() + ".x()"
	}
}

void d3svgarea::x0(| string scalar x0) { 
	if (x0 != "") {
		this.area = this.get() + ".x0(" + x0 + ")"
	}
	else {
		this.area = this.get() + ".x0()"
	}
}

void d3svgarea::x1(| string scalar x1) { 
	if (x1 != "") {
		this.area = this.get() + ".x1(" + x1 + ")"
	}
	else {
		this.area = this.get() + ".x1()"
	}
}

void d3svgarea::y(| string scalar y) { 
	if (y != "") {
		this.area = this.get() + ".y(" + y + ")"
	}
	else {
		this.area = this.get() + ".y()"
	}
}

void d3svgarea::y0(| string scalar y0) { 
	if (y0 != "") {
		this.area = this.get() + ".y0(" + y0 + ")"
	}
	else {
		this.area = this.get() + ".y0()"
	}
}

void d3svgarea::y1(| string scalar y1) { 
	if (y1 != "") {
		this.area = this.get() + ".y1(" + y1 + ")"
	}
	else {
		this.area = this.get() + ".y1()"
	}
}

end


