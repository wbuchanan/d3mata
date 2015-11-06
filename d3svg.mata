mata: 

class d3svg { 
    private:   	
	string						scalar	svg, varnm

	public:
	void								new(), destroy(), init(), symbolTypes()
    string  					scalar	get(), getVarnm(), complete()
	class		d3svgarc		scalar	arc()
	class		d3svgarea		scalar	area()
	class		d3svgarea		scalar	area_radial()
	class		d3svgaxis		scalar	axis()
	class		d3svgbrush		scalar	brush()
	class		d3svgchord		scalar	chord()
	class		d3svgdiagonal	scalar	diagonal()
	class		d3svgdiagonal	scalar	diagonal_radial()
	class		d3svgline		scalar	line()
	class		d3svgline		scalar	line_radial()
	class		d3svgsymbol		scalar	symbol()
}

string scalar d3svg::get() { 
    return(this.svg)
}

string scalar d3svg::getVarnm() { 
    return(this.varnm)
}

string scalar d3svg::complete() { 
    string scalar svgObject 
    svgObject = this.get() + ";"
    return(svgObject)
}

void d3svg::init(string scalar vnm, | string scalar arguments) { 
	if (arguments != "") {
		this.svg = "var " + vnm + " = " + arguments
	}
	else {
		this.svg = vnm
	}
	this.varnm = vnm
}

void d3svg::new() {
}

void d3svg::destroy() {
}

class d3svgarc scalar d3svg::arc(string scalar varnm, string scalar datum, | ///   
								string scalar index) {
	class d3svgarc scalar Svg
	Svg = d3svgarc()
	string scalar arg
	if (index != "") {
		arg = getVarnm() + "arc(" + datum + ", " + index + ")"
	}
	else {
		arg = getVarnm() + "arc(" + datum + ")"
	}
	Svg.init(varnm, arg)
	return(Svg)
}


class d3svgarea scalar d3svg::area_radial(string scalar varnm) {
	class d3svgarea scalar Svg
	Svg = d3svgarea()
	Svg.init(varnm, this.getVarnm() + ".area.radial()")
	return(Svg)
}


class d3svgarea scalar d3svg::area(string scalar varnm) {
	class d3svgarea scalar Svg
	Svg = d3svgarea()
	Svg.init(varnm, this.getVarnm() + ".area()")
	return(Svg)
}


class d3svgaxis scalar d3svg::axis(string scalar varnm, string scalar selection) {
	class d3svgaxis scalar Svg
	Svg = d3svgaxis()
	string scalar arg
	arg = this.getVarnm() + ".axis(" + selection + ")"
	Svg.init(varnm, arg)
	return(Svg)
}


class d3svgbrush scalar d3svg::brush(string scalar varnm) {
	class d3svgbrush scalar Svg
	Svg = d3svgbrush()
	Svg.init(varnm, this.getVarnm() + ".brush()")
	return(Svg)
}


class d3svgchord scalar d3svg::chord(string scalar varnm) {
	class d3svgchord scalar Svg
	Svg = d3svgchord()
	Svg.init(varnm, this.getVarnm() + ".chord()") 
	return(Svg)
}


class d3svgdiagonal scalar d3svg::diagonal_radial(string scalar varnm) {
	class d3svgdiagonal scalar Svg
	Svg = d3svgdiagonal()
	Svg.init(varnm, this.getVarnm() + ".diagonal.radial()")
	return(Svg)
}


class d3svgdiagonal scalar d3svg::diagonal(string scalar varnm) {
	class d3svgdiagonal scalar Svg
	Svg = d3svgdiagonal()
	Svg.init(varnm, this.getVarnm() + ".diagonal()")
	return(Svg)
}


class d3svgline scalar d3svg::line_radial(string scalar varnm) {
	class d3svgline scalar Svg
	Svg = d3svgline()
	Svg.init(varnm, this.get() + ".line.radial()")
	return(Svg)
}


class d3svgline scalar d3svg::line(string scalar varnm) {
	class d3svgline scalar Svg
	Svg = d3svgline()
	Svg.init(varnm, this.get() + ".line()")
	return(Svg)
}


class d3svgsymbol scalar d3svg::symbol(string scalar varnm) {
	class d3svgsymbol scalar Svg
	Svg = d3svgsymbol()
	Svg.init(varnm, this.getVarnm() + ".symbol()")
	return(Svg)
}

void d3svg::symbolTypes() {
	this.svg = this.get() + ".symbolTypes" 
}



end
