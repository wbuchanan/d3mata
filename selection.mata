mata: 

class d3selection { 

    string            scalar    selection
    void              new()
    string            scalar    get() 
    string            scalar    append() 
    string            scalar    attr() 
    string            scalar    call() 
    string            scalar    classed() 
    string            scalar    data() 
    string            scalar    datum() 
    string            scalar    each() 
    string            scalar    empty() 
    string            scalar    enter() 
    string            scalar    exit() 
    string            scalar    filter() 
    string            scalar    html() 
    string            scalar    insert() 
    string            scalar    interrupt() 
    string            scalar    node() 
    string            scalar    on() 
    string            scalar    order() 
    string            scalar    property() 
    string            scalar    remove() 
    string            scalar    select() 
    string            scalar    selectAll() 
    string            scalar    size() 
    string            scalar    sort() 
    string            scalar    style() 
    string            scalar    text() 
    string            scalar    transition() 

}

string scalar d3selection::get() { 
    return(this.selection)
}

void d3selection::new() {
    this.selection = "selection"
}

string scalar d3selection::append(string scalar x) { 
    string scalar selection 
    selection = this.get() + ".append(" + x + ")"
    return(selection)
}

string scalar d3selection::attr(string scalar x) { 
    string scalar selection 
    selection = this.get() + ".attr(" + x + ")"
    return(selection)
}

string scalar d3selection::call(string scalar x) { 
    string scalar selection 
    selection = this.get() + ".call(" + x + ")"
    return(selection)
}

string scalar d3selection::classed(string scalar x) { 
    string scalar selection 
    selection = this.get() + ".classed(" + x + ")"
    return(selection)
}

string scalar d3selection::data(string scalar x) { 
    string scalar selection 
    selection = this.get() + ".data(" + x + ")"
    return(selection)
}

string scalar d3selection::datum(string scalar x) { 
    string scalar selection 
    selection = this.get() + ".datum(" + x + ")"
    return(selection)
}

string scalar d3selection::each(string scalar x) { 
    string scalar selection 
    selection = this.get() + ".each(" + x + ")"
    return(selection)
}

string scalar d3selection::empty(string scalar x) { 
    string scalar selection 
    selection = this.get() + ".empty(" + x + ")"
    return(selection)
}

string scalar d3selection::enter(string scalar x) { 
    string scalar selection 
    selection = this.get() + ".enter(" + x + ")"
    return(selection)
}

string scalar d3selection::exit(string scalar x) { 
    string scalar selection 
    selection = this.get() + ".exit(" + x + ")"
    return(selection)
}

string scalar d3selection::filter(string scalar x) { 
    string scalar selection 
    selection = this.get() + ".filter(" + x + ")"
    return(selection)
}

string scalar d3selection::html(string scalar x) { 
    string scalar selection 
    selection = this.get() + ".html(" + x + ")"
    return(selection)
}

string scalar d3selection::insert(string scalar x) { 
    string scalar selection 
    selection = this.get() + ".insert(" + x + ")"
    return(selection)
}

string scalar d3selection::interrupt(string scalar x) { 
    string scalar selection 
    selection = this.get() + ".interrupt(" + x + ")"
    return(selection)
}

string scalar d3selection::node(string scalar x) { 
    string scalar selection 
    selection = this.get() + ".node(" + x + ")"
    return(selection)
}

string scalar d3selection::on(string scalar x) { 
    string scalar selection 
    selection = this.get() + ".on(" + x + ")"
    return(selection)
}

string scalar d3selection::order(string scalar x) { 
    string scalar selection 
    selection = this.get() + ".order(" + x + ")"
    return(selection)
}

string scalar d3selection::property(string scalar x) { 
    string scalar selection 
    selection = this.get() + ".property(" + x + ")"
    return(selection)
}

string scalar d3selection::remove(string scalar x) { 
    string scalar selection 
    selection = this.get() + ".remove(" + x + ")"
    return(selection)
}

string scalar d3selection::select(string scalar x) { 
    string scalar selection 
    selection = this.get() + ".select(" + x + ")"
    return(selection)
}

string scalar d3selection::selectAll(string scalar x) { 
    string scalar selection 
    selection = this.get() + ".selectAll(" + x + ")"
    return(selection)
}

string scalar d3selection::size(string scalar x) { 
    string scalar selection 
    selection = this.get() + ".size(" + x + ")"
    return(selection)
}

string scalar d3selection::sort(string scalar x) { 
    string scalar selection 
    selection = this.get() + ".sort(" + x + ")"
    return(selection)
}

string scalar d3selection::style(string scalar x) { 
    string scalar selection 
    selection = this.get() + ".style(" + x + ")"
    return(selection)
}

string scalar d3selection::text(string scalar x) { 
    string scalar selection 
    selection = this.get() + ".text(" + x + ")"
    return(selection)
}

string scalar d3selection::transition(string scalar x) { 
    string scalar selection 
    selection = this.get() + ".transition(" + x + ")"
    return(selection)
}

end


