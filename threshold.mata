mata: 

class d3threshold { 

    string            scalar    threshold
    void              new()
    string            scalar    get() 
    string            scalar    copy() 
    string            scalar    domain() 
    string            scalar    invertExtent() 
    string            scalar    range() 

}

string scalar d3threshold::get() { 
    return(this.threshold)
}

void d3threshold::new() {
    this.threshold = "threshold"
}

string scalar d3threshold::copy(string scalar x) { 
    string scalar threshold 
    threshold = this.get() + ".copy(" + x + ")"
    return(threshold)
}

string scalar d3threshold::domain(string scalar x) { 
    string scalar threshold 
    threshold = this.get() + ".domain(" + x + ")"
    return(threshold)
}

string scalar d3threshold::invertExtent(string scalar x) { 
    string scalar threshold 
    threshold = this.get() + ".invertExtent(" + x + ")"
    return(threshold)
}

string scalar d3threshold::range(string scalar x) { 
    string scalar threshold 
    threshold = this.get() + ".range(" + x + ")"
    return(threshold)
}

end


