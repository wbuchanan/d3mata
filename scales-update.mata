mata: 

mata clear

class scales {

private: 
string scalar scales, varnm, prev, current

public: 
string scalar get(), complete(), recover(), getVarnm() 

void base()
void category10()
void category20()
void category20b()
void category20c()
void clamp()
void copy()
void domain()
void exponent()
void identity()
void interpolate()
void invert()
void invertExtent()
void linear()
void log()
void nice()
void ordinal()
void pow()
void quantile()
void quantiles()
void quantize()
void range()
void rangeBand()
void rangeBands()
void rangeExtent()
void rangePoints()
void rangeRound()
void rangeRoundBands()
void rangeRoundPoints()
void scale()
void sqrt()
void threshold()
void tickFormat()
void ticks()
void utc()
}

void scales::init(string scalar vnm) {
     this.varnm = vnm 
     this.scales = "var " + vnm + " = scales
     this.current = "var " + vnm + " = scales
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

string scalar scales::recover() {
     return(this.prev) 
}

void scales::base(| string scalar base) { this.prev = this.get(); this.current = this.get() + ".base(" + args + ")" }

void scales::category10() { this.prev = this.get(); this.current = this.get() + ".category10(" + args + ")" }

void scales::category20() { this.prev = this.get(); this.current = this.get() + ".category20(" + args + ")" }

void scales::category20b() { this.prev = this.get(); this.current = this.get() + ".category20b(" + args + ")" }

void scales::category20c() { this.prev = this.get(); this.current = this.get() + ".category20c(" + args + ")" }

void scales::clamp(| string scalar boolean) { this.prev = this.get(); this.current = this.get() + ".clamp(" + args + ")" }

void scales::copy() { this.prev = this.get(); this.current = this.get() + ".copy(" + args + ")" }

void scales::domain(| string scalar dates) { this.prev = this.get(); this.current = this.get() + ".domain(" + args + ")" }

void scales::domain(| string scalar domain) { this.prev = this.get(); this.current = this.get() + ".domain(" + args + ")" }

void scales::domain(| string scalar numbers) { this.prev = this.get(); this.current = this.get() + ".domain(" + args + ")" }

void scales::domain(| string scalar values) { this.prev = this.get(); this.current = this.get() + ".domain(" + args + ")" }

void scales::exponent(| string scalar k) { this.prev = this.get(); this.current = this.get() + ".exponent(" + args + ")" }

void scales::identity() { this.prev = this.get(); this.current = this.get() + ".identity(" + args + ")" }

void scales::identity(string scalar x) { this.prev = this.get(); this.current = this.get() + ".identity(" + args + ")" }

void scales::interpolate(| string scalar factory) { this.prev = this.get(); this.current = this.get() + ".interpolate(" + args + ")" }

void scales::invert(string scalar x) { this.prev = this.get(); this.current = this.get() + ".invert(" + args + ")" }

void scales::invert(string scalar y) { this.prev = this.get(); this.current = this.get() + ".invert(" + args + ")" }

void scales::invertExtent(string scalar y) { this.prev = this.get(); this.current = this.get() + ".invertExtent(" + args + ")" }

void scales::linear() { this.prev = this.get(); this.current = this.get() + ".linear(" + args + ")" }

void scales::linear(string scalar x) { this.prev = this.get(); this.current = this.get() + ".linear(" + args + ")" }

void scales::log() { this.prev = this.get(); this.current = this.get() + ".log(" + args + ")" }

void scales::log(string scalar x) { this.prev = this.get(); this.current = this.get() + ".log(" + args + ")" }

void scales::nice() { this.prev = this.get(); this.current = this.get() + ".nice(" + args + ")" }

void scales::nice(| string scalar count) { this.prev = this.get(); this.current = this.get() + ".nice(" + args + ")" }

void scales::nice(| string scalar interval, | string scalar step) { this.prev = this.get(); this.current = this.get() + ".nice(" + args + ")" }

void scales::nice(| string scalar m) { this.prev = this.get(); this.current = this.get() + ".nice(" + args + ")" }

void scales::ordinal() { this.prev = this.get(); this.current = this.get() + ".ordinal(" + args + ")" }

void scales::ordinal(string scalar x) { this.prev = this.get(); this.current = this.get() + ".ordinal(" + args + ")" }

void scales::pow() { this.prev = this.get(); this.current = this.get() + ".pow(" + args + ")" }

void scales::pow(string scalar x) { this.prev = this.get(); this.current = this.get() + ".pow(" + args + ")" }

void scales::quantile() { this.prev = this.get(); this.current = this.get() + ".quantile(" + args + ")" }

void scales::quantile(string scalar x) { this.prev = this.get(); this.current = this.get() + ".quantile(" + args + ")" }

void scales::quantiles() { this.prev = this.get(); this.current = this.get() + ".quantiles(" + args + ")" }

void scales::quantize() { this.prev = this.get(); this.current = this.get() + ".quantize(" + args + ")" }

void scales::quantize(string scalar x) { this.prev = this.get(); this.current = this.get() + ".quantize(" + args + ")" }

void scales::range(| string scalar numbers) { this.prev = this.get(); this.current = this.get() + ".range(" + args + ")" }

void scales::range(| string scalar values) { this.prev = this.get(); this.current = this.get() + ".range(" + args + ")" }

void scales::rangeBand() { this.prev = this.get(); this.current = this.get() + ".rangeBand(" + args + ")" }

void scales::rangeBands(string scalar interval, | string scalar padding, | string scalar outerPadding) { this.prev = this.get(); this.current = this.get() + ".rangeBands(" + args + ")" }

void scales::rangeExtent() { this.prev = this.get(); this.current = this.get() + ".rangeExtent(" + args + ")" }

void scales::rangePoints(string scalar interval, | string scalar padding) { this.prev = this.get(); this.current = this.get() + ".rangePoints(" + args + ")" }

void scales::rangeRound(string scalar values) { this.prev = this.get(); this.current = this.get() + ".rangeRound(" + args + ")" }

void scales::rangeRound(| string scalar values) { this.prev = this.get(); this.current = this.get() + ".rangeRound(" + args + ")" }

void scales::rangeRoundBands(string scalar interval, | string scalar padding, | string scalar outerPadding) { this.prev = this.get(); this.current = this.get() + ".rangeRoundBands(" + args + ")" }

void scales::rangeRoundPoints(string scalar interval, | string scalar padding) { this.prev = this.get(); this.current = this.get() + ".rangeRoundPoints(" + args + ")" }

void scales::scale() { this.prev = this.get(); this.current = this.get() + ".scale(" + args + ")" }

void scales::scale(string scalar x) { this.prev = this.get(); this.current = this.get() + ".scale(" + args + ")" }

void scales::sqrt() { this.prev = this.get(); this.current = this.get() + ".sqrt(" + args + ")" }

void scales::threshold() { this.prev = this.get(); this.current = this.get() + ".threshold(" + args + ")" }

void scales::threshold(string scalar x) { this.prev = this.get(); this.current = this.get() + ".threshold(" + args + ")" }

void scales::tickFormat() { this.prev = this.get(); this.current = this.get() + ".tickFormat(" + args + ")" }

void scales::tickFormat(string scalar count, | string scalar format) { this.prev = this.get(); this.current = this.get() + ".tickFormat(" + args + ")" }

void scales::tickFormat(| string scalar count, | string scalar format) { this.prev = this.get(); this.current = this.get() + ".tickFormat(" + args + ")" }

void scales::ticks() { this.prev = this.get(); this.current = this.get() + ".ticks(" + args + ")" }

void scales::ticks(| string scalar count) { this.prev = this.get(); this.current = this.get() + ".ticks(" + args + ")" }

void scales::ticks(| string scalar interval, | string scalar step) { this.prev = this.get(); this.current = this.get() + ".ticks(" + args + ")" }

void scales::utc() { this.prev = this.get(); this.current = this.get() + ".utc(" + args + ")" }

end 


