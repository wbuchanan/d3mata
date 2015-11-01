mata: 

class d3cluster { 

    private   string  scalar    cluster
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

string scalar d3cluster::get() { 
    return(this.cluster)
}

string scalar d3cluster::complete() { 
    string scalar clusterObject 
    clusterObject = this.get() + ";"
    return(clusterObject)
}

string scalar d3cluster::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "cluster()"
    return(jsvarname)
}

void d3cluster::new() {
    this.cluster = this.setVarnm(STcluster)
}

string scalar d3cluster::children(string scalar x) { 
    string scalar cluster 
    this.cluster = this.get() + ".children(" + x + ")"
    return(cluster)
}

string scalar d3cluster::links(string scalar x) { 
    string scalar cluster 
    this.cluster = this.get() + ".links(" + x + ")"
    return(cluster)
}

string scalar d3cluster::nodeSize(string scalar x) { 
    string scalar cluster 
    this.cluster = this.get() + ".nodeSize(" + x + ")"
    return(cluster)
}

string scalar d3cluster::nodes(string scalar x) { 
    string scalar cluster 
    this.cluster = this.get() + ".nodes(" + x + ")"
    return(cluster)
}

string scalar d3cluster::separation(string scalar x) { 
    string scalar cluster 
    this.cluster = this.get() + ".separation(" + x + ")"
    return(cluster)
}

string scalar d3cluster::size(string scalar x) { 
    string scalar cluster 
    this.cluster = this.get() + ".size(" + x + ")"
    return(cluster)
}

string scalar d3cluster::sort(string scalar x) { 
    string scalar cluster 
    this.cluster = this.get() + ".sort(" + x + ")"
    return(cluster)
}

end


