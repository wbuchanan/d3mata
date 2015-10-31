mata: 

class d3xhr { 

    string            scalar    xhr
    void              new()
    string            scalar    get() 
    string            scalar    abort() 
    string            scalar    header() 
    string            scalar    mimeType() 
    string            scalar    on() 
    string            scalar    post() 
    string            scalar    response() 
    string            scalar    send() 

}

string scalar d3xhr::get() { 
    return(this.xhr)
}

void d3xhr::new() {
    this.xhr = "xhr"
}

string scalar d3xhr::abort(string scalar x) { 
    string scalar xhr 
    xhr = this.get() + ".abort(" + x + ")"
    return(xhr)
}

string scalar d3xhr::get(string scalar x) { 
    string scalar xhr 
    xhr = this.get() + ".get(" + x + ")"
    return(xhr)
}

string scalar d3xhr::header(string scalar x) { 
    string scalar xhr 
    xhr = this.get() + ".header(" + x + ")"
    return(xhr)
}

string scalar d3xhr::mimeType(string scalar x) { 
    string scalar xhr 
    xhr = this.get() + ".mimeType(" + x + ")"
    return(xhr)
}

string scalar d3xhr::on(string scalar x) { 
    string scalar xhr 
    xhr = this.get() + ".on(" + x + ")"
    return(xhr)
}

string scalar d3xhr::post(string scalar x) { 
    string scalar xhr 
    xhr = this.get() + ".post(" + x + ")"
    return(xhr)
}

string scalar d3xhr::response(string scalar x) { 
    string scalar xhr 
    xhr = this.get() + ".response(" + x + ")"
    return(xhr)
}

string scalar d3xhr::send(string scalar x) { 
    string scalar xhr 
    xhr = this.get() + ".send(" + x + ")"
    return(xhr)
}

end


