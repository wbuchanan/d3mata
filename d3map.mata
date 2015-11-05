mata: 

class d3map { 
    private   string  scalar    map
    void                        new(), destroy(), init()
    public    string  scalar    getter()
    public    string  scalar    complete() 
    void                        empty() 
    void                        entries() 
    void                        forEach() 
	void						get()
    void                        has() 
    void                        keys() 
    void                        remove() 
    void                        set() 
    void                        size() 
    void                        values() 
}

string scalar d3map::getter() { 
    return(this.map)
}

string scalar d3map::complete() { 
    string scalar mapObject 
    mapObject = this.getter() + ";"
    return(mapObject)
}

void d3map::init(string scalar vnm, | string scalar arguments) { 
	if (arguments != "") {
		this.map = "var " + vnm + " = " + arguments
	}
	else {
		this.map = vnm
	}
}

void d3map::new() {
}

void d3map::destroy() {
}

void d3map::has(string scalar key) { 
	this.map = this.getter() + ".has(" + key + ")"
}


void d3map::get(string scalar key) { 
	this.map = this.getter() + ".get(" + key + ")"
}


void d3map::set(string scalar key, string scalar value) { 
	this.map = this.getter() + ".set(" + key + ", " + value + ")"
}


void d3map::remove(string scalar key) { 
	this.map = this.getter() + ".remove(" + key + ")"
}


void d3map::keys() { 
	this.map = this.getter() + ".keys()"
}


void d3map::values() { 
	this.map = this.getter() + ".values()"
}


void d3map::entries() { 
	this.map = this.getter() + ".entries()"
}


void d3map::forEach(string scalar func) { 
	this.map = this.getter() + ".forEach(" + func + ")"
}


void d3map::empty() { 
	this.map = this.getter() + ".empty()"
}


void d3map::size() { 
	this.map = this.getter() + ".size()"
}


end


