mata: 

class d3rgb { 

    string            scalar    rgb
    void              new()
    string            scalar    get() 
    string            scalar    brighter() 
    string            scalar    darker() 
    string            scalar    hsl() 
    string            scalar    toString() 

}

string scalar d3rgb::get() { 
    return(this.rgb)
}

void d3rgb::new() {
    this.rgb = "rgb"
}

string scalar d3rgb::brighter(string scalar x) { 
    string scalar rgb 
    rgb = this.get() + ".brighter(" + x + ")"
    return(rgb)
}

string scalar d3rgb::darker(string scalar x) { 
    string scalar rgb 
    rgb = this.get() + ".darker(" + x + ")"
    return(rgb)
}

string scalar d3rgb::hsl(string scalar x) { 
    string scalar rgb 
    rgb = this.get() + ".hsl(" + x + ")"
    return(rgb)
}

string scalar d3rgb::toString(string scalar x) { 
    string scalar rgb 
    rgb = this.get() + ".toString(" + x + ")"
    return(rgb)
}

end


