mata: 

class d3graticule { 

    private   string  scalar    graticule
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), complete() 
    string            scalar    extent() 
    string            scalar    lines() 
    string            scalar    majorExtent() 
    string            scalar    majorStep() 
    string            scalar    minorExtent() 
    string            scalar    minorStep() 
    string            scalar    outline() 
    string            scalar    precision() 
    string            scalar    step() 

}

string scalar d3graticule::get() { 
    return(this.graticule)
}

string scalar d3graticule::complete() { 
    string scalar graticuleObject 
    graticuleObject = this.get() + ";"
    return(graticuleObject)
}

string scalar d3graticule::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "graticule()"
    return(jsvarname)
}

void d3graticule::new() {
    this.graticule = this.setVarnm(STgraticule)
}

string scalar d3graticule::extent(string scalar x) { 
    string scalar graticule 
    this.graticule = this.get() + ".extent(" + x + ")"
    return(graticule)
}

string scalar d3graticule::lines(string scalar x) { 
    string scalar graticule 
    this.graticule = this.get() + ".lines(" + x + ")"
    return(graticule)
}

string scalar d3graticule::majorExtent(string scalar x) { 
    string scalar graticule 
    this.graticule = this.get() + ".majorExtent(" + x + ")"
    return(graticule)
}

string scalar d3graticule::majorStep(string scalar x) { 
    string scalar graticule 
    this.graticule = this.get() + ".majorStep(" + x + ")"
    return(graticule)
}

string scalar d3graticule::minorExtent(string scalar x) { 
    string scalar graticule 
    this.graticule = this.get() + ".minorExtent(" + x + ")"
    return(graticule)
}

string scalar d3graticule::minorStep(string scalar x) { 
    string scalar graticule 
    this.graticule = this.get() + ".minorStep(" + x + ")"
    return(graticule)
}

string scalar d3graticule::outline(string scalar x) { 
    string scalar graticule 
    this.graticule = this.get() + ".outline(" + x + ")"
    return(graticule)
}

string scalar d3graticule::precision(string scalar x) { 
    string scalar graticule 
    this.graticule = this.get() + ".precision(" + x + ")"
    return(graticule)
}

string scalar d3graticule::step(string scalar x) { 
    string scalar graticule 
    this.graticule = this.get() + ".step(" + x + ")"
    return(graticule)
}

end


