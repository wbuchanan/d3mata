mata: 

class d3zoom extends d3 { 

    private   string  scalar    zoom
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), end() 
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

string scalar d3zoom::end() { 
    string scalar zoomObject 
    zoomObject = this.get() + ";"
    return(zoomObject)
}

string scalar d3zoom::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "zoom"
    return(jsvarname)
}

void d3zoom::new() {
    this.zoom = this.setVarnm(STzoom)
}

string scalar d3zoom::center(string scalar x) { 
    string scalar zoom 
    this.zoom = this.get() + ".center(" + x + ")"
    return(zoom)
}

string scalar d3zoom::duration(string scalar x) { 
    string scalar zoom 
    this.zoom = this.get() + ".duration(" + x + ")"
    return(zoom)
}

string scalar d3zoom::event(string scalar x) { 
    string scalar zoom 
    this.zoom = this.get() + ".event(" + x + ")"
    return(zoom)
}

string scalar d3zoom::on(string scalar x) { 
    string scalar zoom 
    this.zoom = this.get() + ".on(" + x + ")"
    return(zoom)
}

string scalar d3zoom::scale(string scalar x) { 
    string scalar zoom 
    this.zoom = this.get() + ".scale(" + x + ")"
    return(zoom)
}

string scalar d3zoom::scaleExtent(string scalar x) { 
    string scalar zoom 
    this.zoom = this.get() + ".scaleExtent(" + x + ")"
    return(zoom)
}

string scalar d3zoom::size(string scalar x) { 
    string scalar zoom 
    this.zoom = this.get() + ".size(" + x + ")"
    return(zoom)
}

string scalar d3zoom::translate(string scalar x) { 
    string scalar zoom 
    this.zoom = this.get() + ".translate(" + x + ")"
    return(zoom)
}

string scalar d3zoom::x(string scalar x) { 
    string scalar zoom 
    this.zoom = this.get() + ".x(" + x + ")"
    return(zoom)
}

string scalar d3zoom::y(string scalar x) { 
    string scalar zoom 
    this.zoom = this.get() + ".y(" + x + ")"
    return(zoom)
}

end


