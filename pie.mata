mata: 

class d3pie { 

    string            scalar    pie
    void              new()
    string            scalar    get() 
    string            scalar    endAngle() 
    string            scalar    padAngle() 
    string            scalar    sort() 
    string            scalar    startAngle() 
    string            scalar    value() 

}

string scalar d3pie::get() { 
    return(this.pie)
}

void d3pie::new() {
    this.pie = "pie"
}

string scalar d3pie::endAngle(string scalar x) { 
    string scalar pie 
    pie = this.get() + ".endAngle(" + x + ")"
    return(pie)
}

string scalar d3pie::padAngle(string scalar x) { 
    string scalar pie 
    pie = this.get() + ".padAngle(" + x + ")"
    return(pie)
}

string scalar d3pie::sort(string scalar x) { 
    string scalar pie 
    pie = this.get() + ".sort(" + x + ")"
    return(pie)
}

string scalar d3pie::startAngle(string scalar x) { 
    string scalar pie 
    pie = this.get() + ".startAngle(" + x + ")"
    return(pie)
}

string scalar d3pie::value(string scalar x) { 
    string scalar pie 
    pie = this.get() + ".value(" + x + ")"
    return(pie)
}

end


