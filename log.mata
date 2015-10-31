mata: 

class d3log { 

    string            scalar    log
    void              new()
    string            scalar    get() 
    string            scalar    clamp() 
    string            scalar    copy() 
    string            scalar    domain() 
    string            scalar    interpolate() 
    string            scalar    invert() 
    string            scalar    nice() 
    string            scalar    range() 
    string            scalar    rangeRound() 
    string            scalar    tickFormat() 
    string            scalar    ticks() 

}

string scalar d3log::get() { 
    return(this.log)
}

void d3log::new() {
    this.log = "log"
}

string scalar d3log::clamp(string scalar x) { 
    string scalar log 
    log = this.get() + ".clamp(" + x + ")"
    return(log)
}

string scalar d3log::copy(string scalar x) { 
    string scalar log 
    log = this.get() + ".copy(" + x + ")"
    return(log)
}

string scalar d3log::domain(string scalar x) { 
    string scalar log 
    log = this.get() + ".domain(" + x + ")"
    return(log)
}

string scalar d3log::interpolate(string scalar x) { 
    string scalar log 
    log = this.get() + ".interpolate(" + x + ")"
    return(log)
}

string scalar d3log::invert(string scalar x) { 
    string scalar log 
    log = this.get() + ".invert(" + x + ")"
    return(log)
}

string scalar d3log::nice(string scalar x) { 
    string scalar log 
    log = this.get() + ".nice(" + x + ")"
    return(log)
}

string scalar d3log::range(string scalar x) { 
    string scalar log 
    log = this.get() + ".range(" + x + ")"
    return(log)
}

string scalar d3log::rangeRound(string scalar x) { 
    string scalar log 
    log = this.get() + ".rangeRound(" + x + ")"
    return(log)
}

string scalar d3log::tickFormat(string scalar x) { 
    string scalar log 
    log = this.get() + ".tickFormat(" + x + ")"
    return(log)
}

string scalar d3log::ticks(string scalar x) { 
    string scalar log 
    log = this.get() + ".ticks(" + x + ")"
    return(log)
}

end


