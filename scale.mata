mata: 

class d3scale extends d3 { 

    private   string  scalar    scale
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), end() 
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

string scalar d3scale::get() { 
    return(this.scale)
}

string scalar d3scale::end() { 
    string scalar scaleObject 
    scaleObject = this.get() + ";"
    return(scaleObject)
}

string scalar d3scale::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "scale"
    return(jsvarname)
}

void d3scale::new() {
    this.scale = this.setVarnm(STscale)
}

string scalar d3scale::clamp(string scalar x) { 
    string scalar scale 
    this.scale = this.get() + ".clamp(" + x + ")"
    return(scale)
}

string scalar d3scale::copy(string scalar x) { 
    string scalar scale 
    this.scale = this.get() + ".copy(" + x + ")"
    return(scale)
}

string scalar d3scale::domain(string scalar x) { 
    string scalar scale 
    this.scale = this.get() + ".domain(" + x + ")"
    return(scale)
}

string scalar d3scale::interpolate(string scalar x) { 
    string scalar scale 
    this.scale = this.get() + ".interpolate(" + x + ")"
    return(scale)
}

string scalar d3scale::invert(string scalar x) { 
    string scalar scale 
    this.scale = this.get() + ".invert(" + x + ")"
    return(scale)
}

string scalar d3scale::nice(string scalar x) { 
    string scalar scale 
    this.scale = this.get() + ".nice(" + x + ")"
    return(scale)
}

string scalar d3scale::range(string scalar x) { 
    string scalar scale 
    this.scale = this.get() + ".range(" + x + ")"
    return(scale)
}

string scalar d3scale::rangeRound(string scalar x) { 
    string scalar scale 
    this.scale = this.get() + ".rangeRound(" + x + ")"
    return(scale)
}

string scalar d3scale::tickFormat(string scalar x) { 
    string scalar scale 
    this.scale = this.get() + ".tickFormat(" + x + ")"
    return(scale)
}

string scalar d3scale::ticks(string scalar x) { 
    string scalar scale 
    this.scale = this.get() + ".ticks(" + x + ")"
    return(scale)
}

end


