mata: 

class d3 extends doc {

	private: 
	string 		scalar 		d3, varnm, prev, current

	public: 
	string 		scalar 		getter(), complete(), undo(), getVarnm()

	void 					abort(), add(), append(), ascending(), attr(), 
							attrTween(), bates(), bisect(), bisectLeft(), 
							bisectRight(), bisector(), brighter(), call(), 
							classed(), color(), csv(), darker(), data(), 
							datum(), delay(), descending(), deviation(), 
							dispatch(), duration(), each(), ease(), empty(), 
							enter(), entries(), event(), exit(), extent(), filter(), 
							flush(), forEach(), format(), formatPrefix(), 
							functor(), geo(), get(), has(), hcl(), header(), hsl(), 
							html(), insert(), interpolate(), interpolateArray(), 
							interpolateHcl(), interpolateHsl(), interpolateLab(), 
							interpolateNumber(), interpolateObject(), 
							interpolateRgb(), interpolateRound(), 
							interpolateString(), interpolateTransform(), 
							interpolateZoom(), interpolators(),interrupt(), irwinHall(), json(), 
							key(), keys(), lab(), locale(), logNormal(), map(), 
							max(), mean(), median(), merge(), mimeType(), min(), 
							mouse(), nest(), node(), normal(), ns(), numberFormat(), 
							on(), order(), pairs(), permute(), post(), prefix(),  
							property(), qualify(), quantile(), random(), range(), 
							rebind(), remove(), requote(), response(), 
							responseType(), rgb(), rollup(), rotate(), round(), 
							scale(), select(), selectAll(), selection(), send(), 
							set(), shuffle(), size(), skew(), sort(), sortKeys(), 
							sortValues(), style(), styleTween(), sum(), text(), 
							timeFormat(), timer(), toString(), touch(), touches(), 
							transform(), transition(), translate(), transpose(), 
							tsv(), tween(), type(), utc(), values(), variance(), 
							xhr(), xml(), zip(), init()

}

void d3::init(string scalar vnm) {
	string colvector varnmvec
	varnmvec = tokens(vnm, " ")
    this.varnm = varnmvec[1, 1]
	if (cols(varnmvec) == 1) {
		this.d3 = "var " + varnmvec[1, 1] + " = d3"
		this.current = "var " + varnmvec[1, 1] + " = d3"
	}
	else {
		this.d3 = varnmvec[1, 1] + " = " + varnmvec[1, 2]
		this.current = varnmvec[1, 1] + " = " + varnmvec[1, 2]
	}
	this.prev = ""
}

string scalar d3::getter() {
     return(this.current) 
}

string scalar d3::complete() {
     return(this.current + ";") 
}

string scalar d3::getVarnm() {
     return(this.varnm) 
}

string scalar d3::undo() {
	this.current = this.prev
    return(this.current) 
}

void d3::geo() {
	this.prev = this.getter()
	this.current = this.getter() + ".geo"
}

void d3::key(string scalar func) {
	this.prev = this.getter()
	this.current = this.getter() + ".key(" + func + ")"
}

void d3::random() {
	this.prev = this.getter()
	this.current = this.getter() + ".random"
}

void d3::scale() {
	this.prev = this.getter()
	this.current = this.getter() + ".scale"
}

void d3::skew() {
	this.prev = this.getter()
	this.current = this.getter() + ".skew"
}

void d3::abort() { 
	this.prev = this.getter()
	this.current = this.getter() + ".abort()" 
}


void d3::add(string scalar value) { 
	this.prev = this.getter()
	this.current = this.getter() + ".add(" + value + ")" 
}


void d3::append(string scalar name) { 
	this.prev = this.getter()
	this.current = this.getter() + `".append(""' + name + `"")"' 
}


void d3::ascending(string scalar a, string scalar b) { 
	this.prev = this.getter()
	this.current = this.getter() + ".ascending(" + a + ", " + b + ")" 
}


