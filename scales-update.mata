mata: 

class scales {

	private: 
	string		scalar		scales, varnm, prev, current

	public: 
	string		scalar		get(), complete(), undo(), getVarnm()

	void					base(), category10(), category20(), category20b(), 
							category20c(), clamp(), copy(), domain(), 
							exponent(), identity(), interpolate(), invert(), 
							invertExtent(), linear(), log(), nice(), ordinal(), 
							pow(), quantile(), quantiles(), quantize(), 
							range(), rangeBand(), rangeBands(), rangeExtent(), 
							rangePoints(), rangeRound(), rangeRoundBands(), 
							rangeRoundPoints(), scale(), sqrt(), threshold(), 
							tickFormat(), ticks(), utc(), init()

}

void scales::init(string scalar vnm) {
     this.varnm = vnm 
     this.scales = "var " + vnm + " = d3.scales"
     this.current = "var " + vnm + " = d3.scales"
     this.prev = ""
}

string scalar scales::get() {
     return(this.current) 
}

string scalar scales::complete() {
     return(this.current + ";") 
}

string scalar scales::getVarnm() {
     return(this.varnm) 
}

string scalar scales::undo() {
	this.current = this.prev
    return(this.current) 
}

void scales::base(| string scalar base) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".base(" + base + ")" 
	}
	else {
		this.current = this.get() + ".base()" 
	}
}

void scales::category10() { 
	this.prev = this.get()
	this.current = this.get() + ".category10()" 
}

void scales::category20() { 
	this.prev = this.get()
	this.current = this.get() + ".category20()" 
}

void scales::category20b() { 
	this.prev = this.get()
	this.current = this.get() + ".category20b()" 
}

void scales::category20c() { 
	this.prev = this.get()
	this.current = this.get() + ".category20c()" 
}

void scales::clamp(| string scalar bool) { 
	this.prev = this.get()
	if (args() == 1 & (bool == "true" | bool == "false")) {
		this.current = this.get() + ".clamp(" + bool + ")" 
	}
	else {
		this.current = this.get() + ".clamp()" 
	}
}

void scales::copy() { 
	this.prev = this.get()
	this.current = this.get() + ".copy()" 
}

void scales::domain(| string scalar values) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".domain(" + values + ")" 
	}
	else {
		this.current = this.get() + ".domain()" 
	}
}

void scales::exponent(| string scalar k) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".exponent(" + k + ")" 
	}
	else {
		this.current = this.get() + ".exponent()" 
	}
}

void scales::identity(| string scalar x) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".identity(" + x + ")" 
	}
	else {
		this.current = this.get() + ".identity()" 
	}
}

void scales::interpolate(| string scalar factory) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".interpolate(" + factory + ")" 
	}
	else {
		this.current = this.get() + ".interpolate()" 
	}
}

void scales::invert(string scalar x) { 
	this.prev = this.get()
	this.current = this.get() + ".invert(" + x + ")" 
}

void scales::invertExtent(string scalar y) { 
	this.prev = this.get()
	this.current = this.get() + ".invertExtent(" + y + ")" 
}

void scales::linear(| string scalar x) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".linear(" + x + ")" 
	}
	else {
		this.current = this.get() + ".linear()" 
	}
}

void scales::log(| string scalar x) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".log(" + x + ")" 
	}
	else {
		this.current = this.get() + ".log()" 
	}
}

void scales::nice(| string scalar interval, string scalar step) { 
	this.prev = this.get()
	if (args() == 2) {
		this.current = this.get() + ".nice(" + interval + ", " + step + ")" 
	}
	if (args() == 1) {
		this.current = this.get() + ".nice(" + interval + ")" 
	}
	else {
		this.current = this.get() + ".nice()" 
	}
}

void scales::ordinal(| string scalar x) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".ordinal(" + x + ")" 
	}
	else {
		this.current = this.get() + ".ordinal()" 
	}
}

void scales::pow(| string scalar x) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".pow(" + x + ")" 
	}
	else {
		this.current = this.get() + ".pow()" 
	}
}

