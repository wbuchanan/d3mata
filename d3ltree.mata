mata: 

class d3ltree { 
	private:
	string				scalar	tree
	
	public:
	void						new(), destroy(), init(), tree(), children(),
								links(), nodeSize(), nodes(), separation(),
								size(), sort(), value()
	string				scalar	get(), complete()
}


string scalar d3ltree::get() { 
    return(this.tree)
}


string scalar d3ltree::complete() { 
    string scalar treeObject 
    treeObject = this.get() + ";"
    return(treeObject)
}


void d3ltree::init(string scalar vnm, | string scalar arguments) {
	if (arguments != "") {
		this.tree = "var " + vnm + " = " + arguments
	}
	else {
		this.tree = vnm
	}	
}


void d3ltree::new() {
}

void d3ltree::destroy() {
}

void d3ltree::tree(string scalar root) { 
	this.tree = this.get() + ".tree(" + root + ")"
}


void d3ltree::children(| string scalar children) {
	if (children != "") {
		this.tree = this.get() + ".children(" + children + ")"
	}
	else {
		this.tree = this.get() + ".children()"
	}
}


void d3ltree::nodeSize(| string scalar nodeSize) { 
	if (nodeSize != "") {
		this.tree = this.get() + ".nodeSize(" + nodeSize + ")"
    }
	else {
		this.tree = this.get() + ".nodeSize()"
	}
}


void d3ltree::nodes(string scalar root) { 
	this.tree = this.get() + ".nodes(" + root + ")"
}


void d3ltree::links(string scalar root) { 
	this.tree = this.get() + ".links(" + root + ")"
}


void d3ltree::separation(| string scalar separation) { 
	if (separation != "") {
		this.tree = this.get() + ".separation(" + separation + ")"
    }
	else {
		this.tree = this.get() + ".separation()"
	}
}


void d3ltree::size(| string scalar size) { 
	if (size != "") {
		this.tree = this.get() + ".size(" + size + ")"
    }
	else {
		this.tree = this.get() + ".size()"
	}
}


void d3ltree::sort(| string scalar comparator) { 
	if (comparator != "") {
		this.tree = this.get() + ".sort(" + comparator + ")"
	}
	else {
		this.tree = this.get() + ".sort()"
	}
}	


void d3ltree::value(| string scalar value) {
	if (value != "") {
		this.tree = this.get() + ".value(" + value + ")"
	}
	else {
		this.tree = this.get() + ".value()"
	}
}


end


