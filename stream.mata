mata: 

class d3stream { 

    private   string  scalar    stream
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), complete() 
    string            scalar    lineEnd() 
    string            scalar    lineStart() 
    string            scalar    point() 
    string            scalar    polygonEnd() 
    string            scalar    polygonStart() 
    string            scalar    sphere() 

}

string scalar d3stream::get() { 
    return(this.stream)
}

string scalar d3stream::complete() { 
    string scalar streamObject 
    streamObject = this.get() + ";"
    return(streamObject)
}

string scalar d3stream::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "stream()"
    return(jsvarname)
}

void d3stream::new() {
    this.stream = this.setVarnm(STstream)
}

string scalar d3stream::lineEnd(string scalar x) { 
    string scalar stream 
    this.stream = this.get() + ".lineEnd(" + x + ")"
    return(stream)
}

string scalar d3stream::lineStart(string scalar x) { 
    string scalar stream 
    this.stream = this.get() + ".lineStart(" + x + ")"
    return(stream)
}

string scalar d3stream::point(string scalar x) { 
    string scalar stream 
    this.stream = this.get() + ".point(" + x + ")"
    return(stream)
}

string scalar d3stream::polygonEnd(string scalar x) { 
    string scalar stream 
    this.stream = this.get() + ".polygonEnd(" + x + ")"
    return(stream)
}

string scalar d3stream::polygonStart(string scalar x) { 
    string scalar stream 
    this.stream = this.get() + ".polygonStart(" + x + ")"
    return(stream)
}

string scalar d3stream::sphere(string scalar x) { 
    string scalar stream 
    this.stream = this.get() + ".sphere(" + x + ")"
    return(stream)
}

end


