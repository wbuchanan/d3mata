mata: 

class d3threshold { 

    private   string  scalar    threshold
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), complete() 
    string            scalar    copy() 
    string            scalar    domain() 
    string            scalar    invertExtent() 
    string            scalar    range() 

}

string scalar d3threshold::get() { 
    return(this.threshold)
}

string scalar d3threshold::complete() { 
    string scalar thresholdObject 
    thresholdObject = this.get() + ";"
    return(thresholdObject)
}

string scalar d3threshold::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "threshold()"
    return(jsvarname)
}

void d3threshold::new() {
    this.threshold = this.setVarnm(STthreshold)
}

string scalar d3threshold::copy(string scalar x) { 
    string scalar threshold 
    this.threshold = this.get() + ".copy(" + x + ")"
    return(threshold)
}

string scalar d3threshold::domain(string scalar x) { 
    string scalar threshold 
    this.threshold = this.get() + ".domain(" + x + ")"
    return(threshold)
}

string scalar d3threshold::invertExtent(string scalar x) { 
    string scalar threshold 
    this.threshold = this.get() + ".invertExtent(" + x + ")"
    return(threshold)
}

string scalar d3threshold::range(string scalar x) { 
    string scalar threshold 
    this.threshold = this.get() + ".range(" + x + ")"
    return(threshold)
}

end


