mata: 

class d3set { 

    private   string  scalar    set
    void                        new(), destroy(), init()
    private   string  scalar    get()
    public    string  scalar    complete() 
    void                        add() 
    void                        empty() 
    void                        forEach() 
    void                        has() 
    void                        remove() 
    void                        size() 
    void                        values() 

}

string scalar d3set::get() { 
    return(this.set)
}

string scalar d3set::complete() { 
    string scalar setObject 
    setObject = this.get() + ";"
    return(setObject)
}

void d3set::init(string scalar vnm, string scalar setArray) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + setArray
    return(jsvarname)
}

void d3set::new() {
}

void d3set::has(string scalar value) { 
    string scalar s 
    s = this.get() + ".has(" + value + ")"
    this.set = s
}


void d3set::add(string scalar value) { 
    string scalar s 
    s = this.get() + ".add(" + value + ")"
    this.set = s
}


void d3set::remove(string scalar value) { 
    string scalar s 
    s = this.get() + ".remove(" + value + ")"
    this.set = s
}


void d3set::values() { 
    string scalar s 
    s = this.get() + ".values()"
    this.set = s
}


void d3set::forEach(string scalar func) { 
    string scalar s 
    s = this.get() + ".forEach(" + func + ")"
    this.set = s
}


void d3set::empty() { 
    string scalar s 
    s = this.get() + ".empty()"
    this.set = s
}

void d3set::size() { 
    string scalar s 
    s = this.get() + ".size()"
    this.set = s
}

end


