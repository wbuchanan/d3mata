mata: 

class d3projection extends d3 { 

    private   string  scalar    projection
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), end() 
    string            scalar    center() 
    string            scalar    clipAngle() 
    string            scalar    clipExtent() 
    string            scalar    invert() 
    string            scalar    precision() 
    string            scalar    rotate() 
    string            scalar    scale() 
    string            scalar    stream() 
    string            scalar    translate() 

}

string scalar d3projection::get() { 
    return(this.projection)
}

string scalar d3projection::end() { 
    string scalar projectionObject 
    projectionObject = this.get() + ";"
    return(projectionObject)
}

string scalar d3projection::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "projection"
    return(jsvarname)
}

void d3projection::new() {
    this.projection = this.setVarnm(STprojection)
}

string scalar d3projection::center(string scalar x) { 
    string scalar projection 
    this.projection = this.get() + ".center(" + x + ")"
    return(projection)
}

string scalar d3projection::clipAngle(string scalar x) { 
    string scalar projection 
    this.projection = this.get() + ".clipAngle(" + x + ")"
    return(projection)
}

string scalar d3projection::clipExtent(string scalar x) { 
    string scalar projection 
    this.projection = this.get() + ".clipExtent(" + x + ")"
    return(projection)
}

string scalar d3projection::invert(string scalar x) { 
    string scalar projection 
    this.projection = this.get() + ".invert(" + x + ")"
    return(projection)
}

string scalar d3projection::precision(string scalar x) { 
    string scalar projection 
    this.projection = this.get() + ".precision(" + x + ")"
    return(projection)
}

string scalar d3projection::rotate(string scalar x) { 
    string scalar projection 
    this.projection = this.get() + ".rotate(" + x + ")"
    return(projection)
}

string scalar d3projection::scale(string scalar x) { 
    string scalar projection 
    this.projection = this.get() + ".scale(" + x + ")"
    return(projection)
}

string scalar d3projection::stream(string scalar x) { 
    string scalar projection 
    this.projection = this.get() + ".stream(" + x + ")"
    return(projection)
}

string scalar d3projection::translate(string scalar x) { 
    string scalar projection 
    this.projection = this.get() + ".translate(" + x + ")"
    return(projection)
}

end


