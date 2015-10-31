mata: 

class d3partition extends d3 { 

    private   string  scalar    partition
    void                        new(), destroy()
    private   string  scalar    get()
    public    string  scalar    setVarnm(), end() 
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

string scalar d3partition::end() { 
    string scalar partitionObject 
    partitionObject = this.get() + ";"
    return(partitionObject)
}

string scalar d3partition::setVarnm(string scalar vnm) { 
    string scalar jsvarname
    jsvarname = "var " + vnm + " = " + "partition"
    return(jsvarname)
}

void d3partition::new() {
    this.partition = this.setVarnm(STpartition)
}

string scalar d3partition::children(string scalar x) { 
    string scalar partition 
    this.partition = this.get() + ".children(" + x + ")"
    return(partition)
}

string scalar d3partition::links(string scalar x) { 
    string scalar partition 
    this.partition = this.get() + ".links(" + x + ")"
    return(partition)
}

string scalar d3partition::nodes(string scalar x) { 
    string scalar partition 
    this.partition = this.get() + ".nodes(" + x + ")"
    return(partition)
}

string scalar d3partition::size(string scalar x) { 
    string scalar partition 
    this.partition = this.get() + ".size(" + x + ")"
    return(partition)
}

string scalar d3partition::sort(string scalar x) { 
    string scalar partition 
    this.partition = this.get() + ".sort(" + x + ")"
    return(partition)
}

string scalar d3partition::value(string scalar x) { 
    string scalar partition 
    this.partition = this.get() + ".value(" + x + ")"
    return(partition)
}

end


