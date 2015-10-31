mata: 

class d3clipExtent extends d3 { 

    private   string  scalar    clipExtent
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), end() 
    string            scalar    extent() 

}

string scalar d3clipExtent::get() { 
    return(this.clipExtent)
}

string scalar d3clipExtent::end() { 
    string scalar clipExtentObject 
    clipExtentObject = this.get() + ";"
    return(clipExtentObject)
}

string scalar d3clipExtent::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "clipExtent"
    return(jsvarname)
}

void d3clipExtent::new() {
    this.clipExtent = this.setVarnm(STclipExtent)
}

string scalar d3clipExtent::extent(string scalar x) { 
    string scalar clipExtent 
    this.clipExtent = this.get() + ".extent(" + x + ")"
    return(clipExtent)
}

end


