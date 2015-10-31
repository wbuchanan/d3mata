mata: 

class d3projection { 

    string            scalar    projection
    void              new()
    string            scalar    get() 
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

void d3projection::new() {
    this.projection = "projection"
}

string scalar d3projection::center(string scalar x) { 
    string scalar projection 
    projection = this.get() + ".center(" + x + ")"
    return(projection)
}

string scalar d3projection::clipAngle(string scalar x) { 
    string scalar projection 
    projection = this.get() + ".clipAngle(" + x + ")"
    return(projection)
}

string scalar d3projection::clipExtent(string scalar x) { 
    string scalar projection 
    projection = this.get() + ".clipExtent(" + x + ")"
    return(projection)
}

string scalar d3projection::invert(string scalar x) { 
    string scalar projection 
    projection = this.get() + ".invert(" + x + ")"
    return(projection)
}

string scalar d3projection::precision(string scalar x) { 
    string scalar projection 
    projection = this.get() + ".precision(" + x + ")"
    return(projection)
}

string scalar d3projection::rotate(string scalar x) { 
    string scalar projection 
    projection = this.get() + ".rotate(" + x + ")"
    return(projection)
}

string scalar d3projection::scale(string scalar x) { 
    string scalar projection 
    projection = this.get() + ".scale(" + x + ")"
    return(projection)
}

string scalar d3projection::stream(string scalar x) { 
    string scalar projection 
    projection = this.get() + ".stream(" + x + ")"
    return(projection)
}

string scalar d3projection::translate(string scalar x) { 
    string scalar projection 
    projection = this.get() + ".translate(" + x + ")"
    return(projection)
}

end


