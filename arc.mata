mata: 

class d3arc { 

    string            scalar    arc
    void              new()
    string            scalar    get() 
    string            scalar    centroid() 
    string            scalar    cornerRadius() 
    string            scalar    endAngle() 
    string            scalar    innerRadius() 
    string            scalar    outerRadius() 
    string            scalar    padAngle() 
    string            scalar    padRadius() 
    string            scalar    startAngle() 

}

string scalar d3arc::get() { 
    return(this.arc)
}

void d3arc::new() {
    this.arc = "arc"
}

string scalar d3arc::centroid(string scalar x) { 
    string scalar arc 
    arc = this.get() + ".centroid(" + x + ")"
    return(arc)
}

string scalar d3arc::cornerRadius(string scalar x) { 
    string scalar arc 
    arc = this.get() + ".cornerRadius(" + x + ")"
    return(arc)
}

string scalar d3arc::endAngle(string scalar x) { 
    string scalar arc 
    arc = this.get() + ".endAngle(" + x + ")"
    return(arc)
}

string scalar d3arc::innerRadius(string scalar x) { 
    string scalar arc 
    arc = this.get() + ".innerRadius(" + x + ")"
    return(arc)
}

string scalar d3arc::outerRadius(string scalar x) { 
    string scalar arc 
    arc = this.get() + ".outerRadius(" + x + ")"
    return(arc)
}

string scalar d3arc::padAngle(string scalar x) { 
    string scalar arc 
    arc = this.get() + ".padAngle(" + x + ")"
    return(arc)
}

string scalar d3arc::padRadius(string scalar x) { 
    string scalar arc 
    arc = this.get() + ".padRadius(" + x + ")"
    return(arc)
}

string scalar d3arc::startAngle(string scalar x) { 
    string scalar arc 
    arc = this.get() + ".startAngle(" + x + ")"
    return(arc)
}

end


