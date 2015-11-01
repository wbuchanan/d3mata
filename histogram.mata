mata: 

class d3histogram { 

    private   string  scalar    histogram
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), complete() 
    string            scalar    bins() 
    string            scalar    frequency() 
    string            scalar    range() 
    string            scalar    value() 

}

string scalar d3histogram::get() { 
    return(this.histogram)
}

string scalar d3histogram::complete() { 
    string scalar histogramObject 
    histogramObject = this.get() + ";"
    return(histogramObject)
}

string scalar d3histogram::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "histogram()"
    return(jsvarname)
}

void d3histogram::new() {
    this.histogram = this.setVarnm(SThistogram)
}

string scalar d3histogram::bins(string scalar x) { 
    string scalar histogram 
    this.histogram = this.get() + ".bins(" + x + ")"
    return(histogram)
}

string scalar d3histogram::frequency(string scalar x) { 
    string scalar histogram 
    this.histogram = this.get() + ".frequency(" + x + ")"
    return(histogram)
}

string scalar d3histogram::range(string scalar x) { 
    string scalar histogram 
    this.histogram = this.get() + ".range(" + x + ")"
    return(histogram)
}

string scalar d3histogram::value(string scalar x) { 
    string scalar histogram 
    this.histogram = this.get() + ".value(" + x + ")"
    return(histogram)
}

end