void d3::attr(string scalar name, | string scalar value) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + `".attr(""' + name + `"", "' + value + ")" 
	}
	else {
		this.current = this.getter() + `".attr(""' + name + `"")"' 
	}
}


void d3::attrTween(string scalar name, string scalar tween) { 
	this.prev = this.getter()
	this.current = this.getter() + ".attrTween(" + name + ", " + tween + ")" 
}


void d3::bates(string scalar count) { 
	this.prev = this.getter()
	this.current = this.getter() + ".bates(" + count + ")" 
}


void d3::bisect(string scalar aray, string scalar x, | string scalar lo, string scalar hi) { 
	this.prev = this.getter()
	if (args() == 4) {
		this.current = this.getter() + ".bisect(" + aray + ", " + x + ", " + lo + ", " + hi + ")" 
	}
	else if (args() == 3) {
		this.current = this.getter() + ".bisect(" + aray + ", " + x + ", " + lo + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".bisect(" + aray + ", " + x + ")" 
	}
}


void d3::bisectLeft(string scalar aray, string scalar x, | string scalar lo, string scalar hi) { 
	this.prev = this.getter()
	if (args() == 4) {
		this.current = this.getter() + ".bisectLeft(" + aray + ", " + x + ", " + lo + ", " + hi + ")" 
	}
	else if (args() == 3) {
		this.current = this.getter() + ".bisectLeft(" + aray + ", " + x + ", " + lo + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".bisectLeft(" + aray + ", " + x + ")" 
	}
}


void d3::bisectRight(string scalar aray, string scalar x, | string scalar lo, string scalar hi) { 
	this.prev = this.getter()
	if (args() == 4) {
		this.current = this.getter() + ".bisectRight(" + aray + ", " + x + ", " + lo + ", " + hi + ")" 
	}
	else if (args() == 3) {
		this.current = this.getter() + ".bisectRight(" + aray + ", " + x + ", " + lo + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".bisectRight(" + aray + ", " + x + ")" 
	}
}


void d3::bisector(string scalar comparator) { 
	this.prev = this.getter()
	this.current = this.getter() + ".bisector(" + comparator + ")" 
}


void d3::brighter(| string scalar k) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".brighter(" + k + ")" 
	}
	else {
		this.current = this.getter() + ".brighter()" 
	}
}


void d3::call(string scalar func, | string scalar arguments) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".call(" + func + ", " + arguments + ")" 
	}
	else {
		this.current = this.getter() + ".call(" + func + ")" 
	}
}


void d3::classed(string scalar name, | string scalar value) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + `".classed(""' + name + `"", "' + value + ")" 
	}
	else {
		this.current = this.getter() + ".classed(" + name + ")"
	}
}

void d3::color() { 
	this.prev = this.getter()
	this.current = this.getter() + ".color()" 
}


void d3::csv(string scalar url, | string scalar accessor, string scalar callback) { 
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".csv(" + url + ", " + accessor + ", " + callback + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".csv(" + url + ", " + accessor + ")" 
	}
	else {
		this.current = this.getter() + ".csv(" + url + ")" 
	}
}


void d3::darker(| string scalar k) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".darker(" + k + ")" 
	}
	else {
		this.current = this.getter() + ".darker()" 
	}
}


void d3::data(| string scalar values, string scalar key) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".data(" + values + ", " + key + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".data(" + values + ")" 
	}
	else {
		this.current = this.getter() + ".data()" 
	}
}


void d3::datum(| string scalar value) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".datum(" + value + ")" 
	}
	else {
		this.current = this.getter() + ".datum()" 
	}
}


void d3::delay(| string scalar delay) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".delay(" + delay + ")" 
	}
	else {
		this.current = this.getter() + ".delay()" 
	}
}


void d3::descending(string scalar a, string scalar b) { 
	this.prev = this.getter()
	this.current = this.getter() + ".descending(" + a + ", " + b + ")" 
}


void d3::deviation(string scalar aray, | string scalar accessor) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".deviation(" + aray + ", " + accessor + ")" 
	}
	else {
		this.current = this.getter() + ".deviation(" + aray + ")" 
	}
}


