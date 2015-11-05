mata: 

class d3lcluster { 

    private   string  scalar    cluster
    void                        new(), destroy(), init()
    public   string  scalar    get()
    public    string  scalar    complete() 
    void                        children() 
    void                        cluster() 
    void                        links() 
    void                        nodeSize() 
    void                        nodes() 
    void                        separation() 
    void                        size() 
    void                        sort() 
    void                        value() 

}

string scalar d3lcluster::get() { 
    return(this.cluster)
}

string scalar d3lcluster::complete() { 
    string scalar clusterObject 
    clusterObject = this.get() + ";"
    return(clusterObject)
}

void d3lcluster::init(string scalar vnm, | string scalar arguments) {
	if (arguments != "") {
		this.cluster = "var " + vnm + " = " + arguments
	}
	else {
		this.cluster = vnm
	}	
}

void d3lcluster::new() {
}

void d3lcluster::destroy() {
}


void d3lcluster::children(| string scalar children) { 
	if (children != "") {
		this.cluster = this.get() + ".children(" + children + ")"
    }
	else {
		this.cluster = this.get() + ".children()"
	}
}

void d3lcluster::cluster(string scalar root) { 
    this.cluster = this.get() + ".cluster(" + root + ")"
}

void d3lcluster::links(string scalar nodes) { 
    this.cluster = this.get() + ".links(" + nodes + ")"
}

void d3lcluster::nodeSize(| string scalar nodeSize) { 
	if (nodeSize != "") {
		this.cluster = this.get() + ".nodeSize(" + nodeSize + ")"
    }
	else {
		this.cluster = this.get() + ".nodeSize()"
	}
}

void d3lcluster::nodes(string scalar root) { 
    this.cluster = this.get() + ".nodes(" + root + ")"
}

void d3lcluster::separation(| string scalar separation) { 
	if (separation != "") {
		this.cluster = this.get() + ".separation(" + separation + ")"
    }
	else {
		this.cluster = this.get() + ".separation()"
	}
}

void d3lcluster::size(| string scalar size) { 
	if (size != "") {
		this.cluster = this.get() + ".size(" + size + ")"
    }
	else {
		this.cluster = this.get() + ".size()"
	}
}

void d3lcluster::sort(| string scalar comparator) { 
	if (comparator != "") {
		this.cluster = this.get() + ".sort(" + comparator + ")"
    }
	else {
		this.cluster = this.get() + ".sort()"
	}	
}

void d3lcluster::value(| string scalar value) { 
	if (value != "") {
		this.cluster = this.get() + ".value(" + value + ")"
    }
	else {
		this.cluster = this.get() + ".value()"
	}
}

end


