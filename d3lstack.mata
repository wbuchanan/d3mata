mata: 

class d3lstack { 

    private   string  scalar    stack
    void                        new(), destroy(), init()
    private   string  scalar    get()
    public    string  scalar    complete() 
    void                        stack() 
    void                        offset() 
    void                        order() 
    void                        out() 
    void                        values() 
    void                        x() 
    void                        y() 

}

string scalar d3lstack::get() { 
    return(this.stack)
}

string scalar d3lstack::complete() { 
    string scalar stackObject 
    stackObject = this.get() + ";"
    return(stackObject)
}

void d3lstack::init(string scalar vnm, string scalar arguments) { 
	this.stack = "var " + vnm + " = " + arguments
}

void d3lstack::new() {
}

void d3lstack::stack(string scalar layers, | string scalar index) { 
	if (index != "") {
		this.stack = this.get() + ".stack(" + layers + ", " + index + ")"
	}
	else {
		this.stack = this.get() + ".stack(" + layers + ")"
	}
}	


void d3lstack::offset(| string scalar offset) { 
	if (offset != "") {
		this.stack = this.get() + ".offset(" + offset + ")"
	}
	else {
		this.stack = this.get() + ".offset()"
	}
}


void d3lstack::order(| string scalar order) { 
	if (order != "") {
		this.stack = this.get() + ".order(" + order + ")"
	}
	else {
		this.stack = this.get() + ".order()"
	}
}


void d3lstack::out(string scalar x) { 
    string scalar s 
    s = this.get() + ".out(" + x + ")"
    this.stack = s
}


void d3lstack::values(| string scalar accessor) {
	if (accessor != "") {
		this.stack = this.get() + ".values(" + accessor + ")"
	}
	else {
		this.stack = this.get() + ".values()"
	}
}


void d3lstack::x(| string scalar accessor) { 
	if (accessor != "") {
		this.stack = this.get() + ".x(" + accessor + ")"
	}
	else {
		this.stack = this.get() + ".x()"
	}
}


void d3lstack::y(| string scalar accessor) { 
	if (accessor != "") {
		this.stack = this.get() + ".y(" + accessor + ")"
	}
	else {
		this.stack = this.get() + ".y()"
	}
}


end


