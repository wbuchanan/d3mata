mata: 

class d3partition { 

    string            scalar    partition
    void              new()
    string            scalar    get() 
    string            scalar    children() 
    string            scalar    links() 
    string            scalar    nodes() 
    string            scalar    size() 
    string            scalar    sort() 
    string            scalar    value() 

}

string scalar d3partition::get() { 
    return(this.partition)
}

void d3partition::new() {
    this.partition = "partition"
}

string scalar d3partition::children(string scalar x) { 
    string scalar partition 
    partition = this.get() + ".children(" + x + ")"
    return(partition)
}

string scalar d3partition::links(string scalar x) { 
    string scalar partition 
    partition = this.get() + ".links(" + x + ")"
    return(partition)
}

string scalar d3partition::nodes(string scalar x) { 
    string scalar partition 
    partition = this.get() + ".nodes(" + x + ")"
    return(partition)
}

string scalar d3partition::size(string scalar x) { 
    string scalar partition 
    partition = this.get() + ".size(" + x + ")"
    return(partition)
}

string scalar d3partition::sort(string scalar x) { 
    string scalar partition 
    partition = this.get() + ".sort(" + x + ")"
    return(partition)
}

string scalar d3partition::value(string scalar x) { 
    string scalar partition 
    partition = this.get() + ".value(" + x + ")"
    return(partition)
}

end


