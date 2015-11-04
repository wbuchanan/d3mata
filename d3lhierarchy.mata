mata: 

class d3lhierarchy { 

    private   string  scalar    hierarchy
    void                        new(), destroy(), init()
    private   string  scalar    get()
    public    string  scalar    complete() 
    void                        hierarchy() 
    void                        children() 
    void                        links() 
    void                        revalue() 
    void                        sort() 
    void                        value() 

}

string scalar d3lhierarchy::get() { 
    return(this.hierarchy)
}


string scalar d3lhierarchy::complete() { 
    string scalar hierarchyObject 
    hierarchyObject = this.get() + ";"
    return(hierarchyObject)
}


void d3lhierarchy::init(string scalar vnm, string scalar arguments) { 
	this.hierarchy = "var " + vnm + " = " + arguments
}


void d3lhierarchy::new() {
}


void d3lhierarchy::hierarchy(string scalar root) { 
    this.hierarchy = this.get() + ".hierarchy(" + root + ")"
}


void d3lhierarchy::children(| string scalar accessor) {
	if (accessor != "") {
		this.hierarchy = this.get() + ".children(" + accessor + ")"
	}
	else {
		this.hierarchy = this.get() + ".children()"
	}
}


void d3lhierarchy::links(string scalar nodes) { 
    this.hierarchy = this.get() + ".links(" + nodes + ")"
}


void d3lhierarchy::revalue(string scalar root) { 
    this.hierarchy = this.get() + ".revalue(" + root + ")"
}


void d3lhierarchy::sort(| string scalar comparator) { 
	if (comparator != "") {
		this.hierarchy = this.get() + ".sort(" + comparator + ")"
	}
	else {
		this.hierarchy = this.get() + ".sort()"
	}
}	


void d3lhierarchy::value(| string scalar value) {
	if (value != "") {
		this.hierarchy = this.get() + ".value(" + value + ")"
	}
	else {
		this.hierarchy = this.get() + ".value()"
	}
}


end


