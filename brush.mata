mata: 

class d3brush extends d3 { 

    private   string  scalar    brush
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), end() 
    string            scalar    clear() 
    string            scalar    empty() 
    string            scalar    event() 
    string            scalar    extent() 
    string            scalar    on() 
    string            scalar    x() 
    string            scalar    y() 

}

string scalar d3brush::get() { 
    return(this.brush)
}

string scalar d3brush::end() { 
    string scalar brushObject 
    brushObject = this.get() + ";"
    return(brushObject)
}

string scalar d3brush::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "brush"
    return(jsvarname)
}

void d3brush::new() {
    this.brush = this.setVarnm(STbrush)
}

string scalar d3brush::clear(string scalar x) { 
    string scalar brush 
    this.brush = this.get() + ".clear(" + x + ")"
    return(brush)
}

string scalar d3brush::empty(string scalar x) { 
    string scalar brush 
    this.brush = this.get() + ".empty(" + x + ")"
    return(brush)
}

string scalar d3brush::event(string scalar x) { 
    string scalar brush 
    this.brush = this.get() + ".event(" + x + ")"
    return(brush)
}

string scalar d3brush::extent(string scalar x) { 
    string scalar brush 
    this.brush = this.get() + ".extent(" + x + ")"
    return(brush)
}

string scalar d3brush::on(string scalar x) { 
    string scalar brush 
    this.brush = this.get() + ".on(" + x + ")"
    return(brush)
}

string scalar d3brush::x(string scalar x) { 
    string scalar brush 
    this.brush = this.get() + ".x(" + x + ")"
    return(brush)
}

string scalar d3brush::y(string scalar x) { 
    string scalar brush 
    this.brush = this.get() + ".y(" + x + ")"
    return(brush)
}

end


