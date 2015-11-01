mata: 

class d3tree { 

    private   string  scalar    tree
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), complete() 
    string            scalar    children() 
    string            scalar    links() 
    string            scalar    nodeSize() 
    string            scalar    nodes() 
    string            scalar    separation() 
    string            scalar    size() 
    string            scalar    sort() 

}

string scalar d3tree::get() { 
    return(this.tree)
}

string scalar d3tree::complete() { 
    string scalar treeObject 
    treeObject = this.get() + ";"
    return(treeObject)
}

string scalar d3tree::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "tree()"
    return(jsvarname)
}

void d3tree::new() {
    this.tree = this.setVarnm(STtree)
}

string scalar d3tree::children(string scalar x) { 
    string scalar tree 
    this.tree = this.get() + ".children(" + x + ")"
    return(tree)
}

string scalar d3tree::links(string scalar x) { 
    string scalar tree 
    this.tree = this.get() + ".links(" + x + ")"
    return(tree)
}

string scalar d3tree::nodeSize(string scalar x) { 
    string scalar tree 
    this.tree = this.get() + ".nodeSize(" + x + ")"
    return(tree)
}

string scalar d3tree::nodes(string scalar x) { 
    string scalar tree 
    this.tree = this.get() + ".nodes(" + x + ")"
    return(tree)
}

string scalar d3tree::separation(string scalar x) { 
    string scalar tree 
    this.tree = this.get() + ".separation(" + x + ")"
    return(tree)
}

string scalar d3tree::size(string scalar x) { 
    string scalar tree 
    this.tree = this.get() + ".size(" + x + ")"
    return(tree)
}

string scalar d3tree::sort(string scalar x) { 
    string scalar tree 
    this.tree = this.get() + ".sort(" + x + ")"
    return(tree)
}

end


