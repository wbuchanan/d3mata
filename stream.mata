mata: 

class d3stream { 

    string            scalar    stream
    void              new()
    string            scalar    get() 
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

void d3stream::new() {
    this.stream = "stream"
}

string scalar d3stream::lineEnd(string scalar x) { 
    string scalar stream 
    stream = this.get() + ".lineEnd(" + x + ")"
    return(stream)
}

string scalar d3stream::lineStart(string scalar x) { 
    string scalar stream 
    stream = this.get() + ".lineStart(" + x + ")"
    return(stream)
}

string scalar d3stream::point(string scalar x) { 
    string scalar stream 
    stream = this.get() + ".point(" + x + ")"
    return(stream)
}

string scalar d3stream::polygonEnd(string scalar x) { 
    string scalar stream 
    stream = this.get() + ".polygonEnd(" + x + ")"
    return(stream)
}

string scalar d3stream::polygonStart(string scalar x) { 
    string scalar stream 
    stream = this.get() + ".polygonStart(" + x + ")"
    return(stream)
}

string scalar d3stream::sphere(string scalar x) { 
    string scalar stream 
    stream = this.get() + ".sphere(" + x + ")"
    return(stream)
}

end


