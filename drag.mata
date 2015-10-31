mata: 

class d3drag { 

    string            scalar    drag
    void              new()
    string            scalar    get() 
    string            scalar    on() 
    string            scalar    origin() 

}

string scalar d3drag::get() { 
    return(this.drag)
}

void d3drag::new() {
    this.drag = "drag"
}

string scalar d3drag::on(string scalar x) { 
    string scalar drag 
    drag = this.get() + ".on(" + x + ")"
    return(drag)
}

string scalar d3drag::origin(string scalar x) { 
    string scalar drag 
    drag = this.get() + ".origin(" + x + ")"
    return(drag)
}

end


