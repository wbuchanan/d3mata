mata: 

class d3pow { 

    private   string  scalar    pow
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), complete() 
    string            scalar    clamp() 
    string            scalar    copy() 
    string            scalar    domain() 
    string            scalar    exponent() 
    string            scalar    interpolate() 
    string            scalar    invert() 
    string            scalar    nice() 
    string            scalar    range() 
    string            scalar    rangeRound() 
    string            scalar    tickFormat() 
    string            scalar    ticks() 

}

string scalar d3pow::get() { 
    return(this.pow)
}

string scalar d3pow::complete() { 
    string scalar powObject 
    powObject = this.get() + ";"
    return(powObject)
}

string scalar d3pow::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "pow()"
    return(jsvarname)
}

void d3pow::new() {
    this.pow = this.setVarnm(STpow)
}

string scalar d3pow::clamp(string scalar x) { 
    string scalar pow 
    this.pow = this.get() + ".clamp(" + x + ")"
    return(pow)
}

string scalar d3pow::copy(string scalar x) { 
    string scalar pow 
    this.pow = this.get() + ".copy(" + x + ")"
    return(pow)
}

string scalar d3pow::domain(string scalar x) { 
    string scalar pow 
    this.pow = this.get() + ".domain(" + x + ")"
    return(pow)
}

string scalar d3pow::exponent(string scalar x) { 
    string scalar pow 
    this.pow = this.get() + ".exponent(" + x + ")"
    return(pow)
}

string scalar d3pow::interpolate(string scalar x) { 
    string scalar pow 
    this.pow = this.get() + ".interpolate(" + x + ")"
    return(pow)
}

string scalar d3pow::invert(string scalar x) { 
    string scalar pow 
    this.pow = this.get() + ".invert(" + x + ")"
    return(pow)
}

string scalar d3pow::nice(string scalar x) { 
    string scalar pow 
    this.pow = this.get() + ".nice(" + x + ")"
    return(pow)
}

string scalar d3pow::range(string scalar x) { 
    string scalar pow 
    this.pow = this.get() + ".range(" + x + ")"
    return(pow)
}

string scalar d3pow::rangeRound(string scalar x) { 
    string scalar pow 
    this.pow = this.get() + ".rangeRound(" + x + ")"
    return(pow)
}

string scalar d3pow::tickFormat(string scalar x) { 
    string scalar pow 
    this.pow = this.get() + ".tickFormat(" + x + ")"
    return(pow)
}

string scalar d3pow::ticks(string scalar x) { 
    string scalar pow 
    this.pow = this.get() + ".ticks(" + x + ")"
    return(pow)
}

end


