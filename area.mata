mata: 

class d3area { 

    string            scalar    area
    void              new()
    string            scalar    get() 
    string            scalar    angle() 
    string            scalar    defined() 
    string            scalar    endAngle() 
    string            scalar    innerRadius() 
    string            scalar    interpolate() 
    string            scalar    outerRadius() 
    string            scalar    radius() 
    string            scalar    startAngle() 
    string            scalar    tension() 
    string            scalar    x() 
    string            scalar    x0() 
    string            scalar    x1() 
    string            scalar    y() 
    string            scalar    y0() 
    string            scalar    y1() 

}

string scalar d3area::get() { 
    return(this.area)
}

void d3area::new() {
    this.area = "area"
}

string scalar d3area::angle(string scalar x) { 
    string scalar area 
    area = this.get() + ".angle(" + x + ")"
    return(area)
}

string scalar d3area::defined(string scalar x) { 
    string scalar area 
    area = this.get() + ".defined(" + x + ")"
    return(area)
}

string scalar d3area::endAngle(string scalar x) { 
    string scalar area 
    area = this.get() + ".endAngle(" + x + ")"
    return(area)
}

string scalar d3area::innerRadius(string scalar x) { 
    string scalar area 
    area = this.get() + ".innerRadius(" + x + ")"
    return(area)
}

string scalar d3area::interpolate(string scalar x) { 
    string scalar area 
    area = this.get() + ".interpolate(" + x + ")"
    return(area)
}

string scalar d3area::outerRadius(string scalar x) { 
    string scalar area 
    area = this.get() + ".outerRadius(" + x + ")"
    return(area)
}

string scalar d3area::radius(string scalar x) { 
    string scalar area 
    area = this.get() + ".radius(" + x + ")"
    return(area)
}

string scalar d3area::startAngle(string scalar x) { 
    string scalar area 
    area = this.get() + ".startAngle(" + x + ")"
    return(area)
}

string scalar d3area::tension(string scalar x) { 
    string scalar area 
    area = this.get() + ".tension(" + x + ")"
    return(area)
}

string scalar d3area::x(string scalar x) { 
    string scalar area 
    area = this.get() + ".x(" + x + ")"
    return(area)
}

string scalar d3area::x0(string scalar x) { 
    string scalar area 
    area = this.get() + ".x0(" + x + ")"
    return(area)
}

string scalar d3area::x1(string scalar x) { 
    string scalar area 
    area = this.get() + ".x1(" + x + ")"
    return(area)
}

string scalar d3area::y(string scalar x) { 
    string scalar area 
    area = this.get() + ".y(" + x + ")"
    return(area)
}

string scalar d3area::y0(string scalar x) { 
    string scalar area 
    area = this.get() + ".y0(" + x + ")"
    return(area)
}

string scalar d3area::y1(string scalar x) { 
    string scalar area 
    area = this.get() + ".y1(" + x + ")"
    return(area)
}

end


