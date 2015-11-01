mata: 

class d3identity { 

    private   string  scalar    identity
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), complete() 
    string            scalar    copy() 
    string            scalar    domain() 
    string            scalar    invert() 
    string            scalar    range() 
    string            scalar    tickFormat() 
    string            scalar    ticks() 

}

string scalar d3identity::get() { 
    return(this.identity)
}

string scalar d3identity::complete() { 
    string scalar identityObject 
    identityObject = this.get() + ";"
    return(identityObject)
}

string scalar d3identity::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "identity()"
    return(jsvarname)
}

void d3identity::new() {
    this.identity = this.setVarnm(STidentity)
}

string scalar d3identity::copy(string scalar x) { 
    string scalar identity 
    this.identity = this.get() + ".copy(" + x + ")"
    return(identity)
}

string scalar d3identity::domain(string scalar x) { 
    string scalar identity 
    this.identity = this.get() + ".domain(" + x + ")"
    return(identity)
}

string scalar d3identity::invert(string scalar x) { 
    string scalar identity 
    this.identity = this.get() + ".invert(" + x + ")"
    return(identity)
}

string scalar d3identity::range(string scalar x) { 
    string scalar identity 
    this.identity = this.get() + ".range(" + x + ")"
    return(identity)
}

string scalar d3identity::tickFormat(string scalar x) { 
    string scalar identity 
    this.identity = this.get() + ".tickFormat(" + x + ")"
    return(identity)
}

string scalar d3identity::ticks(string scalar x) { 
    string scalar identity 
    this.identity = this.get() + ".ticks(" + x + ")"
    return(identity)
}

end


