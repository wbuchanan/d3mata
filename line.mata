mata: 

class d3line { 

    string            scalar    line
    void              new()
    string            scalar    get() 
    string            scalar    angle() 
    string            scalar    defined() 
    string            scalar    interpolate() 
    string            scalar    radius() 
    string            scalar    tension() 
    string            scalar    x() 
    string            scalar    y() 

}

string scalar d3line::get() { 
    return(this.line)
}

void d3line::new() {
    this.line = "line"
}

string scalar d3line::angle(string scalar x) { 
    string scalar line 
    line = this.get() + ".angle(" + x + ")"
    return(line)
}

string scalar d3line::defined(string scalar x) { 
    string scalar line 
    line = this.get() + ".defined(" + x + ")"
    return(line)
}

string scalar d3line::interpolate(string scalar x) { 
    string scalar line 
    line = this.get() + ".interpolate(" + x + ")"
    return(line)
}

string scalar d3line::radius(string scalar x) { 
    string scalar line 
    line = this.get() + ".radius(" + x + ")"
    return(line)
}

string scalar d3line::tension(string scalar x) { 
    string scalar line 
    line = this.get() + ".tension(" + x + ")"
    return(line)
}

string scalar d3line::x(string scalar x) { 
    string scalar line 
    line = this.get() + ".x(" + x + ")"
    return(line)
}

string scalar d3line::y(string scalar x) { 
    string scalar line 
    line = this.get() + ".y(" + x + ")"
    return(line)
}

end


