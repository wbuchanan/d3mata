mata: 

class d3zoom { 

    string            scalar    zoom
    void              new()
    string            scalar    get() 
    string            scalar    center() 
    string            scalar    duration() 
    string            scalar    event() 
    string            scalar    on() 
    string            scalar    scale() 
    string            scalar    scaleExtent() 
    string            scalar    size() 
    string            scalar    translate() 
    string            scalar    x() 
    string            scalar    y() 

}

string scalar d3zoom::get() { 
    return(this.zoom)
}

void d3zoom::new() {
    this.zoom = "zoom"
}

string scalar d3zoom::center(string scalar x) { 
    string scalar zoom 
    zoom = this.get() + ".center(" + x + ")"
    return(zoom)
}

string scalar d3zoom::duration(string scalar x) { 
    string scalar zoom 
    zoom = this.get() + ".duration(" + x + ")"
    return(zoom)
}

string scalar d3zoom::event(string scalar x) { 
    string scalar zoom 
    zoom = this.get() + ".event(" + x + ")"
    return(zoom)
}

string scalar d3zoom::on(string scalar x) { 
    string scalar zoom 
    zoom = this.get() + ".on(" + x + ")"
    return(zoom)
}

string scalar d3zoom::scale(string scalar x) { 
    string scalar zoom 
    zoom = this.get() + ".scale(" + x + ")"
    return(zoom)
}

string scalar d3zoom::scaleExtent(string scalar x) { 
    string scalar zoom 
    zoom = this.get() + ".scaleExtent(" + x + ")"
    return(zoom)
}

string scalar d3zoom::size(string scalar x) { 
    string scalar zoom 
    zoom = this.get() + ".size(" + x + ")"
    return(zoom)
}

string scalar d3zoom::translate(string scalar x) { 
    string scalar zoom 
    zoom = this.get() + ".translate(" + x + ")"
    return(zoom)
}

string scalar d3zoom::x(string scalar x) { 
    string scalar zoom 
    zoom = this.get() + ".x(" + x + ")"
    return(zoom)
}

string scalar d3zoom::y(string scalar x) { 
    string scalar zoom 
    zoom = this.get() + ".y(" + x + ")"
    return(zoom)
}

end


