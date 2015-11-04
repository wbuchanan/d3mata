mata: 

class d3ltree { 
    private   string  scalar    tree
    void                        new(), destroy(), init()
    private   string  scalar    get()
    public    string  scalar    complete() 
    void                        tree() 
    void                        children() 
    void                        links() 
    void                        nodeSize() 
    void                        nodes() 
    void                        separation() 
    void                        size() 
    void                        sort() 
    void                        value() 
}


string scalar d3ltree::get() { 
    return(this.tree)
}


string scalar d3ltree::complete() { 
    string scalar treeObject 
    treeObject = this.get() + ";"
    return(treeObject)
}


void d3ltree::init(string scalar vnm, string scalar arguments) { 
	this.tree = "var " + vnm + " = " + arguments
}


void d3ltree::new() {
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


