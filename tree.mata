mata: 

class d3tree { 

    string            scalar    tree
    void              new()
    string            scalar    get() 
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

void d3tree::new() {
    this.tree = "tree"
}

string scalar d3tree::children(string scalar x) { 
    string scalar tree 
    tree = this.get() + ".children(" + x + ")"
    return(tree)
}

string scalar d3tree::links(string scalar x) { 
    string scalar tree 
    tree = this.get() + ".links(" + x + ")"
    return(tree)
}

string scalar d3tree::nodeSize(string scalar x) { 
    string scalar tree 
    tree = this.get() + ".nodeSize(" + x + ")"
    return(tree)
}

string scalar d3tree::nodes(string scalar x) { 
    string scalar tree 
    tree = this.get() + ".nodes(" + x + ")"
    return(tree)
}

string scalar d3tree::separation(string scalar x) { 
    string scalar tree 
    tree = this.get() + ".separation(" + x + ")"
    return(tree)
}

string scalar d3tree::size(string scalar x) { 
    string scalar tree 
    tree = this.get() + ".size(" + x + ")"
    return(tree)
}

string scalar d3tree::sort(string scalar x) { 
    string scalar tree 
    tree = this.get() + ".sort(" + x + ")"
    return(tree)
}

end


