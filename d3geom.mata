mata: 

class d3geom { 

    private		string		scalar    	geom
	private		string		scalar		varnm
    void                		        new(), destroy(), init()
    private   	string  	scalar    	get(), getVarnm()
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


void d3geom::init(string scalar varnm, | string scalar arguments) {
	if (arguments != "") {
		this.geom = "var " + varnm + " = " + arguments
	}
	else {
		this.geom = varnm
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
	string scalar quadt
	quadt = this.getVarnm() + ".quadtree()"
	Geom.init(varnm, quadt)
	return(Geom)
}


class d3polygon scalar d3geom::polygon(string scalar varnm, string scalar vertices) {
	class d3polygon scalar Geom
	Geom = d3polygon() 
	string scalar poly
	poly = this.getVarnm() + ".polygon(" + vertices + ")"
	Geom.init(varnm, poly)
	return(Geom)
}


class d3hull scalar d3geom::hull(string scalar varnm) {
	class d3hull scalar Geom
	Geom = d3hull() 
	Geom.init(this.getVarnm() + ".hull()")
	return(Geom)
}


end


