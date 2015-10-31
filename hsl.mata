mata: 

class d3hsl { 

    string            scalar    hsl
    void              new()
    string            scalar    get() 
    string            scalar    brighter() 
    string            scalar    darker() 
    string            scalar    rgb() 
    string            scalar    toString() 

}

string scalar d3hsl::get() { 
    return(this.hsl)
}

void d3hsl::new() {
    this.hsl = "hsl"
}

string scalar d3hsl::brighter(string scalar x) { 
    string scalar hsl 
    hsl = this.get() + ".brighter(" + x + ")"
    return(hsl)
}

string scalar d3hsl::darker(string scalar x) { 
    string scalar hsl 
    hsl = this.get() + ".darker(" + x + ")"
    return(hsl)
}

string scalar d3hsl::rgb(string scalar x) { 
    string scalar hsl 
    hsl = this.get() + ".rgb(" + x + ")"
    return(hsl)
}

string scalar d3hsl::toString(string scalar x) { 
    string scalar hsl 
    hsl = this.get() + ".toString(" + x + ")"
    return(hsl)
}

end


