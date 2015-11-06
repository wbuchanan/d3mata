mata: 

class d3layout { 
	private:
	string					scalar	layout, varnm
	
	public:
	void							new(), destroy(), init()
	string					scalar	get(), complete(), getVarnm()
	class	d3lbundle		scalar		bundle()
	class	d3lchord		scalar		chord()
	class	d3lcluster		scalar		cluster()
	class	d3lforce		scalar		force()
	class	d3lhierarchy	scalar		hierarchy()
	class	d3lhistogram	scalar		histogram()
	class	d3lpack			scalar		pack()
	class	d3lpartition	scalar		partition()
	class	d3lpie			scalar		pie()
	class	d3lstack		scalar		stack()
	class	d3ltree			scalar		tree()
	class	d3ltreemap		scalar		treemap()
}

void d3layout::init(string scalar vnm, | string scalar arguments) { 
	if (arguments != "") {
		this.layout = "var " + vnm + " = " + arguments
	}
	else {
		this.layout = vnm 
	}
	this.varnm = vnm
}

void d3layout::new() {
}

void d3layout::destroy() {
}

string scalar d3layout::get() { 
	return(this.layout)
}

string scalar d3layout::getVarnm() { 
	return(this.varnm)
}

string scalar d3layout::complete(string scalar varnm) { 
	string scalar layoutObject 
	layoutObject = this.get() + ";"
	return(layoutObject)
}

class d3lbundle scalar d3layout::bundle(string scalar varnm) {
	class d3lbundle scalar Layout
	Layout = d3lbundle()
	Layout.init(varnm, this.getVarnm() + ".bundle()")
	return(Layout)
}


class d3lchord scalar d3layout::chord(string scalar varnm) {
	class d3lchord scalar Layout
	Layout = d3lchord()
	Layout.init(varnm, this.getVarnm() + ".chord()")
	return(Layout)
}


class d3lcluster scalar d3layout::cluster(string scalar varnm) {
	class d3lcluster scalar Layout
	Layout = d3lcluster()
	Layout.init(varnm, this.getVarnm() + ".cluster()")
	return(Layout)
}


class d3lforce scalar d3layout::force(string scalar varnm) {
	class d3lforce scalar Layout
	Layout = d3lforce()
	Layout.init(varnm, this.getVarnm() + ".force()")
	return(Layout)
}


class d3lhierarchy scalar d3layout::hierarchy(string scalar varnm) {
	class d3lhierarchy scalar Layout
	Layout = d3lhierarchy()
	Layout.init(varnm, this.getVarnm() + ".hierarchy()")
	return(Layout)
}


class d3lhistogram scalar d3layout::histogram(string scalar varnm) {
	class d3lhistogram scalar Layout
	Layout = d3lhistogram()
	Layout.init(varnm, this.getVarnm() + ".histogram()")
	return(Layout)
}


class d3lpack scalar d3layout::pack(string scalar varnm) {
	class d3lpack scalar Layout
	Layout = d3lpack()
	Layout.init(varnm, this.getVarnm() + ".pack()")
	return(Layout)
}


class d3lpartition scalar d3layout::partition(string scalar varnm) {
	class d3lpartition scalar Layout
	Layout = d3lpartition()
	Layout.init(varnm, this.getVarnm() + ".partition()")
	return(Layout)
}


class d3lpie scalar d3layout::pie(string scalar varnm) {
	class d3lpie scalar Layout
	Layout = d3lpie()
	Layout.init(varnm, this.getVarnm() + ".pie()")
	return(Layout)
}


class d3lstack scalar d3layout::stack(string scalar varnm) {
	class d3lstack scalar Layout
	Layout = d3lstack()
	Layout.init(varnm, this.getVarnm() + ".stack()")
	return(Layout)
}


class d3ltree scalar d3layout::tree(string scalar varnm) {
	class d3ltree scalar Layout
	Layout = d3ltree()
	Layout.init(varnm, this.getVarnm() + ".tree()")
	return(Layout)
}


class d3ltreemap scalar d3layout::treemap(string scalar varnm) {
	class d3ltreemap scalar Layout
	Layout = d3ltreemap()
	Layout.init(varnm, this.getVarnm() + ".treemap()")
	return(Layout)
}

end

