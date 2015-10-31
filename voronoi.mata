mata: 

class d3voronoi { 

    string            scalar    voronoi
    void              new()
    string            scalar    get() 
    string            scalar    clipExtent() 
    string            scalar    links() 
    string            scalar    triangles() 
    string            scalar    x() 
    string            scalar    y() 

}

string scalar d3voronoi::get() { 
    return(this.voronoi)
}

void d3voronoi::new() {
    this.voronoi = "voronoi"
}

string scalar d3voronoi::clipExtent(string scalar x) { 
    string scalar voronoi 
    voronoi = this.get() + ".clipExtent(" + x + ")"
    return(voronoi)
}

string scalar d3voronoi::links(string scalar x) { 
    string scalar voronoi 
    voronoi = this.get() + ".links(" + x + ")"
    return(voronoi)
}

string scalar d3voronoi::triangles(string scalar x) { 
    string scalar voronoi 
    voronoi = this.get() + ".triangles(" + x + ")"
    return(voronoi)
}

string scalar d3voronoi::x(string scalar x) { 
    string scalar voronoi 
    voronoi = this.get() + ".x(" + x + ")"
    return(voronoi)
}

string scalar d3voronoi::y(string scalar x) { 
    string scalar voronoi 
    voronoi = this.get() + ".y(" + x + ")"
    return(voronoi)
}

end


