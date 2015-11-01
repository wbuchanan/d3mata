mata: 

class d3bundle { 

    private   string  scalar    bundle
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), complete() 

}

string scalar d3bundle::get() { 
    return(this.bundle)
}

string scalar d3bundle::complete() { 
    string scalar bundleObject 
    bundleObject = this.get() + ";"
    return(bundleObject)
}

string scalar d3bundle::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "bundle()"
    return(jsvarname)
}

void d3bundle::new() {
    this.bundle = this.setVarnm(STbundle)
}

end


