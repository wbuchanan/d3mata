mata: 

class d3quadtree { 
	private:
	string				scalar	quadtree
	
	public:
	void						new(), destroy(), init(), quadtree(), add(),
								find(), visit(), y(), extent()
	string				scalar	get(), complete()
}

string scalar d3quadtree::get() { 
    return(this.quadtree)
}

string scalar d3quadtree::complete() { 
    string scalar quadtreeObject 
    quadtreeObject = this.get() + ";"
    return(quadtreeObject)
}

void d3quadtree::init(string scalar vnm, | string scalar arguments) { 
	if (arguments != "") {
		this.quadtree = "var " + vnm + " = " + arguments
	}
	else {
		this.quadtree = vnm 
	}
}

void d3quadtree::new() {
}


void d3quadtree::destroy() {
}


void d3quadtree::quadtree(string scalar points, | string scalar x1, string scalar y1, ///   
						  string scalar x2, string scalar y2) {
	if (x1 != "" & y1 != "" & x2 != "" & y2 != "") {
		this.quadtree = this.get() + "quadtree(" + points + ", " + x1 + ", " ///   
											+ y1 + ", " + x2 + ", " + y2 + ")"
	}
	else if (x1 != "" & y1 != "") {
		this.quadtree = this.get() + "quadtree(" + points + ", " + x1 + ", " ///   
											+ y1 + ")"
	}
	else {
		this.quadtree = this.get() + "quadtree(" + points + ")"
	}
}


void d3quadtree::add(string scalar point) { 
	this.quadtree = this.get() + ".add(" + point + ")"
}


void d3quadtree::find(string scalar point) { 
	this.quadtree = this.get() + ".find(" + point + ")"
}


void d3quadtree::visit(string scalar callback) { 
	this.quadtree = this.get() + ".visit(" + callback + ")"
}


void d3quadtree::y(| string scalar y) { 
	if (y != "") {
		this.quadtree = this.get() + ".y(" + y + ")"
	}
	else {
		this.quadtree = this.get() + ".y()"
	}
}


void d3quadtree::extent(| string scalar extent) { 
	if (extent != "") {
		this.quadtree = this.get() + ".extent(" + extent + ")"
	}
	else {
		this.quadtree = this.get() + ".extent()"
	}
}



end


