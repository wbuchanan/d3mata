mata: 

class d3ordinal { 

    private   string  scalar    ordinal
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), complete() 
    string            scalar    copy() 
    string            scalar    domain() 
    string            scalar    range() 
    string            scalar    rangeBand() 
    string            scalar    rangeBands() 
    string            scalar    rangeExtent() 
    string            scalar    rangePoints() 
    string            scalar    rangeRoundBands() 
    string            scalar    rangeRoundPoints() 

}

string scalar d3ordinal::get() { 
    return(this.ordinal)
}

string scalar d3ordinal::complete() { 
    string scalar ordinalObject 
    ordinalObject = this.get() + ";"
    return(ordinalObject)
}

string scalar d3ordinal::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "ordinal()"
    return(jsvarname)
}

void d3ordinal::new() {
    this.ordinal = this.setVarnm(STordinal)
}

string scalar d3ordinal::copy(string scalar x) { 
    string scalar ordinal 
    this.ordinal = this.get() + ".copy(" + x + ")"
    return(ordinal)
}

string scalar d3ordinal::domain(string scalar x) { 
    string scalar ordinal 
    this.ordinal = this.get() + ".domain(" + x + ")"
    return(ordinal)
}

string scalar d3ordinal::range(string scalar x) { 
    string scalar ordinal 
    this.ordinal = this.get() + ".range(" + x + ")"
    return(ordinal)
}

string scalar d3ordinal::rangeBand(string scalar x) { 
    string scalar ordinal 
    this.ordinal = this.get() + ".rangeBand(" + x + ")"
    return(ordinal)
}

string scalar d3ordinal::rangeBands(string scalar x) { 
    string scalar ordinal 
    this.ordinal = this.get() + ".rangeBands(" + x + ")"
    return(ordinal)
}

string scalar d3ordinal::rangeExtent(string scalar x) { 
    string scalar ordinal 
    this.ordinal = this.get() + ".rangeExtent(" + x + ")"
    return(ordinal)
}

string scalar d3ordinal::rangePoints(string scalar x) { 
    string scalar ordinal 
    this.ordinal = this.get() + ".rangePoints(" + x + ")"
    return(ordinal)
}

string scalar d3ordinal::rangeRoundBands(string scalar x) { 
    string scalar ordinal 
    this.ordinal = this.get() + ".rangeRoundBands(" + x + ")"
    return(ordinal)
}

string scalar d3ordinal::rangeRoundPoints(string scalar x) { 
    string scalar ordinal 
    this.ordinal = this.get() + ".rangeRoundPoints(" + x + ")"
    return(ordinal)
}

end


