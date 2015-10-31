mata: 

class d3locale { 

    string            scalar    locale
    void              new()
    string            scalar    get() 
    string            scalar    numberFormat() 
    string            scalar    timeFormat() 

}

string scalar d3locale::get() { 
    return(this.locale)
}

void d3locale::new() {
    this.locale = "locale"
}

string scalar d3locale::numberFormat(string scalar x) { 
    string scalar locale 
    locale = this.get() + ".numberFormat(" + x + ")"
    return(locale)
}

string scalar d3locale::timeFormat(string scalar x) { 
    string scalar locale 
    locale = this.get() + ".timeFormat(" + x + ")"
    return(locale)
}

end


