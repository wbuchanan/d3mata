mata: 

class geom {

	private: 
	string		scalar		geom, varnm, prev, current

	public: 
	string		scalar		get(), complete(), undo(), getVarnm()

	void					add(), area(), centroid(), clip(), clipExtent(), 
							extent(), find(), hull(), links(), polygon(), 
							quadtree(), triangles(), visit(), voronoi(), x(), 
							y(), init()

}

void geom::init(string scalar vnm) {
     this.varnm = vnm 
     this.geom = "var " + vnm + " = d3.geom"
     this.current = "var " + vnm + " = d3.geom"
     this.prev = ""
}

string scalar geom::get() {
     return(this.current) 
}

string scalar geom::complete() {
     return(this.current + ";") 
}

string scalar geom::getVarnm() {
     return(this.varnm) 
}

string scalar geom::undo() {
	this.current = this.prev
    return(this.current) 
}

void geom::add(string scalar point) { 
	this.prev = this.get()
	this.current = this.get() + ".add(" + point + ")" 
}

void geom::area() { 
	this.prev = this.get()
	this.current = this.get() + ".area()" 
}

void geom::centroid() { 
	this.prev = this.get()
	this.current = this.get() + ".centroid()" 
}

void geom::clip(string scalar subject) { 
	this.prev = this.get()
	this.current = this.get() + ".clip(" + subject + ")" 
}

void geom::clipExtent(| string scalar extent) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".clipExtent(" + extent + ")" 
	}
	else {
		this.current = this.get() + ".clipExtent()" 
	}
}

void geom::extent(| string scalar extent) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".extent(" + extent + ")" 
	}
	else {
		this.current = this.get() + ".extent()" 
	}
}

void geom::find(string scalar point) { 
	this.prev = this.get()
	this.current = this.get() + ".find(" + point + ")" 
}

void geom::hull(| string scalar vertices) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".hull(" + vertices + ")" 
	}
	else {
		this.current = this.get() + ".hull()" 
	}
}

void geom::links(string scalar data) { 
	this.prev = this.get()
	this.current = this.get() + ".links(" + data + ")" 
}

void geom::polygon(string scalar vertices) { 
	this.prev = this.get()
	this.current = this.get() + ".polygon(" + vertices + ")" 
}

void geom::quadtree(| string scalar points, string scalar x1, string scalar y1, string scalar x2, string scalar y2) { 
	this.prev = this.get()
	if (args() == 5) {
		this.current = this.get() + ".quadtree(" + points + ", " + x1 + ", " + y1 + ", " + x2 + ", " + y2 + ")" 
	}
	if (args() == 4) {
		this.current = this.get() + ".quadtree(" + points + ", " + x1 + ", " + y1 + ", " + x2 + ")" 
	}
	if (args() == 3) {
		this.current = this.get() + ".quadtree(" + points + ", " + x1 + ", " + y1 + ")" 
	}
	if (args() == 2) {
		this.current = this.get() + ".quadtree(" + points + ", " + x1 + ")" 
	}
	else if (args() == 1) {
		this.current = this.get() + ".quadtree(" + points + ")" 
	}
	else {
		this.current = this.get() + ".quadtree()" 	
	}
}

void geom::triangles(string scalar data) { 
	this.prev = this.get()
	this.current = this.get() + ".triangles(" + data + ")" 
}

void geom::visit(string scalar callback) { 
	this.prev = this.get()
	this.current = this.get() + ".visit(" + callback + ")" 
}

void geom::voronoi(| string scalar data) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".voronoi(" + data + ")" 
	}
	else {
		this.current = this.get() + ".voronoi()" 
	}
}

void geom::x(| string scalar x) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".x(" + x + ")" 
	}
	else {
		this.current = this.get() + ".x()" 
	}
}

void geom::y(| string scalar y) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".y(" + y + ")" 
	}
	else {
		this.current = this.get() + ".y()" 
	}
}


end 


