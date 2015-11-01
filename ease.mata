mata: 

class d3ease { 

    private   string  scalar    ease
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), complete() 

}

string scalar d3ease::get() { 
    return(this.ease)
}

string scalar d3ease::complete() { 
    string scalar easeObject 
    easeObject = this.get() + ";"
    return(easeObject)
}

string scalar d3ease::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "ease()"
    return(jsvarname)
}

void d3ease::new() {
    this.ease = this.setVarnm(STease)
}

end


