mata: 

class d3line extends d3 { 

    private   string  scalar    line
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), end() 
    string            scalar    angle() 
    string            scalar    defined() 
    string            scalar    interpolate() 
    string            scalar    radius() 
    string            scalar    tension() 
    string            scalar    x() 
    string            scalar    y() 

}

string scalar d3line::get() { 
    return(this.line)
}

string scalar d3line::end() { 
    string scalar lineObject 
    lineObject = this.get() + ";"
    return(lineObject)
}

string scalar d3line::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "line"
    return(jsvarname)
}

void d3line::new() {
    this.line = this.setVarnm(STline)
}

string scalar d3line::angle(string scalar x) { 
    string scalar line 
    this.line = this.get() + ".angle(" + x + ")"
    return(line)
}

string scalar d3line::defined(string scalar x) { 
    string scalar line 
    this.line = this.get() + ".defined(" + x + ")"
    return(line)
}

string scalar d3line::interpolate(string scalar x) { 
    string scalar line 
    this.line = this.get() + ".interpolate(" + x + ")"
    return(line)
}

string scalar d3line::radius(string scalar x) { 
    string scalar line 
    this.line = this.get() + ".radius(" + x + ")"
    return(line)
}

string scalar d3line::tension(string scalar x) { 
    string scalar line 
    this.line = this.get() + ".tension(" + x + ")"
    return(line)
}

string scalar d3line::x(string scalar x) { 
    string scalar line 
    this.line = this.get() + ".x(" + x + ")"
    return(line)
}

string scalar d3line::y(string scalar x) { 
    string scalar line 
    this.line = this.get() + ".y(" + x + ")"
    return(line)
}

end