void d3::dispatch(string scalar types) { 
	this.prev = this.getter()
	this.current = this.getter() + ".dispatch(" + types + ")" 
}


void d3::duration(| string scalar duration) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".duration(" + duration + ")" 
	}
	else {
		this.current = this.getter() + ".duration()" 
	}
}


void d3::each(| string scalar type, string scalar listener) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".each(" + type + ", " + listener + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".each(" + type + ")" 
	}
	else {
		this.current = this.getter() + ".each()" 
	}
}


void d3::ease(| string scalar value, string scalar arguments) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".ease(" + value + ", " + arguments + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".ease(" + value + ")" 
	}
	else {
		this.current = this.getter() + ".ease()" 
	}
}


void d3::empty() { 
	this.prev = this.getter()
	this.current = this.getter() + ".empty()" 
}


void d3::enter() { 
	this.prev = this.getter()
	this.current = this.getter() + ".enter()" 
}


void d3::entries(| string scalar object) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".entries(" + object + ")" 
	}
	else {
		this.current = this.getter() + ".entries()" 
	}
}

void d3::event() {
	this.prev = this.getter()
	this.current = this.getter() + ".event"
}


void d3::exit() { 
	this.prev = this.getter()
	this.current = this.getter() + ".exit()" 
}


void d3::extent(string scalar aray, | string scalar accessor) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".extent(" + aray + ", " + accessor + ")" 
	}
	else {
		this.current = this.getter() + ".extent(" + aray + ")" 
	}
}


void d3::filter(string scalar selector) { 
	this.prev = this.getter()
	this.current = this.getter() + ".filter(" + selector + ")" 
}


void d3::flush() { 
	this.prev = this.getter()
	this.current = this.getter() + ".flush()" 
}


void d3::forEach(string scalar func) { 
	this.prev = this.getter()
	this.current = this.getter() + ".forEach(" + func + ")" 
}


void d3::format(string scalar specifier) { 
	this.prev = this.getter()
	this.current = this.getter() + ".format(" + specifier + ")" 
}


void d3::formatPrefix(string scalar value, | string scalar precision) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".formatPrefix(" + value + ", " + precision + ")" 
	}
	else {
		this.current = this.getter() + ".formatPrefix(" + value + ")" 
	}
}


void d3::functor(string scalar value) { 
	this.prev = this.getter()
	this.current = this.getter() + ".functor(" + value + ")" 
}


void d3::get(| string scalar callback) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".get(" + callback + ")" 
	}
	else {
		this.current = this.getter() + ".get()" 
	}
}


void d3::has(string scalar key) { 
	this.prev = this.getter()
	this.current = this.getter() + ".has(" + key + ")" 
}


void d3::hcl(string scalar h, | string scalar c, string scalar l) { 
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".hcl(" + h + ", " + c + ", " + l + ")" 
	}
	else {
		this.current = this.getter() + ".hcl(" + h + ")" 
	}
}


void d3::header(string scalar name, | string scalar value) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + `".header(""' + name + `"", "' + value + ")" 
	}
	else {
		this.current = this.getter() + `".header(""' + name + `"")"' 
	}
}


void d3::hsl(| string scalar h, string scalar s, string scalar l) { 
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".hsl(" + h + ", " + s + ", " + l + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".hsl(" + h + ")" 
	}
	else {
		this.current = this.getter() + ".hsl()" 
	}
}


void d3::html(| string scalar url, string scalar callback) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + `".html(""' + url + `"", "' + callback + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + `".html(""' + url + `"")"'
	}
	else {
		this.current = this.getter() + ".html()" 
	}
}


void d3::insert(string scalar name, | string scalar before) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + `".insert(""' + name + `"", ""' + before + `"")"' 
	}
	else {
		this.current = this.getter() + ".insert(" + name + ", " + before + ")" 
	}
}	


void d3::interpolate(string scalar a, string scalar b) { 
	this.prev = this.getter()
	this.current = this.getter() + ".interpolate(" + a + ", " + b + ")" 
}


