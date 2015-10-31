mata: 

class d3interval { 

    string            scalar    interval
    void              new()
    string            scalar    get() 
    string            scalar    ceil() 
    string            scalar    floor() 
    string            scalar    offset() 
    string            scalar    range() 
    string            scalar    round() 
    string            scalar    utc() 

}

string scalar d3interval::get() { 
    return(this.interval)
}

void d3interval::new() {
    this.interval = "interval"
}

string scalar d3interval::ceil(string scalar x) { 
    string scalar interval 
    interval = this.get() + ".ceil(" + x + ")"
    return(interval)
}

string scalar d3interval::floor(string scalar x) { 
    string scalar interval 
    interval = this.get() + ".floor(" + x + ")"
    return(interval)
}

string scalar d3interval::offset(string scalar x) { 
    string scalar interval 
    interval = this.get() + ".offset(" + x + ")"
    return(interval)
}

string scalar d3interval::range(string scalar x) { 
    string scalar interval 
    interval = this.get() + ".range(" + x + ")"
    return(interval)
}

string scalar d3interval::round(string scalar x) { 
    string scalar interval 
    interval = this.get() + ".round(" + x + ")"
    return(interval)
}

string scalar d3interval::utc(string scalar x) { 
    string scalar interval 
    interval = this.get() + ".utc(" + x + ")"
    return(interval)
}

end


