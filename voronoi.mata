mata: 

class d3voronoi { 

    private   string  scalar    voronoi
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), complete() 
    string            scalar    clipExtent() 
    string            scalar    links() 
    string            scalar    triangles() 
    string            scalar    x() 
    string            scalar    y() 

}

string scalar d3voronoi::get() { 
    return(this.voronoi)
}

string scalar d3voronoi::complete() { 
    string scalar voronoiObject 
    voronoiObject = this.get() + ";"
    return(voronoiObject)
}

string scalar d3voronoi::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "voronoi()"
    return(jsvarname)
}

void d3voronoi::new() {
    this.voronoi = this.setVarnm(STvoronoi)
}

string scalar d3voronoi::clipExtent(string scalar x) { 
    string scalar voronoi 
    this.voronoi = this.get() + ".clipExtent(" + x + ")"
    return(voronoi)
}

string scalar d3voronoi::links(string scalar x) { 
    string scalar voronoi 
    this.voronoi = this.get() + ".links(" + x + ")"
    return(voronoi)
}

string scalar d3voronoi::triangles(string scalar x) { 
    string scalar voronoi 
    this.voronoi = this.get() + ".triangles(" + x + ")"
    return(voronoi)
}

string scalar d3voronoi::x(string scalar x) { 
    string scalar voronoi 
    this.voronoi = this.get() + ".x(" + x + ")"
    return(voronoi)
}

string scalar d3voronoi::y(string scalar x) { 
    string scalar voronoi 
    this.voronoi = this.get() + ".y(" + x + ")"
    return(voronoi)
}

end


