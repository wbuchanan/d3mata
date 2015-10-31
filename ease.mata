mata: 

class d3ease extends d3 { 

    private   string  scalar    ease
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), end() 

}

string scalar d3ease::get() { 
    return(this.ease)
}

string scalar d3ease::end() { 
    string scalar easeObject 
    easeObject = this.get() + ";"
    return(easeObject)
}

string scalar d3ease::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "ease"
    return(jsvarname)
}

void d3ease::new() {
    this.ease = this.setVarnm(STease)
}

end


