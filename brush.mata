mata: 

class d3brush { 

    string            scalar    brush
    void              new()
    string            scalar    get() 
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

void d3brush::new() {
    this.brush = "brush"
}

string scalar d3brush::clear(string scalar x) { 
    string scalar brush 
    brush = this.get() + ".clear(" + x + ")"
    return(brush)
}

string scalar d3brush::empty(string scalar x) { 
    string scalar brush 
    brush = this.get() + ".empty(" + x + ")"
    return(brush)
}

string scalar d3brush::event(string scalar x) { 
    string scalar brush 
    brush = this.get() + ".event(" + x + ")"
    return(brush)
}

string scalar d3brush::extent(string scalar x) { 
    string scalar brush 
    brush = this.get() + ".extent(" + x + ")"
    return(brush)
}

string scalar d3brush::on(string scalar x) { 
    string scalar brush 
    brush = this.get() + ".on(" + x + ")"
    return(brush)
}

string scalar d3brush::x(string scalar x) { 
    string scalar brush 
    brush = this.get() + ".x(" + x + ")"
    return(brush)
}

string scalar d3brush::y(string scalar x) { 
    string scalar brush 
    brush = this.get() + ".y(" + x + ")"
    return(brush)
}

end


