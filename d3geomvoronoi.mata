mata: 

class d3voronoi { 
	private:
	string				scalar	voronoi
	
	public:
	void						new(), destroy(), init(), voronoi(), links(),
								clipExtent(), triangles(), x(), y()
	string				scalar	get(), complete()
}

string scalar d3voronoi::get() { 
    return(this.voronoi)
}

string scalar d3voronoi::complete() { 
    string scalar voronoiObject 
    voronoiObject = this.get() + ";"
    return(voronoiObject)
}

void d3voronoi::init(string scalar vnm, | string scalar arguments) { 
	if (arguments != "") {
		this.voronoi = "var " + vnm + " = " + arguments
	}
	else {
		this.voronoi = vnm 
	}
}

void d3voronoi::new() {
}

void d3voronoi::destroy() {
}

void d3voronoi::voronoi(string scalar data) {
	this.voronoi = this.get() + ".voronoi(" + data + ")"
}

void d3voronoi::clipExtent(| string scalar extent) {
	if (extent != "") {
		this.voronoi = this.get() + ".clipExtent(" + extent + ")"
	}
	else {
		this.voronoi = this.get() + ".clipExtent()"
	}
}

void d3voronoi::links(string scalar data) { 
	this.voronoi = this.get() + ".links(" + data + ")"
}

void d3voronoi::triangles(string scalar data) { 
	this.voronoi = this.get() + ".triangles(" + data + ")"
}

void d3voronoi::x(| string scalar x) { 
	if (x != "") {
		this.voronoi = this.get() + ".x(" + x + ")"
	}
	else {
		this.voronoi = this.get() + ".x()"
	}
}	

void d3voronoi::y(| string scalar y) { 
	if (y != "") {
		this.voronoi = this.get() + ".y(" + y + ")"
	}
	else {
		this.voronoi = this.get() + ".y()"
	}
}

end


