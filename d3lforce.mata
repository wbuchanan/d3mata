mata: 

class d3lforce { 

    private   string  scalar    force
    void                        new(), destroy(), init()
    private   string  scalar    get()
    public    string  scalar    complete() 
    void                        alpha() 
    void                        charge() 
    void                        chargeDistance() 
    void                        drag() 
    void                        friction() 
    void                        gravity() 
    void                        linkDistance() 
    void                        linkStrength() 
    void                        links() 
    void                        nodes() 
    void                        on() 
    void                        resume() 
    void                        size() 
    void                        start() 
    void                        stop() 
    void                        theta() 
    void                        tick() 

}

string scalar d3lforce::get() { 
    return(this.force)
}

string scalar d3lforce::complete() { 
	string scalar forceObject 
    forceObject = this.get() + ";"
    return(forceObject)
}

void d3lforce::init(string scalar vnm, string scalar arguments) { 
	this.force = "var " + vnm + " = " + arguments
}

void d3lforce::new() {
}

void d3lforce::alpha(| string scalar value) { 
	if (value != "") {
		this.force = this.get() + ".alpha(" + value + ")"
	}
	else {
		this.force = this.get() + ".alpha()"
	}
}

void d3lforce::charge(| string scalar charge) { 
	if (charge != "") {
		this.force = this.get() + ".charge(" + charge + ")"
	}
	else {
		this.force = this.get() + ".charge()"
	}
}

void d3lforce::chargeDistance(| string scalar distance) { 
	if (distance != "") {
		this.force = this.get() + ".chargeDistance(" + distance + ")"
	}
	else {
		this.force = this.get() + ".chargeDistance()"
	}
}

void d3lforce::drag() { 
	this.force = this.get() + ".drag()"
}

void d3lforce::friction(| string scalar friction) { 
	if (friction != "") {
		this.force = this.get() + ".friction(" + friction + ")"
	}
	else {
		this.force = this.get() + ".friction()"
	}
}

void d3lforce::gravity(| string scalar gravity) { 
	if (gravity != "") {
		this.force = this.get() + ".gravity(" + gravity + ")"
	}
	else {
		this.force = this.get() + ".friction()"
	}
}

void d3lforce::linkDistance(| string scalar distance) { 
	if (distance != "") {
		this.force = this.get() + ".linkDistance(" + distance + ")"
	}
	else {
		this.force = this.get() + ".linkDistance()"
	}
}

void d3lforce::linkStrength(| string scalar strength) { 
	if (strength != "") {
		this.force = this.get() + ".linkStrength(" + strength + ")"
	}
	else {
		this.force = this.get() + ".linkStrength()"
	}
}

void d3lforce::links(| string scalar links) { 
	if (links != "") {
		this.force = this.get() + ".links(" + links + ")"
	}
	else {
		this.force = this.get() + ".links()"
	}
}

void d3lforce::nodes(| string scalar nodes) { 
	if (nodes != "") {
		this.force = this.get() + ".nodes(" + nodes + ")"
	}
	else {
		this.force = this.get() + ".links()"
	}
}

void d3lforce::on(string scalar type, string scalar listener) { 
	this.force = this.get() + ".on(" + type + ", " + listener + ")"
}

void d3lforce::resume() { 
	this.force = this.get() + ".resume()"
}

void d3lforce::size(| string scalar width, string scalar height) { 
	if (width != "" & height != "") {
		this.force = this.get() + ".size(" + width + ", " + height + ")"
	}
	else {
		this.force = this.get() + ".size()"
	}
}

void d3lforce::start() { 
	this.force = this.get() + ".start()"
}

void d3lforce::stop() { 
	this.force = this.get() + ".stop()"
}

void d3lforce::theta(| string scalar theta) {
	if (theta != "") {
		this.force = this.get() + ".theta(" + theta + ")"
	}
	else {
		this.force = this.get() + ".theta()"
	}
}

void d3lforce::tick() { 
	this.force = this.get() + ".tick()"
}

end


