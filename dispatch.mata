mata: 

class d3dispatch extends d3 { 

    private   string  scalar    dispatch
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), end() 
    string            scalar    on() 
    string            scalar    type() 

}

string scalar d3dispatch::get() { 
    return(this.dispatch)
}

string scalar d3dispatch::end() { 
    string scalar dispatchObject 
    dispatchObject = this.get() + ";"
    return(dispatchObject)
}

string scalar d3dispatch::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "dispatch"
    return(jsvarname)
}

void d3dispatch::new() {
    this.dispatch = this.setVarnm(STdispatch)
}

string scalar d3dispatch::on(string scalar x) { 
    string scalar dispatch 
    this.dispatch = this.get() + ".on(" + x + ")"
    return(dispatch)
}

string scalar d3dispatch::type(string scalar x) { 
    string scalar dispatch 
    this.dispatch = this.get() + ".type(" + x + ")"
    return(dispatch)
}

end


