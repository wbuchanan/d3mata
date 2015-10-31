mata: 

class d3pow { 

    string            scalar    pow
    void              new()
    string            scalar    get() 
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

void d3pow::new() {
    this.pow = "pow"
}

string scalar d3pow::clamp(string scalar x) { 
    string scalar pow 
    pow = this.get() + ".clamp(" + x + ")"
    return(pow)
}

string scalar d3pow::copy(string scalar x) { 
    string scalar pow 
    pow = this.get() + ".copy(" + x + ")"
    return(pow)
}

string scalar d3pow::domain(string scalar x) { 
    string scalar pow 
    pow = this.get() + ".domain(" + x + ")"
    return(pow)
}

string scalar d3pow::exponent(string scalar x) { 
    string scalar pow 
    pow = this.get() + ".exponent(" + x + ")"
    return(pow)
}

string scalar d3pow::interpolate(string scalar x) { 
    string scalar pow 
    pow = this.get() + ".interpolate(" + x + ")"
    return(pow)
}

string scalar d3pow::invert(string scalar x) { 
    string scalar pow 
    pow = this.get() + ".invert(" + x + ")"
    return(pow)
}

string scalar d3pow::nice(string scalar x) { 
    string scalar pow 
    pow = this.get() + ".nice(" + x + ")"
    return(pow)
}

string scalar d3pow::range(string scalar x) { 
    string scalar pow 
    pow = this.get() + ".range(" + x + ")"
    return(pow)
}

string scalar d3pow::rangeRound(string scalar x) { 
    string scalar pow 
    pow = this.get() + ".rangeRound(" + x + ")"
    return(pow)
}

string scalar d3pow::tickFormat(string scalar x) { 
    string scalar pow 
    pow = this.get() + ".tickFormat(" + x + ")"
    return(pow)
}

string scalar d3pow::ticks(string scalar x) { 
    string scalar pow 
    pow = this.get() + ".ticks(" + x + ")"
    return(pow)
}

end


