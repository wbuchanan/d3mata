mata: 

class d3locale { 

    private   string  scalar    locale
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), complete() 
    string            scalar    numberFormat() 
    string            scalar    timeFormat() 

}

string scalar d3locale::get() { 
    return(this.locale)
}

string scalar d3locale::complete() { 
    string scalar localeObject 
    localeObject = this.get() + ";"
    return(localeObject)
}

string scalar d3locale::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "locale()"
    return(jsvarname)
}

void d3locale::new() {
    this.locale = this.setVarnm(STlocale)
}

string scalar d3locale::numberFormat(string scalar x) { 
    string scalar locale 
    this.locale = this.get() + ".numberFormat(" + x + ")"
    return(locale)
}

string scalar d3locale::timeFormat(string scalar x) { 
    string scalar locale 
    this.locale = this.get() + ".timeFormat(" + x + ")"
    return(locale)
}

end


