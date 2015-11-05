mata: 

class d3set { 

    private   string  scalar    set
    void                        new(), destroy(), init()
    public   string  scalar    get()
    public    string  scalar    complete() 
    void                        add() 
    void                        empty() 
    void                        forEach() 
    void                        has() 
    void                        remove() 
    void                        size() 
    void                        values() 

}

string scalar d3set::get() { 
    return(this.set)
}

string scalar d3set::complete() { 
    string scalar setObject 
    setObject = this.get() + ";"
    return(setObject)
}

void d3set::init(string scalar vnm, | string scalar arguments) {
	if (arguments != "") {
		this.set = "var " + vnm + " = " + arguments
	}
	else {
		this.set = vnm
	}	
}

void d3set::new() {
}

void d3set::destroy() {
}

void d3set::has(string scalar value) { 
	this.set = this.get() + ".has(" + value + ")"
}


void d3set::add(string scalar value) { 
	this.set = this.get() + ".add(" + value + ")"
}


void d3set::remove(string scalar value) { 
	this.set = this.get() + ".remove(" + value + ")"
}


void d3set::values() { 
	this.set = this.get() + ".values()"
}


void d3set::forEach(string scalar func) { 
	this.set = this.get() + ".forEach(" + func + ")"
}


void d3set::empty() { 
	this.set = this.get() + ".empty()"
}

void d3set::size() { 
	this.set = this.get() + ".size()"
}

end


