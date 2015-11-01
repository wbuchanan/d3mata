mata: 

class d3drag { 

    private   string  scalar    drag
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), complete() 
    string            scalar    on() 
    string            scalar    origin() 

}

string scalar d3drag::get() { 
    return(this.drag)
}

string scalar d3drag::complete() { 
    string scalar dragObject 
    dragObject = this.get() + ";"
    return(dragObject)
}

string scalar d3drag::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "drag()"
    return(jsvarname)
}

void d3drag::new() {
    this.drag = this.setVarnm(STdrag)
}

string scalar d3drag::on(string scalar x) { 
    string scalar drag 
    this.drag = this.get() + ".on(" + x + ")"
    return(drag)
}

string scalar d3drag::origin(string scalar x) { 
    string scalar drag 
    this.drag = this.get() + ".origin(" + x + ")"
    return(drag)
}

end


