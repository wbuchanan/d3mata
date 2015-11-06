mata: 

class d3ltreemap { 
	private:
	string				scalar	treemap
	
	public:
	void						new(), destroy(), init(), treemap(), children(), 
								links(), mode(), nodes(), padding(), round(),
								ratio(), size(), sort(), sticky(), value()
	string				scalar	get(), complete()
}

string scalar d3ltreemap::get() { 
    return(this.treemap)
}

string scalar d3ltreemap::complete() { 
    string scalar treemapObject 
    treemapObject = this.get() + ";"
    return(treemapObject)
}

void d3ltreemap::init(string scalar vnm, | string scalar arguments) {
	if (arguments != "") {
		this.treemap = "var " + vnm + " = " + arguments
	}
	else {
		this.treemap = vnm
	}	
}

void d3ltreemap::new() {
}


void d3ltreemap::destroy() {
}


void d3ltreemap::treemap(string scalar root) { 
	this.treemap = this.get() + ".treemap(" + root + ")"
}


void d3ltreemap::children(| string scalar children) {
	if (children != "") {
		this.treemap = this.get() + ".children(" + children + ")"
	}
	else {
		this.treemap = this.get() + ".children()"
	}
}


void d3ltreemap::nodes(string scalar root) { 
	this.treemap = this.get() + ".nodes(" + root + ")"
}


void d3ltreemap::links(string scalar root) { 
	this.treemap = this.get() + ".links(" + root + ")"
}


void d3ltreemap::sort(| string scalar comparator) { 
	if (comparator != "") {
		this.treemap = this.get() + ".sort(" + comparator + ")"
	}
	else {
		this.treemap = this.get() + ".sort()"
	}
}	


void d3ltreemap::value(| string scalar value) {
	if (value != "") {
		this.treemap = this.get() + ".value(" + value + ")"
	}
	else {
		this.treemap = this.get() + ".value()"
	}
}


void d3ltreemap::size(| string scalar size) { 
	if (size != "") {
		this.treemap = this.get() + ".size(" + size + ")"
    }
	else {
		this.treemap = this.get() + ".size()"
	}
}


void d3ltreemap::padding(| string scalar padding) {
	if (padding != "") {
		this.treemap = this.get() + ".padding(" + padding + ")"
	}
	else {
		this.treemap = this.get() + ".padding()"
	}
}


void d3ltreemap::mode(| string scalar mode) {
	if (mode != "") {
		this.treemap = this.get() + ".mode(" + mode + ")"
	}
	else {
		this.treemap = this.get() + ".mode()"
	}
}


void d3ltreemap::round(| string scalar round) {
	if (round != "") {
		this.treemap = this.get() + ".round(" + round + ")"
	}
	else {
		this.treemap = this.get() + ".round()"
	}
}


void d3ltreemap::sticky(| string scalar sticky) {
	if (sticky != "") {
		this.treemap = this.get() + ".sticky(" + sticky + ")"
	}
	else {
		this.treemap = this.get() + ".sticky()"
	}
}


void d3ltreemap::ratio(| string scalar ratio) {
	if (ratio != "") {
		this.treemap = this.get() + ".ratio(" + ratio + ")"
	}
	else {
		this.treemap = this.get() + ".ratio()"
	}
}



end


