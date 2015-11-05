mata: 

class d3geom { 

    private		string		scalar    	geom
	private		string		scalar		varnm
    void                		        new(), destroy(), init()
    public   	string  	scalar    	get(), getVarnm()
    public    	string  	scalar    	complete() 
    class	  	d3hull  	scalar		hull()
    class	  	d3polygon  	scalar		polygon()
    class	  	d3quadtree 	scalar		quadtree()
    class	  	d3voronoi 	scalar		voronoi()

}

void d3geom::new() {
}


void d3geom::destroy() {
}


void d3geom::init(string scalar vnm, | string scalar arguments) {
	if (arguments != "") {
		this.geom = "var " + vnm + " = " + arguments
	}
	else {
		this.geom = vnm
	}
}

string scalar d3geom::complete() {
	return(this.get() + ";")
}

string scalar d3geom::get() {
	return(this.geom)
}

string scalar d3geom::getVarnm() {
	return(this.varnm)
}


class d3voronoi scalar d3geom::voronoi() {
	class d3voronoi scalar Geom
	Geom = d3voronoi() 
	Geom.init(varnm, this.getVarnm() + ".voronoi()")
	return(Geom)
}


class d3quadtree scalar d3geom::quadtree() {
	class d3quadtree scalar Geom
	Geom = d3quadtree() 
	Geom.init(varnm, this.getVarnm() + ".quadtree()")
	return(Geom)
}


class d3polygon scalar d3geom::polygon(string scalar varnm, string scalar vertices) {
	class d3polygon scalar Geom
	Geom = d3polygon() 
	Geom.init(varnm, this.getVarnm() + ".polygon(" + vertices + ")")
	return(Geom)
}


class d3hull scalar d3geom::hull(string scalar varnm) {
	class d3hull scalar Geom
	Geom = d3hull() 
	Geom.init(this.getVarnm() + ".hull()")
	return(Geom)
}


end


