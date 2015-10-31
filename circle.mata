mata: 

class d3circle { 

    string            scalar    circle
    void              new()
    string            scalar    get() 
    string            scalar    angle() 
    string            scalar    origin() 
    string            scalar    precision() 

}

string scalar d3circle::get() { 
    return(this.circle)
}

void d3circle::new() {
    this.circle = "circle"
}

string scalar d3circle::angle(string scalar x) { 
    string scalar circle 
    circle = this.get() + ".angle(" + x + ")"
    return(circle)
}

string scalar d3circle::origin(string scalar x) { 
    string scalar circle 
    circle = this.get() + ".origin(" + x + ")"
    return(circle)
}

string scalar d3circle::precision(string scalar x) { 
    string scalar circle 
    circle = this.get() + ".precision(" + x + ")"
    return(circle)
}

end