void d3::interpolators(string scalar func) { 
	this.prev = this.getter()
	this.current = this.getter() + ".interpolators.push(" + func + ")" 
}


void d3::interpolateArray(string scalar a, string scalar b) { 
	this.prev = this.getter()
	this.current = this.getter() + ".interpolateArray(" + a + ", " + b + ")" 
}


void d3::interpolateHcl(string scalar a, string scalar b) { 
	this.prev = this.getter()
	this.current = this.getter() + ".interpolateHcl(" + a + ", " + b + ")" 
}


void d3::interpolateHsl(string scalar a, string scalar b) { 
	this.prev = this.getter()
	this.current = this.getter() + ".interpolateHsl(" + a + ", " + b + ")" 
}


void d3::interpolateLab(string scalar a, string scalar b) { 
	this.prev = this.getter()
	this.current = this.getter() + ".interpolateLab(" + a + ", " + b + ")" 
}


void d3::interpolateNumber(string scalar a, string scalar b) { 
	this.prev = this.getter()
	this.current = this.getter() + ".interpolateNumber(" + a + ", " + b + ")" 
}


void d3::interpolateObject(string scalar a, string scalar b) { 
	this.prev = this.getter()
	this.current = this.getter() + ".interpolateObject(" + a + ", " + b + ")" 
}


void d3::interpolateRgb(string scalar a, string scalar b) { 
	this.prev = this.getter()
	this.current = this.getter() + ".interpolateRgb(" + a + ", " + b + ")" 
}


void d3::interpolateRound(string scalar a, string scalar b) { 
	this.prev = this.getter()
	this.current = this.getter() + ".interpolateRound(" + a + ", " + b + ")" 
}


void d3::interpolateString(string scalar a, string scalar b) { 
	this.prev = this.getter()
	this.current = this.getter() + ".interpolateString(" + a + ", " + b + ")" 
}


void d3::interpolateTransform(string scalar a, string scalar b) { 
	this.prev = this.getter()
	this.current = this.getter() + ".interpolateTransform(" + a + ", " + b + ")" 
}


void d3::interpolateZoom(string scalar a, string scalar b) { 
	this.prev = this.getter()
	this.current = this.getter() + ".interpolateZoom(" + a + ", " + b + ")" 
}


void d3::interrupt(| string scalar name) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".interrupt(" + name + ")" 	
	}
	else {
		this.current = this.getter() + ".interrupt()" 
	}
}


void d3::irwinHall(string scalar count) { 
	this.prev = this.getter()
	this.current = this.getter() + ".irwinHall(" + count + ")" 
}


void d3::json(string scalar url, | string scalar callback) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + `".json(""' + url + `"", "' + callback + ")" 
	}
	else {
		this.current = this.getter() + `".json(""' + url + `"")"' 
	}
}


void d3::keys(string scalar object) { 
	this.prev = this.getter()
	this.current = this.getter() + ".keys(" + object + ")" 
}


void d3::lab(string scalar l, | string scalar a, string scalar b) { 
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".lab(" + l + ", " + a + ", " + b + ")" 
	}
	else {
		this.current = this.getter() + ".lab(" + l + ")" 
	}
}


void d3::locale(string scalar definition) { 
	this.prev = this.getter()
	this.current = this.getter() + ".locale(" + definition + ")" 
}


void d3::logNormal(| string scalar mean, string scalar deviation) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".logNormal(" + mean + ", " + deviation + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".logNormal(" + mean + ")" 
	}
	else {
		this.current = this.getter() + ".logNormal()" 
	}
}


void d3::map(| string scalar object, string scalar key) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".map(" + object + ", " + key + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".map(" + object + ")" 
	}
	else {
		this.current = this.getter() + ".map()" 
	}
}


void d3::max(string scalar aray, | string scalar accessor) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".max(" + aray + ", " + accessor + ")" 
	}
	else {
		this.current = this.getter() + ".max(" + aray + ")" 
	}
}


