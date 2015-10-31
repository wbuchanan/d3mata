mata: 

class d3histogram { 

    string            scalar    histogram
    void              new()
    string            scalar    get() 
    string            scalar    bins() 
    string            scalar    frequency() 
    string            scalar    range() 
    string            scalar    value() 

}

string scalar d3histogram::get() { 
    return(this.histogram)
}

void d3histogram::new() {
    this.histogram = "histogram"
}

string scalar d3histogram::bins(string scalar x) { 
    string scalar histogram 
    histogram = this.get() + ".bins(" + x + ")"
    return(histogram)
}

string scalar d3histogram::frequency(string scalar x) { 
    string scalar histogram 
    histogram = this.get() + ".frequency(" + x + ")"
    return(histogram)
}

string scalar d3histogram::range(string scalar x) { 
    string scalar histogram 
    histogram = this.get() + ".range(" + x + ")"
    return(histogram)
}

string scalar d3histogram::value(string scalar x) { 
    string scalar histogram 
    histogram = this.get() + ".value(" + x + ")"
    return(histogram)
}

end


