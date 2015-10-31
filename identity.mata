mata: 

class d3identity { 

    string            scalar    identity
    void              new()
    string            scalar    get() 
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

void d3identity::new() {
    this.identity = "identity"
}

string scalar d3identity::copy(string scalar x) { 
    string scalar identity 
    identity = this.get() + ".copy(" + x + ")"
    return(identity)
}

string scalar d3identity::domain(string scalar x) { 
    string scalar identity 
    identity = this.get() + ".domain(" + x + ")"
    return(identity)
}

string scalar d3identity::invert(string scalar x) { 
    string scalar identity 
    identity = this.get() + ".invert(" + x + ")"
    return(identity)
}

string scalar d3identity::range(string scalar x) { 
    string scalar identity 
    identity = this.get() + ".range(" + x + ")"
    return(identity)
}

string scalar d3identity::tickFormat(string scalar x) { 
    string scalar identity 
    identity = this.get() + ".tickFormat(" + x + ")"
    return(identity)
}

string scalar d3identity::ticks(string scalar x) { 
    string scalar identity 
    identity = this.get() + ".ticks(" + x + ")"
    return(identity)
}

end