void d3::mean(string scalar aray, | string scalar accessor) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".mean(" + aray + ", " + accessor + ")" 
	}
	else {
		this.current = this.getter() + ".mean(" + aray + ")" 
	}
}


void d3::median(string scalar aray, | string scalar accessor) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".median(" + aray + ", " + accessor + ")" 
	}
	else {
		this.current = this.getter() + ".median(" + aray + ")" 
	}
}


void d3::merge(string scalar arays) { 
	this.prev = this.getter()
	this.current = this.getter() + ".merge(" + arays + ")" 
}


void d3::mimeType(| string scalar type) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + `".mimeType(""' + type + `"")"' 
	}
	else {
		this.current = this.getter() + ".mimeType()" 
	}
}


void d3::min(string scalar aray, | string scalar accessor) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".min(" + aray + ", " + accessor + ")" 
	}
	else {
		this.current = this.getter() + ".min(" + aray + ")" 
	}
}


void d3::mouse(string scalar container) { 
	this.prev = this.getter()
	this.current = this.getter() + ".mouse(" + container + ")" 
}


void d3::nest() { 
	this.prev = this.getter()
	this.current = this.getter() + ".nest()" 
}


void d3::node() { 
	this.prev = this.getter()
	this.current = this.getter() + ".node()" 
}


void d3::normal(| string scalar mean, string scalar deviation) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".normal(" + mean + ", " + deviation + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".normal(" + mean + ")" 
	}
	else {
		this.current = this.getter() + ".normal()" 
	}
}


void d3::ns() {
	this.prev = this.getter()
	this.current = this.getter() + ".ns"
}

void d3::numberFormat(string scalar specifier) { 
	this.prev = this.getter()
	this.current = this.getter() + ".numberFormat(" + specifier + ")" 
}


void d3::on(string scalar type, | string scalar listener, string scalar capture) { 
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + `".on(""' + type + `"", "' + listener + ", " + capture + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + `".on(""' + type + `"", "' + listener + ")" 
	}
	else {
		this.current = this.getter() + `".on(""' + type + `"")"' 
	}
}


void d3::order() { 
	this.prev = this.getter()
	this.current = this.getter() + ".order()" 
}


void d3::pairs(string scalar aray) { 
	this.prev = this.getter()
	this.current = this.getter() + ".pairs(" + aray + ")" 
}


void d3::permute(string scalar aray, string scalar indexes) { 
	this.prev = this.getter()
	this.current = this.getter() + ".permute(" + aray + ", " + indexes + ")" 
}


void d3::post(| string scalar data, string scalar callback) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".post(" + data + ", " + callback + ")" 
	}
	else {
		this.current = this.getter() + ".post(" + data + ")" 
	}
}

void d3::prefix() {
	this.prev = this.getter()
	this.current = this.getter + ".prefix"
}

void d3::property(string scalar name, | string scalar value) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + `".property(""' + name + `"", "' + value + ")" 
	}
	else {
		this.current = this.getter() + ".property(" + name + ")" 
	}
}


void d3::qualify(string scalar name) { 
	this.prev = this.getter()
	this.current = this.getter() + ".qualify(" + name + ")" 
}


void d3::quantile(| string scalar numbers, real scalar p) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".quantile(" + numbers + ", " + strofreal(p) + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".quantile(" + numbers + ")" 
	}
	else {
		this.current = this.getter() + ".quantile()" 
	}
}


void d3::range(real scalar stop, | real scalar start, real scalar step) { 
	this.prev = this.getter()
	string scalar strt, stp, ste
	if (start == .) {
		strt = strofreal(0)
	}
	else {
		strt = strofreal(start)
	}
	if (step == .) {
		ste = strofreal(1)
	}
	else {
		ste = strofreal(step)
	}
	stp = strofreal(stop)
	this.current = this.getter() + ".range(" + strt + ", " + stp + ", " + ste + ")" 
}


void d3::rebind(string scalar target, string scalar source, string scalar names) { 
	this.prev = this.getter()
	this.current = this.getter() + ".rebind(" + target + ", " + source + ", " + names + ")" 
}


