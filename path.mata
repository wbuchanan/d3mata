mata: 

class d3path extends d3 { 

    private   string  scalar    path
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), end() 
    string            scalar    area() 
    string            scalar    bounds() 
    string            scalar    centroid() 
    string            scalar    context() 
    string            scalar    pointRadius() 
    string            scalar    projection() 

}

string scalar d3path::get() { 
    return(this.path)
}

string scalar d3path::end() { 
    string scalar pathObject 
    pathObject = this.get() + ";"
    return(pathObject)
}

string scalar d3path::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "path"
    return(jsvarname)
}

void d3path::new() {
    this.path = this.setVarnm(STpath)
}

string scalar d3path::area(string scalar x) { 
    string scalar path 
    this.path = this.get() + ".area(" + x + ")"
    return(path)
}

string scalar d3path::bounds(string scalar x) { 
    string scalar path 
    this.path = this.get() + ".bounds(" + x + ")"
    return(path)
}

string scalar d3path::centroid(string scalar x) { 
    string scalar path 
    this.path = this.get() + ".centroid(" + x + ")"
    return(path)
}

string scalar d3path::context(string scalar x) { 
    string scalar path 
    this.path = this.get() + ".context(" + x + ")"
    return(path)
}

string scalar d3path::pointRadius(string scalar x) { 
    string scalar path 
    this.path = this.get() + ".pointRadius(" + x + ")"
    return(path)
}

string scalar d3path::projection(string scalar x) { 
    string scalar path 
    this.path = this.get() + ".projection(" + x + ")"
    return(path)
}

end


