mata: 

class d3interval extends d3 { 

    private   string  scalar    interval
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), end() 
    string            scalar    ceil() 
    string            scalar    floor() 
    string            scalar    offset() 
    string            scalar    range() 
    string            scalar    round() 
    string            scalar    utc() 

}

string scalar d3interval::get() { 
    return(this.interval)
}

string scalar d3interval::end() { 
    string scalar intervalObject 
    intervalObject = this.get() + ";"
    return(intervalObject)
}

string scalar d3interval::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "interval"
    return(jsvarname)
}

void d3interval::new() {
    this.interval = this.setVarnm(STinterval)
}

string scalar d3interval::ceil(string scalar x) { 
    string scalar interval 
    this.interval = this.get() + ".ceil(" + x + ")"
    return(interval)
}

string scalar d3interval::floor(string scalar x) { 
    string scalar interval 
    this.interval = this.get() + ".floor(" + x + ")"
    return(interval)
}

string scalar d3interval::offset(string scalar x) { 
    string scalar interval 
    this.interval = this.get() + ".offset(" + x + ")"
    return(interval)
}

string scalar d3interval::range(string scalar x) { 
    string scalar interval 
    this.interval = this.get() + ".range(" + x + ")"
    return(interval)
}

string scalar d3interval::round(string scalar x) { 
    string scalar interval 
    this.interval = this.get() + ".round(" + x + ")"
    return(interval)
}

string scalar d3interval::utc(string scalar x) { 
    string scalar interval 
    this.interval = this.get() + ".utc(" + x + ")"
    return(interval)
}

end


