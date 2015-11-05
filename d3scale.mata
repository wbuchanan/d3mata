mata:

class d3scale {

	void							new(), destroy(), init()
	private	string 			scalar 	scale	
	private string			scalar  varnm
	public  string			scalar	get(), getVarnm(), complete()
	void							category10()
	void							category20()
	void							category20b()
	void							category20c()
	void							sqrt()
	class 	d3identity		scalar	identity()
	class 	d3linear		scalar	linear()
	class 	d3log			scalar	log()
	class 	d3pow			scalar	pow()
	class 	d3ordinal		scalar	ordinal()
	class 	d3quantile		scalar	quantile()
	class 	d3quantize		scalar	quantize()
	class 	d3threshold		scalar	threshold() 
	
}	

void d3scale::new() {
}

void d3scale::destroy() {
}

void d3scale::init(string scalar vnm, | string scalar arguments) {
	if (arguments != "") {
		this.scale = "var " + vnm + " = " + arguments
	}
	else {
		this.scale = vnm
	}
	this.varnm = vnm
}

string scalar d3scale::get() {
	return(this.scale)
}

string scalar d3scale::getVarnm() {
	return(this.varnm)
}

void d3scale::category10() {
	this.scale = this.get() + ".category10()" 
}


void d3scale::category20() {
	this.scale = this.get() + ".category20()" 
}


void d3scale::category20b() {
	this.scale = this.get() + ".category20b()" 
}


void d3scale::category20c() {
	this.scale = this.get() + ".category20c()" 
}

string scalar d3scale::complete() {
	return(this.get() + ";")
}


class d3identity scalar d3scale::identity() {
	class d3identity scalar ident
	ident = d3identity()
	ident.init(varnm, this.getVarnm() + ".identity()")
	return(ident)
}


class d3linear scalar d3scale::linear() {
	class d3linear scalar lin
	lin = d3linear()
	lin.init(varnm, this.getVarnm() + ".linear()")
	return(lin)
}

class d3log scalar d3scale::log() {
	class d3log scalar lg
	lg = d3log()
	lg.init(varnm, this.getVarnm() + ".log()")
	return(lg)
}


class d3ordinal scalar d3scale::ordinal() {
	class d3ordinal scalar p
	p = d3ordinal()
	p.init(varnm, this.getVarnm() + ".ordinal()")
	return(p)
}


class d3pow scalar d3scale::pow() {
	class d3pow scalar p
	p = d3pow()
	p.init(varnm, this.getVarnm() + ".pow()")
	return(p)
}


class d3quantile scalar d3scale::quantile() {
	class d3quantile scalar quant
	quant = d3quantile()
	quant.init(varnm, this.getVarnm() + ".quantile()")
	return(quant)
}


class d3quantize scalar d3scale::quantize() {
	class d3quantize scalar quant
	quant = d3quantize()
	quant.init(varnm, this.getVarnm() + ".quantize()")
	return(quant)
}


void d3scale::sqrt() {
	this.scale = this.get() + ".sqrt()" 
}


class d3threshold scalar d3scale::threshold() {
	class d3threshold scalar thresh
	thresh = d3threshold()
	thresh.init(varnm, this.getVarnm() + ".threshold()")
	return(thresh)
}


end

