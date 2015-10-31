mata: 

class d3polygon extends d3 { 

    private   string  scalar    polygon
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), end() 
    string            scalar    area() 
    string            scalar    centroid() 
    string            scalar    clip() 

}

string scalar d3polygon::get() { 
    return(this.polygon)
}

string scalar d3polygon::end() { 
    string scalar polygonObject 
    polygonObject = this.get() + ";"
    return(polygonObject)
}

string scalar d3polygon::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "polygon"
    return(jsvarname)
}

void d3polygon::new() {
    this.polygon = this.setVarnm(STpolygon)
}

string scalar d3polygon::area(string scalar x) { 
    string scalar polygon 
    this.polygon = this.get() + ".area(" + x + ")"
    return(polygon)
}

string scalar d3polygon::centroid(string scalar x) { 
    string scalar polygon 
    this.polygon = this.get() + ".centroid(" + x + ")"
    return(polygon)
}

string scalar d3polygon::clip(string scalar x) { 
    string scalar polygon 
    this.polygon = this.get() + ".clip(" + x + ")"
    return(polygon)
}

end