void d3::remove(| string scalar value) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".remove(" + value + ")" 
	}
	else {
		this.current = this.getter() + ".remove()" 
	}
}


void d3::requote(string scalar strng) { 
	this.prev = this.getter()
	this.current = this.getter() + `".requote(""' + strng + `"")"' 
}


void d3::response(string scalar value) { 
	this.prev = this.getter()
	this.current = this.getter() + ".response(" + value + ")" 
}


void d3::responseType(string scalar type) { 
	this.prev = this.getter()
	this.current = this.getter() + ".responseType(" + type + ")" 
}


void d3::rgb(| string scalar r, string scalar g, string scalar b) { 
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".rgb(" + r + ", " + g + ", " + b + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".rgb(" + r + ")" 
	}
	else {
		this.current = this.getter() + ".rgb()" 
	}
}


void d3::rollup(string scalar func) { 
	this.prev = this.getter()
	this.current = this.getter() + ".rollup(" + func + ")" 
}

void d3::rotate() {
	this.prev = this.getter()
	this.current = this.getter() + ".rotate()" 
}


void d3::round(real scalar x, | real scalar n) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".round(" + strofreal(x) + ", " + strofreal(n) + ")" 
	}
	else {
		this.current = this.getter() + ".round(" + strofreal(x) + ")" 
	}
}


void d3::select(string scalar selector) { 
	this.prev = this.getter()
	this.current = this.getter() + `".select(""' + selector + `"")"' 
}


void d3::selectAll(string scalar selector) { 
	this.prev = this.getter()
	this.current = this.getter() + `".selectAll(""' + selector + `"")"' 
}


void d3::selection() { 
	this.prev = this.getter()
	this.current = this.getter() + ".selection()" 
}


void d3::send(string scalar method, | string scalar data, string scalar callback) { 
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".send(" + method + ", " + data + ", " + callback + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".send(" + method + ", " + data + ")" 
	}
	else {
		this.current = this.getter() + ".send(" + method + ")" 
	}
}


void d3::set(| string scalar key, string scalar value) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".set(" + key + ", " + value + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".set(" + key + ")" 
	}
	else {
		this.current = this.getter() + ".set()" 
	}
}

void d3::shuffle(string scalar aray, | string scalar lo, string scalar hi) { 
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".shuffle(" + aray + ", " + lo + ", " + hi + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".shuffle(" + aray + ", " + lo + ")" 
	}
	else {
		this.current = this.getter() + ".shuffle(" + aray + ")" 
	}
}


void d3::size() { 
	this.prev = this.getter()
	this.current = this.getter() + ".size()" 
}


void d3::sort(| string scalar comparator) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".sort(" + comparator + ")" 
	}
	else {
		this.current = this.getter() + ".sort()" 
	}
}


void d3::sortKeys(string scalar comparator) { 
	this.prev = this.getter()
	this.current = this.getter() + ".sortKeys(" + comparator + ")" 
}


void d3::sortValues(string scalar comparator) { 
	this.prev = this.getter()
	this.current = this.getter() + ".sortValues(" + comparator + ")" 
}


void d3::style(string scalar name, | string scalar value, string scalar priority) { 
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + `".style(""' + name + `"", "' + value + ", " + priority + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + `".style(""' + name + `"", "' + value + ")" 
	}
	else {
		this.current = this.getter() + ".style(" + name + ")" 
	}
}


void d3::styleTween(string scalar name, string scalar tween, | string scalar priority) { 
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".styleTween(" + name + ", " + tween + ", " + priority + ")" 
	}
	else {
		this.current = this.getter() + ".styleTween(" + name + ", " + tween + ")" 
	}
}


void d3::sum(string scalar aray, | string scalar accessor) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".sum(" + aray + ", " + accessor + ")" 
	}
	else {
		this.current = this.getter() + ".sum(" + aray + ")" 
	}
}


