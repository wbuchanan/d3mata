mata: 

class d3quadtree { 

    string            scalar    quadtree
    void              new()
    string            scalar    get() 
    string            scalar    add() 
    string            scalar    find() 
    string            scalar    visit() 

}

string scalar d3quadtree::get() { 
    return(this.quadtree)
}

void d3quadtree::new() {
    this.quadtree = "quadtree"
}

string scalar d3quadtree::add(string scalar x) { 
    string scalar quadtree 
    quadtree = this.get() + ".add(" + x + ")"
    return(quadtree)
}

string scalar d3quadtree::find(string scalar x) { 
    string scalar quadtree 
    quadtree = this.get() + ".find(" + x + ")"
    return(quadtree)
}

string scalar d3quadtree::visit(string scalar x) { 
    string scalar quadtree 
    quadtree = this.get() + ".visit(" + x + ")"
    return(quadtree)
}

end


