mata: 

class d3cluster { 

    string            scalar    cluster
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

string scalar d3cluster::get() { 
    return(this.cluster)
}

void d3cluster::new() {
    this.cluster = "cluster"
}

string scalar d3cluster::children(string scalar x) { 
    string scalar cluster 
    cluster = this.get() + ".children(" + x + ")"
    return(cluster)
}

string scalar d3cluster::links(string scalar x) { 
    string scalar cluster 
    cluster = this.get() + ".links(" + x + ")"
    return(cluster)
}

string scalar d3cluster::nodeSize(string scalar x) { 
    string scalar cluster 
    cluster = this.get() + ".nodeSize(" + x + ")"
    return(cluster)
}

string scalar d3cluster::nodes(string scalar x) { 
    string scalar cluster 
    cluster = this.get() + ".nodes(" + x + ")"
    return(cluster)
}

string scalar d3cluster::separation(string scalar x) { 
    string scalar cluster 
    cluster = this.get() + ".separation(" + x + ")"
    return(cluster)
}

string scalar d3cluster::size(string scalar x) { 
    string scalar cluster 
    cluster = this.get() + ".size(" + x + ")"
    return(cluster)
}

string scalar d3cluster::sort(string scalar x) { 
    string scalar cluster 
    cluster = this.get() + ".sort(" + x + ")"
    return(cluster)
}

end


