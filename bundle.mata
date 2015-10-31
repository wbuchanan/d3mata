mata: 

class d3bundle extends d3 { 

    private   string  scalar    bundle
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), end() 

}

string scalar d3bundle::get() { 
    return(this.bundle)
}

string scalar d3bundle::end() { 
    string scalar bundleObject 
    bundleObject = this.get() + ";"
    return(bundleObject)
}

string scalar d3bundle::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "bundle"
    return(jsvarname)
}

void d3bundle::new() {
    this.bundle = this.setVarnm(STbundle)
}

end


