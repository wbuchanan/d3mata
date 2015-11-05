mata: 

class d3lpartition { 

    private   string  scalar    partition
    void                        new(), destroy(), init()
    public    string  scalar    get()
    public    string  scalar    complete() 
    void                        partition() 
    void                        children() 
    void                        links() 
    void                        nodes() 
    void                        size() 
    void                        sort() 
    void                        value() 

}

string scalar d3lpartition::get() { 
    return(this.partition)
}

string scalar d3lpartition::complete() { 
    string scalar partitionObject 
    partitionObject = this.get() + ";"
    return(partitionObject)
}

void d3lpartition::init(string scalar vnm, | string scalar arguments) {
	if (arguments != "") {
		this.partition = "var " + vnm + " = " + arguments
	}
	else {
		this.partition = vnm
	}	
}

void d3lpartition::new() {
}

void d3lpartition::destroy() {
}

void d3lpartition::partition(string scalar root) { 
	this.partition = this.get() + ".partition(" + root + ")"
}

void d3lpartition::children(| string scalar children) {
	if (children != "") {
		this.partition = this.get() + ".children(" + children + ")"
	}
	else {
		this.partition = this.get() + ".children()"
	}
}

void d3lpartition::nodes(string scalar root) { 
	this.partition = this.get() + ".nodes(" + root + ")"
}

void d3lpartition::links(string scalar root) { 
	this.partition = this.get() + ".links(" + root + ")"
}

void d3lpartition::sort(| string scalar comparator) { 
	if (comparator != "") {
		this.partition = this.get() + ".sort(" + comparator + ")"
	}
	else {
		this.partition = this.get() + ".sort()"
	}
}	

void d3lpartition::value(| string scalar value) {
	if (value != "") {
		this.partition = this.get() + ".value(" + value + ")"
	}
	else {
		this.partition = this.get() + ".value()"
	}
}
void d3lpartition::size(| string scalar size) { 
	if (size != "") {
		this.partition = this.get() + ".size(" + size + ")"
    }
	else {
		this.partition = this.get() + ".size()"
	}
}



end


