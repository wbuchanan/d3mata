mata: 

class d3linear { 

    private   string  scalar    linear
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), complete() 
    string            scalar    clamp() 
    string            scalar    copy() 
    string            scalar    domain() 
    string            scalar    interpolate() 
    string            scalar    invert() 
    string            scalar    nice() 
    string            scalar    range() 
    string            scalar    rangeRound() 
    string            scalar    tickFormat() 
    string            scalar    ticks() 

}

string scalar d3linear::get() { 
    return(this.linear)
}

string scalar d3linear::complete() { 
    string scalar linearObject 
    linearObject = this.get() + ";"
    return(linearObject)
}

string scalar d3linear::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "linear()"
    return(jsvarname)
}

void d3linear::new() {
    this.linear = this.setVarnm(STlinear)
}

string scalar d3linear::clamp(string scalar x) { 
    string scalar linear 
    this.linear = this.get() + ".clamp(" + x + ")"
    return(linear)
}

string scalar d3linear::copy(string scalar x) { 
    string scalar linear 
    this.linear = this.get() + ".copy(" + x + ")"
    return(linear)
}

string scalar d3linear::domain(string scalar x) { 
    string scalar linear 
    this.linear = this.get() + ".domain(" + x + ")"
    return(linear)
}

string scalar d3linear::interpolate(string scalar x) { 
    string scalar linear 
    this.linear = this.get() + ".interpolate(" + x + ")"
    return(linear)
}

string scalar d3linear::invert(string scalar x) { 
    string scalar linear 
    this.linear = this.get() + ".invert(" + x + ")"
    return(linear)
}

string scalar d3linear::nice(string scalar x) { 
    string scalar linear 
    this.linear = this.get() + ".nice(" + x + ")"
    return(linear)
}

string scalar d3linear::range(string scalar x) { 
    string scalar linear 
    this.linear = this.get() + ".range(" + x + ")"
    return(linear)
}

string scalar d3linear::rangeRound(string scalar x) { 
    string scalar linear 
    this.linear = this.get() + ".rangeRound(" + x + ")"
    return(linear)
}

string scalar d3linear::tickFormat(string scalar x) { 
    string scalar linear 
    this.linear = this.get() + ".tickFormat(" + x + ")"
    return(linear)
}

string scalar d3linear::ticks(string scalar x) { 
    string scalar linear 
    this.linear = this.get() + ".ticks(" + x + ")"
    return(linear)
}

end


