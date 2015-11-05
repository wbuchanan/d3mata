mata: 

class d3dispatch { 

    private   string  scalar    dispatch
    void                        new(), destroy(), init()
    public    string  scalar    get()
    public    string  scalar    complete() 
    void                        on() 
    void                        type() 

}

string scalar d3dispatch::get() { 
    return(this.dispatch)
}

string scalar d3dispatch::complete() { 
    string scalar dispatchObject 
    dispatchObject = this.get() + ";"
    return(dispatchObject)
}

void d3dispatch::init(string scalar vnm, | string scalar arguments) {
	if (arguments != "") {
		this.dispatch = "var " + vnm + " = " + arguments
	}
	else {
		this.dispatch = vnm
	}	
}

void d3dispatch::new() {
}

void d3dispatch::destroy() {
}

void d3dispatch::on(string scalar type, | string scalar listener) { 
	if (listener != "") {
		this.dispatch = this.get() + ".on(" + type + ", " + listener + ")"
    }
	else {
		this.dispatch = this.get() + ".on(" + type + ")"
	}
}

void d3dispatch::type(string scalar arguments) { 
	this.dispatch = this.get() + ".type(" + arguments + ")"
}

end


