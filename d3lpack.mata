mata: 

class d3lpack { 
    private   string  scalar    pack
    void                        new(), destroy(), init()
    private   string  scalar    get()
    public    string  scalar    complete() 
    void                        pack() 
    void                        children() 
    void                        links() 
    void                        nodes() 
    void                        padding() 
    void                        radius() 
    void                        size() 
    void                        sort() 
    void                        value() 
}


string scalar d3lpack::get() { 
    return(this.pack)
}


string scalar d3lpack::complete() { 
    string scalar packObject 
    packObject = this.get() + ";"
    return(packObject)
}


void d3lpack::init(string scalar vnm, string scalar arguments) { 
	this.pack = "var " + vnm + " = " + arguments
}


void d3lpack::new() {
}


void d3lpack::pack(string scalar root) { 
	this.pack = this.get() + ".pack(" + root + ")"
}


void d3lpack::children(| string scalar children) {
	if (children != "") {
		this.pack = this.get() + ".children(" + children + ")"
	}
	else {
		this.pack = this.get() + ".children()"
	}
}


void d3lpack::links(string scalar root) { 
	this.pack = this.get() + ".links(" + root + ")"
}


void d3lpack::nodes(string scalar root) { 
	this.pack = this.get() + ".nodes(" + root + ")"
}


void d3lpack::padding(| string scalar padding) {
	if (padding != "") {
		this.pack = this.get() + ".padding(" + padding + ")"
	}
	else {
		this.pack = this.get() + ".padding()"
	}
}


void d3lpack::radius(| string scalar radius) {
	if (radius != "") {
		this.pack = this.get() + ".radius(" + radius + ")"
	}
	else {
		this.pack = this.get() + ".radius()"
	}
}


void d3lpack::size(| string scalar size) { 
	if (size != "") {
		this.pack = this.get() + ".size(" + size + ")"
    }
	else {
		this.pack = this.get() + ".size()"
	}
}


void d3lpack::sort(| string scalar comparator) { 
	if (comparator != "") {
		this.pack = this.get() + ".sort(" + comparator + ")"
	}
	else {
		this.pack = this.get() + ".sort()"
	}
}	


void d3lpack::value(| string scalar value) {
	if (value != "") {
		this.pack = this.get() + ".value(" + value + ")"
	}
	else {
		this.pack = this.get() + ".value()"
	}
}


end


