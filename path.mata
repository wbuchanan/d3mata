mata: 

class d3path { 

    string            scalar    path
    void              new()
    string            scalar    get() 
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

void d3path::new() {
    this.path = "path"
}

string scalar d3path::area(string scalar x) { 
    string scalar path 
    path = this.get() + ".area(" + x + ")"
    return(path)
}

string scalar d3path::bounds(string scalar x) { 
    string scalar path 
    path = this.get() + ".bounds(" + x + ")"
    return(path)
}

string scalar d3path::centroid(string scalar x) { 
    string scalar path 
    path = this.get() + ".centroid(" + x + ")"
    return(path)
}

string scalar d3path::context(string scalar x) { 
    string scalar path 
    path = this.get() + ".context(" + x + ")"
    return(path)
}

string scalar d3path::pointRadius(string scalar x) { 
    string scalar path 
    path = this.get() + ".pointRadius(" + x + ")"
    return(path)
}

string scalar d3path::projection(string scalar x) { 
    string scalar path 
    path = this.get() + ".projection(" + x + ")"
    return(path)
}

end


