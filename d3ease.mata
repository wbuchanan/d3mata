mata: 

class d3ease { 
    private   string  scalar    ease
    void                        new(), destroy(), init()
    private   string  scalar    get()
    public    string  scalar    complete() 
}

string scalar d3ease::get() { 
    return(this.ease)
}

string scalar d3ease::complete() { 
    string scalar easeObject 
    easeObject = this.get() + ";"
    return(easeObject)
}

void d3ease::init(string scalar vnm, string scalar arguments) { 
	this.ease = "var " + vnm + " = " + arguments
}

void d3ease::new() {
}

void d3ease::destroy() {
}

end


