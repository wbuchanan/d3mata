mata: 

class d3format { 

    string            scalar    format
    void              new()
    string            scalar    get() 
    string            scalar    parse() 

}

string scalar d3format::get() { 
    return(this.format)
}

void d3format::new() {
    this.format = "format"
}

string scalar d3format::parse(string scalar x) { 
    string scalar format 
    format = this.get() + ".parse(" + x + ")"
    return(format)
}

end


