mata: 

class d3polygon { 

    string            scalar    polygon
    void              new()
    string            scalar    get() 
    string            scalar    area() 
    string            scalar    centroid() 
    string            scalar    clip() 

}

string scalar d3polygon::get() { 
    return(this.polygon)
}

void d3polygon::new() {
    this.polygon = "polygon"
}

string scalar d3polygon::area(string scalar x) { 
    string scalar polygon 
    polygon = this.get() + ".area(" + x + ")"
    return(polygon)
}

string scalar d3polygon::centroid(string scalar x) { 
    string scalar polygon 
    polygon = this.get() + ".centroid(" + x + ")"
    return(polygon)
}

string scalar d3polygon::clip(string scalar x) { 
    string scalar polygon 
    polygon = this.get() + ".clip(" + x + ")"
    return(polygon)
}

end


