mata: 

class d3arc extends d3 { 

    private   string  scalar    arc
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), end() 
    string            scalar    centroid() 
    string            scalar    cornerRadius() 
    string            scalar    endAngle() 
    string            scalar    innerRadius() 
    string            scalar    outerRadius() 
    string            scalar    padAngle() 
    string            scalar    padRadius() 
    string            scalar    startAngle() 

}

string scalar d3arc::get() { 
    return(this.arc)
}

string scalar d3arc::end() { 
    string scalar arcObject 
    arcObject = this.get() + ";"
    return(arcObject)
}

string scalar d3arc::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "arc"
    return(jsvarname)
}

void d3arc::new() {
    this.arc = this.setVarnm(STarc)
}

string scalar d3arc::centroid(string scalar x) { 
    string scalar arc 
    this.arc = this.get() + ".centroid(" + x + ")"
    return(arc)
}

string scalar d3arc::cornerRadius(string scalar x) { 
    string scalar arc 
    this.arc = this.get() + ".cornerRadius(" + x + ")"
    return(arc)
}

string scalar d3arc::endAngle(string scalar x) { 
    string scalar arc 
    this.arc = this.get() + ".endAngle(" + x + ")"
    return(arc)
}

string scalar d3arc::innerRadius(string scalar x) { 
    string scalar arc 
    this.arc = this.get() + ".innerRadius(" + x + ")"
    return(arc)
}

string scalar d3arc::outerRadius(string scalar x) { 
    string scalar arc 
    this.arc = this.get() + ".outerRadius(" + x + ")"
    return(arc)
}

string scalar d3arc::padAngle(string scalar x) { 
    string scalar arc 
    this.arc = this.get() + ".padAngle(" + x + ")"
    return(arc)
}

string scalar d3arc::padRadius(string scalar x) { 
    string scalar arc 
    this.arc = this.get() + ".padRadius(" + x + ")"
    return(arc)
}

string scalar d3arc::startAngle(string scalar x) { 
    string scalar arc 
    this.arc = this.get() + ".startAngle(" + x + ")"
    return(arc)
}

end