void scales::quantile(| string scalar x) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".quantile(" + x + ")" 
	}
	else {
		this.current = this.get() + ".quantile()" 
	}
}

void scales::quantiles() { 
	this.prev = this.get()
	this.current = this.get() + ".quantiles()" 
}

void scales::quantize(| string scalar x) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".quantize(" + x + ")" 
	}
	else {
		this.current = this.get() + ".quantize()" 
	}
}

void scales::range(| string scalar values) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".range(" + values + ")" 
	}
	else {
		this.current = this.get() + ".range()" 
	}
}

void scales::rangeBand() { 
	this.prev = this.get()
	this.current = this.get() + ".rangeBand()" 
}

void scales::rangeBands(string scalar interval, | string scalar padding, string scalar outerPadding) { 
	this.prev = this.get()
	if (args() == 3) {
		this.current = this.get() + ".rangeBands(" + interval + ", " + padding + ", " + outerPadding + ")" 
	}
	else if (args() == 2) {
		this.current = this.get() + ".rangeBands(" + interval + ", " + padding + ")" 
	}
	else {
		this.current = this.get() + ".rangeBands(" + interval + ")" 
	}
}

void scales::rangeExtent() { 
	this.prev = this.get()
	this.current = this.get() + ".rangeExtent()" 
}

void scales::rangePoints(string scalar interval, | string scalar padding) { 
	this.prev = this.get()
	if (args() == 2) {
		this.current = this.get() + ".rangePoints(" + interval + ", " + padding + ")" 
	}
	else {
		this.current = this.get() + ".rangePoints(" + interval + ")" 
	}
}

void scales::rangeRound(| string scalar values) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".rangeRound(" + values + ")" 
	}
	else {
		this.current = this.get() + ".rangeRound()" 
	}
}

void scales::rangeRoundBands(string scalar interval, | string scalar padding, string scalar outerPadding) { 
	this.prev = this.get()
	if (args() == 3) {
		this.current = this.get() + ".rangeRoundBands(" + interval + ", " + padding + ", " + outerPadding + ")" 
	}
	else if (args() == 2) {
		this.current = this.get() + ".rangeRoundBands(" + interval + ", " + padding + ")" 
	}
	else {
		this.current = this.get() + ".rangeRoundBands(" + interval + ")" 
	}
}

void scales::rangeRoundPoints(string scalar interval, | string scalar padding) { 
	this.prev = this.get()
	if (args() == 2) {
		this.current = this.get() + ".rangeRoundPoints(" + interval + ", " + padding + ")" 
	}
	else if (args() == 1) {
		this.current = this.get() + ".rangeRoundPoints(" + interval + ")" 
	}
	else {
		this.current = this.get() + ".rangeRoundPoints()" 
	}
}

void scales::scale(| string scalar x) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".scale(" + x + ")" 
	}
	else {
		this.current = this.get() + ".scale()" 
	}
}

void scales::sqrt() { 
	this.prev = this.get()
	this.current = this.get() + ".sqrt()" 
}

void scales::threshold(| string scalar x) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".threshold(" + x + ")" 
	}
	else {
		this.current = this.get() + ".threshold()" 
	}
}

void scales::tickFormat(| string scalar count, string scalar format) { 
	this.prev = this.get()
	if (args() == 2) {
		this.current = this.get() + ".tickFormat(" + count + ", " + format + ")" 
	}
	else if (args() == 1) {
		this.current = this.get() + ".tickFormat(" + count + ")" 
	}
	else {
		this.current = this.get() + ".tickFormat()" 
	}
}

void scales::ticks(| string scalar interval, string scalar step) { 
	this.prev = this.get()
	if (args() == 2) {
		this.current = this.get() + ".ticks(" + interval + ", " + step + ")" 
	}
	else if (args() == 1) {
		this.current = this.get() + ".ticks(" + interval + ")" 
	}
	else {
		this.current = this.get() + ".ticks()" 
	}
}

void scales::utc() { 
	this.prev = this.get()
	this.current = this.get() + ".utc()" 
}



end 


