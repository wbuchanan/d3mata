mata: 

class d3albers extends d3 { 

    private   string  scalar    albers
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), end() 
    string            scalar    parallels() 

}

string scalar d3albers::get() { 
    return(this.albers)
}

string scalar d3albers::end() { 
    string scalar albersObject 
    albersObject = this.get() + ";"
    return(albersObject)
}

string scalar d3albers::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "albers"
    return(jsvarname)
}

void d3albers::new() {
    this.albers = this.setVarnm(STalbers)
}

string scalar d3albers::parallels(string scalar x) { 
    string scalar albers 
    this.albers = this.get() + ".parallels(" + x + ")"
    return(albers)
}

end