void d3::text(| string scalar url, string scalar mimeType, string scalar callback) { 
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + `".text(""' + url + `"", ""' + mimeType + `"", "' + callback + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + `".text(""' + url + `"", ""' + mimeType + `"")"' 
	}
	else if (args() == 1) {
		this.current = this.getter() + `".text(""' + url + `"")"' 
	}
	else {
		this.current = this.getter() + ".text()"
	}
}


void d3::timeFormat(string scalar specifier) { 
	this.prev = this.getter()
	this.current = this.getter() + ".timeFormat(" + specifier + ")" 
}


void d3::timer(string scalar func, | string scalar delay, string scalar time) { 
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".timer(" + func + ", " + delay + ", " + time + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".timer(" + func + ", " + delay + ")" 
	}
	else {
		this.current = this.getter() + ".timer(" + func + ")" 
	}
}


void d3::toString() { 
	this.prev = this.getter()
	this.current = this.getter() + ".toString()" 
}


void d3::touch(string scalar container, | string scalar touches, string scalar identifier) { 
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".touch(" + container + ", " + touches + ", " + identifier + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".touch(" + container + ", " + touches + ")" 
	}
	else {
		this.current = this.getter() + ".touch(" + container + ")" 
	}
}


void d3::touches(string scalar container, | string scalar touches) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".touches(" + container + ", " + touches + ")" 
	}
	else {
		this.current = this.getter() + ".touches(" + container + ")" 
	}
}


void d3::transform(string scalar strng) { 
	this.prev = this.getter()
	this.current = this.getter() + ".transform(" + strng + ")" 
}


void d3::transition(| string scalar selection, string scalar name) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".transition(" + selection + ", " + name + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".transition(" + selection + ")" 
	}
	else {
		this.current = this.getter() + ".transition()" 
	}
}

void d3::translate() {
	this.prev = this.getter()
	this.current = this.getter() + ".translate"
}


void d3::transpose(string scalar matrx) { 
	this.prev = this.getter()
	this.current = this.getter() + ".transpose(" + matrx + ")" 
}


void d3::tsv(string scalar url, | string scalar accessor, string scalar callback) { 
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + `".tsv(""' + url + `"", "' + accessor + ", " + callback + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + `".tsv(""' + url + `"", "' + accessor + ")" 
	}
	else {
		this.current = this.getter() + `".tsv(""' + url + `"")"' 
	}
}


void d3::tween(string scalar name, string scalar factory) { 
	this.prev = this.getter()
	this.current = this.getter() + ".tween(" + name + ", " + factory + ")" 
}


void d3::type(string scalar arguments) { 
	this.prev = this.getter()
	this.current = this.getter() + ".type(" + arguments + ")" 
}


void d3::utc(string scalar specifier) { 
	this.prev = this.getter()
	this.current = this.getter() + ".utc(" + specifier + ")" 
}


void d3::values(| string scalar object) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".values(" + object + ")" 
	}
	else {
		this.current = this.getter() + ".values()" 
	}
}

void d3::variance(string scalar aray, | string scalar accessor) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".variance(" + aray + ", " + accessor + ")" 
	}
	else {
		this.current = this.getter() + ".variance(" + aray + ")" 
	}
}


void d3::xhr(string scalar url, | string scalar mimeType, string scalar callback) { 
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + `".xhr(""' + url + `"", ""' + mimeType + `"", "' + callback + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + `".xhr(""' + url + `"", ""' + mimeType + `"")"' 
	}
	else {
		this.current = this.getter() + `".xhr(""' + url + `"")"' 
	}
}


void d3::xml(string scalar url, | string scalar mimeType, string scalar callback) { 
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + `".xml(""' + url + `"", ""' + mimeType + `"", "' + callback + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + `".xml(""' + url + `"", ""' + mimeType + `"")"' 
	}
	else {
		this.current = this.getter() + `".xml(""' + url + `"")"' 
	}
}


void d3::zip(string scalar arays) { 
	this.prev = this.getter()
	this.current = this.getter() + ".zip(" + arays + ")" 
}

end 


