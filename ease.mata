mata: 

class d3ease { 

    string            scalar    ease
    void              new()
    string            scalar    get() 

}

string scalar d3ease::get() { 
    return(this.ease)
}

void d3ease::new() {
    this.ease = "ease"
}

end


