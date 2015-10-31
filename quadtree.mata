mata: 

class d3quadtree extends d3 { 

    private   string  scalar    quadtree
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), end() 
    string            scalar    add() 
    string            scalar    find() 
    string            scalar    visit() 

}

string scalar d3quadtree::get() { 
    return(this.quadtree)
}

string scalar d3quadtree::end() { 
    string scalar quadtreeObject 
    quadtreeObject = this.get() + ";"
    return(quadtreeObject)
}

string scalar d3quadtree::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "quadtree"
    return(jsvarname)
}

void d3quadtree::new() {
    this.quadtree = this.setVarnm(STquadtree)
}

string scalar d3quadtree::add(string scalar x) { 
    string scalar quadtree 
    this.quadtree = this.get() + ".add(" + x + ")"
    return(quadtree)
}

string scalar d3quadtree::find(string scalar x) { 
    string scalar quadtree 
    this.quadtree = this.get() + ".find(" + x + ")"
    return(quadtree)
}

string scalar d3quadtree::visit(string scalar x) { 
    string scalar quadtree 
    this.quadtree = this.get() + ".visit(" + x + ")"
    return(quadtree)
}

end


