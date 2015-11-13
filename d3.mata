mata: 

class d3 extends doc {

	private: 
	string 		scalar 		d3, varnm, prev, current

	public: 
	string 		scalar 		getter(), complete(), undo(), getVarnm()

	void 					abort(), add(), append(), ascending(), attr(), 
							attrTween(), bates(), bisect(), bisectLeft(), 
							bisectRight(), bisector(), brighter(), call(), 
							classed(), color(), csv(), darker(), 
							data(), datum(), delay(), descending(), 
							deviation(), dispatch(), duration(), each(), 
							ease(), empty(), enter(), entries(), event(), 
							exit(), extent(), filter(), flush(), forEach(), 
							format(), formatPrefix(), functor(), geo(), 
							get(), has(), hcl(), header(), hsl(), html(), 
							insert(), interpolate(), interpolateArray(), 
							interpolateHcl(), interpolateHsl(), 
							interpolateLab(), interpolateNumber(), 
							interpolateObject(), interpolateRgb(), 
							interpolateRound(), interpolateString(), 
							interpolateTransform(), interpolateZoom(), 
							interpolators(), interrupt(), irwinHall(), 
							json(), key(), keys(), lab(), locale(), 
							logNormal(), map(), max(), mean(), median(), 
							merge(), mimeType(), min(), mouse(), nest(), 
							node(), normal(), ns(), numberFormat(), on(), 
							order(), pairs(), permute(), post(), prefix(), 
							property(), qualify(), quantile(), random(), 
							range(), rebind(), remove(), requote(), response(), 
							responseType(), rgb(), rollup(), rotate(), round(), 
							scale(), select(), selectAll(), selection(), 
							send(), set(), shuffle(), size(), skew(), sort(), 
							sortKeys(), sortValues(), style(), styleTween(), 
							sum(), text(), timeFormat(), timer(), toString(), 
							touch(), touches(), transform(), transition(), 
							translate(), transpose(), tsv(), tween(), type(), 
							utc(), values(), variance(), xhr(), xml(), zip(), 
							behavior(), center(), drag(), origin(), 
							scaleExtent(), x(), y(), zoom(), area(), 
							centroid(), clip(), clipExtent(), find(), 
							geom(), hull(), links(), polygon(), quadtree(), 
							triangles(), visit(), voronoi(), alpha(), bins(), 
							bundle(), charge(), chargeDistance(), children(), 
							chord(), chords(), cluster(), endAngle(), force(), 
							frequency(), friction(), gravity(), groups(), 
							hierarchy(), histogram(), layout(), linkDistance(), 
							linkStrength(), matrx(), mode(), nodeSize(), 
							nodes(), offset(), out(), pack(), padAngle(), 
							padding(), partition(), pie(), radius(), ratio(), 
							resume(), revalue(), separation(), sortChords(), 
							sortGroups(), sortSubgroups(), stack(), start(), 
							startAngle(), sticky(), stop(), theta(), tick(), 
							tree(), treemap(), value(), albers(), albersUsa(), 
							angle(), azimuthalEqualArea(), azimuthalEquidistant(), 
							bounds(), circle(), clipAngle(), conicConformal(), 
							conicEqualArea(), conicEquidistant(), context(), 
							distance(), equirectangular(), gnomonic(), graticule(), 
							invert(), length(), lineEnd(), lineStart(), lines(), 
							majorExtent(), majorStep(), mercator(), 
							minorExtent(), minorStep(), orthographic(), outline(), 
							parallels(), path(), point(), pointRadius(), 
							polygonEnd(), polygonStart(), precision(), 
							projection(), projectionMutator(), raw(), 
							rotation(), sphere(), step(), stereographic(), 
							stream(), transverseMercator(), base(), 
							category10(), category20(), category20b(), 
							category20c(), clamp(), copy(), domain(), exponent(), 
							identity(), invertExtent(), linear(), log(), nice(), 
							ordinal(), pow(), quantiles(), quantize(), 
							rangeBand(), rangeBands(), rangeExtent(), 
							rangePoints(), rangeRound(), rangeRoundBands(), 
							rangeRoundPoints(), sqrt(), threshold(), 
							tickFormat(), ticks(), time(), arc(), axis(), 
							brush(), clear(), cornerRadius(), defined(), 
							diagonal(), innerRadius(), innerTickSize(), line(), 
							orient(), outerRadius(), outerTickSize(), 
							padRadius(), radial(), source(), svg(), symbol(), 
							symbolTypes(), target(), tension(), tickPadding(), 
							tickSize(), tickValues(), x0(), x1(), y0(), y1(), 
							ceil(), day(), dayOfYear(), days(), floor(), 
							friday(), fridayOfYear(), fridays(), hour(), 
							hours(), interval(), iso(), minute(), minutes(), 
							monday(), mondayOfYear(), mondays(), month(), 
							months(), multi(), parse(), saturday(), 
							saturdayOfYear(), saturdays(), second(), seconds(), 
							sunday(), sundayOfYear(), sundays(), thursday(), 
							thursdayOfYear(), thursdays(), tuesday(), 
							tuesdayOfYear(), tuesdays(), wednesday(), 
							wednesdayOfYear(), wednesdays(), week(), 
							weekOfYear(), weeks(), year(), years(), init() 


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

void d3::scale(| string scalar scale) {
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".scale(" + scale +")"
	}
	else {
		this.current = this.getter() + ".scale"
	}
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
		this.current = this.getter() + `".csv(""' + url + `"", "' + accessor + ", " + callback + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + `".csv(""' + url + `"", "' + accessor + ")" 
	}
	else {
		this.current = this.getter() + `".csv(""' + url + `"")"' 
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

void d3::event(| string scalar event) {
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".event(" + event + ")"
	}
	else {
		this.current = this.getter() + ".event"
	}
}


void d3::exit() { 
	this.prev = this.getter()
	this.current = this.getter() + ".exit()" 
}


void d3::extent(| string scalar aray, string scalar accessor) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".extent(" + aray + ", " + accessor + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".extent(" + aray + ")" 
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


void d3::interpolate(| string scalar a, string scalar b) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".interpolate(" + a + ", " + b + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".interpolate(" + a + ")" 
	}
	else {
		this.current = this.getter() + ".interpolate()" 
	}
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


void d3::order(| string scalar order) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".order(" + order + ")" 
	}
	else {
		this.current = this.getter() + ".order()" 
	}
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
	this.current = this.getter() + ".prefix"
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

void d3::rotate(| string scalar rotate) {
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".rotate(" + rotate + ")" 
	}
	else {
		this.current = this.getter() + ".rotate()" 
	}
}


void d3::round(| string scalar x, string scalar n) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".round(" + strofreal(x) + ", " + strofreal(n) + ")" 
	}
	else if {
		this.current = this.getter() + ".round(" + strofreal(x) + ")" 
	}
	else {
		this.current = this.getter() + ".round()" 
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


void d3::size(| string scalar width, string scalar height) { 
	this.prev = this.get()
	if (args() == 2) {
		this.current = this.getter() + ".size(" + width + ", " + height + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".size(" + width + ")" 
	}
	else {
		this.current = this.getter() + ".size()" 
	}
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

void d3::translate(| string scalar translate, real scalar d3) {
	this.prev = this.getter()
	if (translate != "") {
		this.current = this.getter() + ".translate(" + translate + ")"
	}
	else if (translate == "" & d3 == 1) {
		this.current = this.getter() + ".translate()"
	}
	else if (translate == "" & d3 == 0) {
		this.current = this.getter() + ".translate"
	}
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


void d3::type(| string scalar arguments) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".type(" + arguments + ")" 
	}
	else {
		this.current = this.getter() + ".type()" 
	}
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

void d3::behavior() {
	this.prev = this.getter()
	this.current = this.getter() + ".behavior"
}

void d3::center(| string scalar center) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".center(" + center + ")" 
	}
	else {
		this.current = this.getter() + ".center()" 
	}
}

void d3::drag() { 
	this.prev = this.getter()
	this.current = this.getter() + ".drag()" 
}

void d3::origin(| string scalar origin) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".origin(" + origin + ")" 
	}
	else {
		this.current = this.getter() + ".origin()" 
	}
}

void d3::scaleExtent(| string scalar extent) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".scaleExtent(" + extent + ")" 
	}
	else {
		this.current = this.getter() + ".scaleExtent()" 
	}
}

void d3::x(| string scalar x) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".x(" + x + ")" 
	}
	else {
		this.current = this.getter() + ".x()" 
	}
}

void d3::y(| string scalar y) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".y(" + y + ")" 
	}
	else {
		this.current = this.getter() + ".y()" 
	}
}

void d3::x0(| string scalar x0) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".x0(" + x0 + ")" 
	}
	else {
		this.current = this.getter() + ".x0()" 
	}
}

void d3::y0(| string scalar y0) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".y0(" + y0 + ")" 
	}
	else {
		this.current = this.getter() + ".y0()" 
	}
}

void d3::x1(| string scalar x1) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".x1(" + x1 + ")" 
	}
	else {
		this.current = this.getter() + ".x1()" 
	}
}

void d3::y1(| string scalar y1) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".y1(" + y1 + ")" 
	}
	else {
		this.current = this.getter() + ".y1()" 
	}
}

void d3::zoom(| string scalar selection) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".zoom(" + selection + ")" 
	}
	else {
		this.current = this.getter() + ".zoom()" 
	}
}

void d3::geom() {
	this.prev = this.getter()
	this.current = this.getter() + ".geom"
}

void d3::clip(string scalar subject) { 
	this.prev = this.getter()
	this.current = this.getter() + ".clip(" + subject + ")" 
}

void d3::clipExtent(| string scalar extent) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".clipExtent(" + extent + ")" 
	}
	else {
		this.current = this.getter() + ".clipExtent()" 
	}
}

void d3::find(string scalar point) { 
	this.prev = this.getter()
	this.current = this.getter() + ".find(" + point + ")" 
}

void d3::hull(| string scalar vertices) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".hull(" + vertices + ")" 
	}
	else {
		this.current = this.getter() + ".hull()" 
	}
}

void d3::polygon(string scalar vertices) { 
	this.prev = this.getter()
	this.current = this.getter() + ".polygon(" + vertices + ")" 
}

void d3::quadtree(| string scalar points, string scalar x1, string scalar y1, string scalar x2, string scalar y2) { 
	this.prev = this.getter()
	if (args() == 5) {
		this.current = this.getter() + ".quadtree(" + points + ", " + x1 + ", " + y1 + ", " + x2 + ", " + y2 + ")" 
	}
	if (args() == 4) {
		this.current = this.getter() + ".quadtree(" + points + ", " + x1 + ", " + y1 + ", " + x2 + ")" 
	}
	if (args() == 3) {
		this.current = this.getter() + ".quadtree(" + points + ", " + x1 + ", " + y1 + ")" 
	}
	if (args() == 2) {
		this.current = this.getter() + ".quadtree(" + points + ", " + x1 + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".quadtree(" + points + ")" 
	}
	else {
		this.current = this.getter() + ".quadtree()" 	
	}
}

void d3::triangles(string scalar data) { 
	this.prev = this.getter()
	this.current = this.getter() + ".triangles(" + data + ")" 
}

void d3::visit(string scalar callback) { 
	this.prev = this.getter()
	this.current = this.getter() + ".visit(" + callback + ")" 
}

void d3::voronoi(| string scalar data) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".voronoi(" + data + ")" 
	}
	else {
		this.current = this.getter() + ".voronoi()" 
	}
}

void d3::layout() {
	this.prev = this.getter()
	this.current = this.getter() + ".layout"
}

void d3::alpha(| string scalar value) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".alpha(" + value + ")" 
	}
	else {
		this.current = this.getter() + ".alpha()" 
	}
}

void d3::bins(| string scalar count) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".bins(" + count + ")" 
	}
	else {
		this.current = this.getter() + ".bins()" 
	}
}

void d3::bundle(| string scalar links) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".bundle(" + links + ")" 
	}
	else {
		this.current = this.getter() + ".bundle()" 
	}
}

void d3::charge(| string scalar charge) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".charge(" + charge + ")" 
	}
	else {
		this.current = this.getter() + ".charge()" 
	}
}

void d3::chargeDistance(| string scalar distance) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".chargeDistance(" + distance + ")" 
	}
	else {
		this.current = this.getter() + ".chargeDistance()" 
	}
}

void d3::children(| string scalar accessor) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".children(" + accessor + ")" 
	}
	else {
		this.current = this.getter() + ".children()" 
	}
}

void d3::chords() { 
	this.prev = this.getter()
	this.current = this.getter() + ".chords()" 
}

void d3::cluster(| string scalar root) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".cluster(" + root + ")" 
	}
	else {
		this.current = this.getter() + ".cluster()" 
	}
}

void d3::force() { 
	this.prev = this.getter()
	this.current = this.getter() + ".force()" 
}

void d3::frequency(| string scalar frequency) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".frequency(" + frequency + ")" 
	}
	else {
		this.current = this.getter() + ".frequency()" 
	}
}

void d3::friction(| string scalar friction) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".friction(" + friction + ")" 
	}
	else {
		this.current = this.getter() + ".friction()" 
	}
}

void d3::gravity(| string scalar gravity) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".gravity(" + gravity + ")" 
	}
	else {
		this.current = this.getter() + ".gravity()" 
	}
}

void d3::groups() { 
	this.prev = this.getter()
	this.current = this.getter() + ".groups()" 
}

void d3::hierarchy(| string scalar root) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".hierarchy(" + root + ")" 
	}
	else {
		this.current = this.getter() + ".hierarchy()" 
	}
}

void d3::histogram(| string scalar values, string scalar index) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".histogram(" + values + ", " + index + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".histogram(" + values + ")" 
	}
	else {
		this.current = this.getter() + ".histogram()" 
	}
}

void d3::linkDistance(| string scalar distance) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".linkDistance(" + distance + ")" 
	}
	else {
		this.current = this.getter() + ".linkDistance()" 
	}
}

void d3::linkStrength(| string scalar strength) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".linkStrength(" + strength + ")" 
	}
	else {
		this.current = this.getter() + ".linkStrength()" 
	}
}

void d3::links(| string scalar links) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".links(" + links + ")" 
	}
	else {
		this.current = this.getter() + ".links()" 
	}
}

void d3::matrx(| string scalar matrx) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".matrix(" + matrx + ")" 
	}
	else {
		this.current = this.getter() + ".matrix()" 
	}
}

void d3::mode(| string scalar mode) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".mode(" + mode + ")" 
	}
	else {
		this.current = this.getter() + ".mode()" 
	}
}

void d3::nodeSize(| string scalar nodeSize) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".nodeSize(" + nodeSize + ")" 
	}
	else {
		this.current = this.getter() + ".nodeSize()" 
	}
}

void d3::nodes(| string scalar nodes) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".nodes(" + nodes + ")" 
	}
	else {
		this.current = this.getter() + ".nodes()" 
	}
}

void d3::out(| string scalar setter) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".out(" + setter + ")" 
	}
	else {
		this.current = this.getter() + ".out()" 
	}
}

void d3::pack(| string scalar root) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".pack(" + root + ")" 
	}
	else {
		this.current = this.getter() + ".pack()" 
	}
}

void d3::padAngle(| string scalar angle) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".padAngle(" + angle + ")" 
	}
	else {
		this.current = this.getter() + ".padAngle()" 
	}
}

void d3::padding(| string scalar padding) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".padding(" + padding + ")" 
	}
	else {
		this.current = this.getter() + ".padding()" 
	}
}

void d3::partition(| string scalar root) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".partition(" + root + ")" 
	}
	else {
		this.current = this.getter() + ".partition()" 
	}
}

void d3::pie(| string scalar values, string scalar index) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".pie(" + values + ", " + index + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".pie(" + values + ")" 
	}
	else {
		this.current = this.getter() + ".pie()" 
	}
}

void d3::radius(| string scalar radius) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".radius(" + radius + ")" 
	}
	else {
		this.current = this.getter() + ".radius()" 
	}
}

void d3::ratio(| string scalar ratio) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".ratio(" + ratio + ")" 
	}
	else {
		this.current = this.getter() + ".ratio()" 
	}
}

void d3::resume() { 
	this.prev = this.getter()
	this.current = this.getter() + ".resume()" 
}

void d3::revalue(string scalar root) { 
	this.prev = this.getter()
	this.current = this.getter() + ".revalue(" + root + ")" 
}

void d3::separation(| string scalar separation) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".separation(" + separation + ")" 
	}
	else {
		this.current = this.getter() + ".separation()" 
	}
}

void d3::sortChords(| string scalar comparator) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".sortChords(" + comparator + ")" 
	}
	else {
		this.current = this.getter() + ".sortChords()" 
	}
}

void d3::sortGroups(| string scalar comparator) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".sortGroups(" + comparator + ")" 
	}
	else {
		this.current = this.getter() + ".sortGroups()" 
	}
}

void d3::sortSubgroups(| string scalar comparator) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".sortSubgroups(" + comparator + ")" 
	}
	else {
		this.current = this.getter() + ".sortSubgroups()" 
	}
}

void d3::stack(| string scalar layers, string scalar index) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".stack(" + layers + ", " + index + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".stack(" + layers + ")" 
	}
	else {
		this.current = this.getter() + ".stack()" 
	}
}

void d3::start() { 
	this.prev = this.getter()
	this.current = this.getter() + ".start()" 
}

void d3::startAngle(| string scalar angle) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".startAngle(" + angle + ")" 
	}
	else {
		this.current = this.getter() + ".startAngle()" 
	}
}

void d3::sticky(| string scalar sticky) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".sticky(" + sticky + ")" 
	}
	else {
		this.current = this.getter() + ".sticky()" 
	}
}

void d3::stop() { 
	this.prev = this.getter()
	this.current = this.getter() + ".stop()" 
}

void d3::theta(| string scalar theta) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".theta(" + theta + ")" 
	}
	else {
		this.current = this.getter() + ".theta()" 
	}
}

void d3::tick() { 
	this.prev = this.getter()
	this.current = this.getter() + ".tick()" 
}

void d3::tree(| string scalar root) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".tree(" + root + ")" 
	}
	else {
		this.current = this.getter() + ".tree()" 
	}
}

void d3::treemap(| string scalar root) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".treemap(" + root + ")"
	}
	else {
		this.current = this.getter() + ".treemap()"
	} 
}

void d3::value(| string scalar value) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".value(" + value + ")"
	}
	else {
		this.current = this.getter() + ".value()"
	} 
}

void d3::albers() { 
	this.prev = this.getter()
	this.current = this.getter() + ".albers()" 
}

void d3::albersUsa() { 
	this.prev = this.getter()
	this.current = this.getter() + ".albersUsa()" 
}

void d3::azimuthalEqualArea() { 
	this.prev = this.getter()
	this.current = this.getter() + ".azimuthalEqualArea()" 
}

void d3::azimuthalEquidistant() { 
	this.prev = this.getter()
	this.current = this.getter() + ".azimuthalEquidistant()" 
}

void d3::bounds(string scalar feature) { 
	this.prev = this.getter()
	this.current = this.getter() + ".bounds(" + feature + ")" 
}

void d3::centroid(| string scalar feature) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".centroid(" + feature + ")" 
	}
	else {
		this.current = this.getter() + ".centroid()" 
	}
}

void d3::circle(string scalar arguments) { 
	this.prev = this.getter()
	this.current = this.getter() + ".circle(" + arguments + ")" 
}

void d3::clipAngle(string scalar angle) { 
	this.prev = this.getter()
	this.current = this.getter() + ".clipAngle(" + angle + ")" 
}

void d3::conicConformal() { 
	this.prev = this.getter()
	this.current = this.getter() + ".conicConformal()" 
}

void d3::conicEqualArea() { 
	this.prev = this.getter()
	this.current = this.getter() + ".conicEqualArea()" 
}

void d3::conicEquidistant() { 
	this.prev = this.getter()
	this.current = this.getter() + ".conicEquidistant()" 
}

void d3::context(| string scalar context) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".context(" + context + ")" 
	}
	else {
		this.current = this.getter() + ".context()" 
	}
}

void d3::distance(string scalar a, string scalar b) { 
	this.prev = this.getter()
	this.current = this.getter() + ".distance(" + a + ", " + b + ")" 
}

void d3::equirectangular() { 
	this.prev = this.getter()
	this.current = this.getter() + ".equirectangular()" 
}

void d3::gnomonic() { 
	this.prev = this.getter()
	this.current = this.getter() + ".gnomonic()" 
}

void d3::graticule() { 
	this.prev = this.getter()
	this.current = this.getter() + ".graticule()" 
}

void d3::invert(string scalar point) { 
	this.prev = this.getter()
	this.current = this.getter() + ".invert(" + point + ")" 
}

void d3::length(string scalar feature) { 
	this.prev = this.getter()
	this.current = this.getter() + ".length(" + feature + ")" 
}

void d3::lineEnd() { 
	this.prev = this.getter()
	this.current = this.getter() + ".lineEnd()" 
}

void d3::lineStart() { 
	this.prev = this.getter()
	this.current = this.getter() + ".lineStart()" 
}

void d3::lines() { 
	this.prev = this.getter()
	this.current = this.getter() + ".lines()" 
}

void d3::majorExtent(string scalar extent) { 
	this.prev = this.getter()
	this.current = this.getter() + ".majorExtent(" + extent + ")" 
}

void d3::majorStep(string scalar step) { 
	this.prev = this.getter()
	this.current = this.getter() + ".majorStep(" + step + ")" 
}

void d3::mercator() { 
	this.prev = this.getter()
	this.current = this.getter() + ".mercator()" 
}

void d3::minorExtent(string scalar extent) { 
	this.prev = this.getter()
	this.current = this.getter() + ".minorExtent(" + extent + ")" 
}

void d3::minorStep(string scalar step) { 
	this.prev = this.getter()
	this.current = this.getter() + ".minorStep(" + step + ")" 
}

void d3::orthographic() { 
	this.prev = this.getter()
	this.current = this.getter() + ".orthographic()" 
}

void d3::outline() { 
	this.prev = this.getter()
	this.current = this.getter() + ".outline()" 
}

void d3::parallels(| string scalar parallels) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".parallels(" + parallels + ")" 
	}
	else {
		this.current = this.getter() + ".parallels()" 
	}
}

void d3::path(| string scalar feature, string scalar index) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".path(" + feature + ", " + index + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".path(" + feature + ")" 
	}
	else {
		this.current = this.getter() + ".path()" 
	}
}

void d3::point(string scalar x, string scalar y, | string scalar z) { 
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".point(" + x + ", " + y + ", " + z + ")" 
	}
	else {
		this.current = this.getter() + ".point(" + x + ", " + y + ")" 
	}
}

void d3::pointRadius(| string scalar radius) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".pointRadius(" + radius + ")" 
	}
	else {
		this.current = this.getter() + ".pointRadius()" 
	}
}

void d3::polygonEnd() { 
	this.prev = this.getter()
	this.current = this.getter() + ".polygonEnd()" 
}

void d3::polygonStart() { 
	this.prev = this.getter()
	this.current = this.getter() + ".polygonStart()" 
}

void d3::precision(| string scalar precision) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".precision(" + precision + ")" 
	}
	else {
		this.current = this.getter() + ".precision()" 
	}
}

void d3::projection(| string scalar projection) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".projection(" + projection + ")" 
	}
	else {
		this.current = this.getter() + ".projection()" 
	}
}

void d3::projectionMutator(string scalar rawFactory) { 
	this.prev = this.getter()
	this.current = this.getter() + ".projectionMutator(" + rawFactory + ")" 
}

void d3::raw(string scalar psi0, string scalar psi1) { 
	this.prev = this.getter()
	this.current = this.getter() + ".raw(" + psi0 + ", " + psi1 + ")" 
}

void d3::rotation(string scalar rotate) { 
	this.prev = this.getter()
	this.current = this.getter() + ".rotation(" + rotate + ")" 
}


void d3::sphere() { 
	this.prev = this.getter()
	this.current = this.getter() + ".sphere()" 
}

void d3::step(string scalar step) { 
	this.prev = this.getter()
	this.current = this.getter() + ".step(" + step + ")" 
}

void d3::stereographic() { 
	this.prev = this.getter()
	this.current = this.getter() + ".stereographic()" 
}

void d3::stream(string scalar object, |string scalar listener) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".stream(" + object + ", " + listener + ")" 
	}
	else {
		this.current = this.getter() + ".stream(" + object + ")" 
	}
}

void d3::transverseMercator() { 
	this.prev = this.getter()
	this.current = this.getter() + ".transverseMercator()" 
}

void d3::svg() {
	this.prev = this.getter()
	this.current = this.getter() + ".svg"
}

void d3::symbolTypes() {
	this.prev = this.getter()
	this.current = this.getter() + ".symbolTypes"
}

void d3::angle(| string scalar angle) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".angle(" + angle + ")" 
	}
	else {
		this.current = this.getter() + ".angle()" 
	}
}

void d3::arc(| string scalar datum, string scalar index) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".arc(" + datum + ", " + index + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".arc(" + datum + ")" 
	}
	else {
		this.current = this.getter() + ".arc()" 
	}
}

void d3::area(| string scalar data) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".area(" + data + ")" 
	}
	else {
		this.current = this.getter() + ".area()" 
	}
}

void d3::axis(| string scalar selection) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".axis(" + selection + ")" 
	}
	else {
		this.current = this.getter() + ".axis()" 
	}
}

void d3::brush(| string scalar selection) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".brush(" + selection + ")" 
	}
	else {
		this.current = this.getter() + ".brush()" 
	}
}

void d3::chord(| string scalar datum, string scalar index) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".chord(" + datum + ", " + index + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".chord(" + datum + ")" 
	}
	else {
		this.current = this.getter() + ".chord()" 
	}
}

void d3::clamp(| string scalar clamp) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".clamp(" + clamp + ")" 
	}
	else {
		this.current = this.getter() + ".clamp()" 
	}
}

void d3::clear() { 
	this.prev = this.getter()
	this.current = this.getter() + ".clear()" 
}

void d3::cornerRadius(| string scalar radius) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".cornerRadius(" + radius + ")" 
	}
	else {
		this.current = this.getter() + ".cornerRadius()" 
	}
}

void d3::defined(| string scalar defined) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".defined(" + defined + ")" 
	}
	else {
		this.current = this.getter() + ".defined()" 
	}
}

void d3::diagonal(| string scalar datum, string scalar index) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".diagonal(" + datum + ", " + index + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".diagonal(" + datum + ")" 
	}
	else {
		this.current = this.getter() + ".diagonal()" 
	}
}

void d3::endAngle(| string scalar angle) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".endAngle(" + angle + ")" 
	}
	else {
		this.current = this.getter() + ".endAngle()" 
	}
}

void d3::innerRadius(| string scalar radius) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".innerRadius(" + radius + ")" 
	}
	else {
		this.current = this.getter() + ".innerRadius()" 
	}
}

void d3::innerTickSize(| string scalar size) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".innerTickSize(" + size + ")" 
	}
	else {
		this.current = this.getter() + ".innerTickSize()" 
	}
}

void d3::line(| string scalar data) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".line(" + data + ")" 
	}
	else {
		this.current = this.getter() + ".line()" 
	}
}

void d3::orient(| string scalar orientation) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".orient(" + orientation + ")" 
	}
	else {
		this.current = this.getter() + ".orient()" 
	}
}

void d3::outerRadius(| string scalar radius) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".outerRadius(" + radius + ")" 
	}
	else {
		this.current = this.getter() + ".outerRadius()" 
	}
}

void d3::outerTickSize(| string scalar size) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".outerTickSize(" + size + ")" 
	}
	else {
		this.current = this.getter() + ".outerTickSize()" 
	}
}

void d3::padRadius(| string scalar radius) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".padRadius(" + radius + ")" 
	}
	else {
		this.current = this.getter() + ".padRadius()" 
	}
}

void d3::radial() { 
	this.prev = this.getter()
	this.current = this.getter() + ".radial()" 
}

void d3::source(| string scalar source) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".source(" + source + ")" 
	}
	else {
		this.current = this.getter() + ".source()" 
	}
}

void d3::symbol(| string scalar datum, string scalar index) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".symbol(" + datum + ", " + index + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".symbol(" + datum + ")" 
	}
	else {
		this.current = this.getter() + ".symbol()" 
	}
}

void d3::target(| string scalar target) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".target(" + target + ")" 
	}
	else {
		this.current = this.getter() + ".target()" 
	}
}

void d3::tension(| string scalar tension) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".tension(" + tension + ")" 
	}
	else {
		this.current = this.getter() + ".tension()" 
	}
}

void d3::tickPadding(| string scalar padding) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".tickPadding(" + padding + ")" 
	}
	else {
		this.current = this.getter() + ".tickPadding()" 
	}
}

void d3::tickSize(| string scalar inner, string scalar outer) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".tickSize(" + inner + ", " + outer + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".tickSize(" + inner + ")" 
	}
	else {
		this.current = this.getter() + ".tickSize()" 
	}
}

void d3::tickValues(| string scalar values) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".tickValues(" + values + ")" 
	}
	else {
		this.current = this.getter() + ".tickValues()" 
	}
}

void d3::base(| string scalar base) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".base(" + base + ")" 
	}
	else {
		this.current = this.getter() + ".base()" 
	}
}

void d3::category10() { 
	this.prev = this.getter()
	this.current = this.getter() + ".category10()" 
}

void d3::category20() { 
	this.prev = this.getter()
	this.current = this.getter() + ".category20()" 
}

void d3::category20b() { 
	this.prev = this.getter()
	this.current = this.getter() + ".category20b()" 
}

void d3::category20c() { 
	this.prev = this.getter()
	this.current = this.getter() + ".category20c()" 
}

void d3::domain(| string scalar values) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".domain(" + values + ")" 
	}
	else {
		this.current = this.getter() + ".domain()" 
	}
}

void d3::exponent(| string scalar k) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".exponent(" + k + ")" 
	}
	else {
		this.current = this.getter() + ".exponent()" 
	}
}

void d3::identity(| string scalar x) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".identity(" + x + ")" 
	}
	else {
		this.current = this.getter() + ".identity()" 
	}
}

void d3::invertExtent(string scalar y) { 
	this.prev = this.getter()
	this.current = this.getter() + ".invertExtent(" + y + ")" 
}

void d3::linear(| string scalar x) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".linear(" + x + ")" 
	}
	else {
		this.current = this.getter() + ".linear()" 
	}
}

void d3::log(| string scalar x) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".log(" + x + ")" 
	}
	else {
		this.current = this.getter() + ".log()" 
	}
}

void d3::nice(| string scalar interval, string scalar step) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".nice(" + interval + ", " + step + ")" 
	}
	if (args() == 1) {
		this.current = this.getter() + ".nice(" + interval + ")" 
	}
	else {
		this.current = this.getter() + ".nice()" 
	}
}

void d3::ordinal(| string scalar x) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".ordinal(" + x + ")" 
	}
	else {
		this.current = this.getter() + ".ordinal()" 
	}
}

void d3::pow(| string scalar x) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".pow(" + x + ")" 
	}
	else {
		this.current = this.getter() + ".pow()" 
	}
}

void d3::quantiles() { 
	this.prev = this.getter()
	this.current = this.getter() + ".quantiles()" 
}

void d3::quantize(| string scalar x) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".quantize(" + x + ")" 
	}
	else {
		this.current = this.getter() + ".quantize()" 
	}
}

void d3::rangeBand() { 
	this.prev = this.getter()
	this.current = this.getter() + ".rangeBand()" 
}

void d3::rangeBands(string scalar interval, | string scalar padding, string scalar outerPadding) { 
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".rangeBands(" + interval + ", " + padding + ", " + outerPadding + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".rangeBands(" + interval + ", " + padding + ")" 
	}
	else {
		this.current = this.getter() + ".rangeBands(" + interval + ")" 
	}
}

void d3::rangeExtent() { 
	this.prev = this.getter()
	this.current = this.getter() + ".rangeExtent()" 
}

void d3::rangePoints(string scalar interval, | string scalar padding) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".rangePoints(" + interval + ", " + padding + ")" 
	}
	else {
		this.current = this.getter() + ".rangePoints(" + interval + ")" 
	}
}

void d3::rangeRound(| string scalar values) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".rangeRound(" + values + ")" 
	}
	else {
		this.current = this.getter() + ".rangeRound()" 
	}
}

void d3::rangeRoundBands(string scalar interval, | string scalar padding, string scalar outerPadding) { 
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".rangeRoundBands(" + interval + ", " + padding + ", " + outerPadding + ")" 
	}
	else if (args() == 2) {
		this.current = this.getter() + ".rangeRoundBands(" + interval + ", " + padding + ")" 
	}
	else {
		this.current = this.getter() + ".rangeRoundBands(" + interval + ")" 
	}
}

void d3::rangeRoundPoints(string scalar interval, | string scalar padding) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".rangeRoundPoints(" + interval + ", " + padding + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".rangeRoundPoints(" + interval + ")" 
	}
	else {
		this.current = this.getter() + ".rangeRoundPoints()" 
	}
}

void d3::sqrt() { 
	this.prev = this.getter()
	this.current = this.getter() + ".sqrt()" 
}

void d3::threshold(| string scalar x) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".threshold(" + x + ")" 
	}
	else {
		this.current = this.getter() + ".threshold()" 
	}
}

void d3::tickFormat(| string scalar count, string scalar format) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".tickFormat(" + count + ", " + format + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".tickFormat(" + count + ")" 
	}
	else {
		this.current = this.getter() + ".tickFormat()" 
	}
}

void d3::ticks(| string scalar interval, string scalar step) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".ticks(" + interval + ", " + step + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".ticks(" + interval + ")" 
	}
	else {
		this.current = this.getter() + ".ticks()" 
	}
}

void d3::time() {
	this.prev = this.getter()
	this.current = this.getter() + ".time"
}

void d3::iso() {
	this.prev = this.getter()
	this.current = this.getter() + ".iso"
}

void d3::month() {
	this.prev = this.getter()
	this.current = this.getter() + ".month"
}

void d3::week() {
	this.prev = this.getter()
	this.current = this.getter() + ".week"
}

void d3::year() {
	this.prev = this.getter()
	this.current = this.getter() + ".year"
}

void d3::day() {
	this.prev = this.getter()
	this.current = this.getter() + ".day"
}

void d3::hour() {
	this.prev = this.getter()
	this.current = this.getter() + ".hour"
}

void d3::minute() {
	this.prev = this.getter()
	this.current = this.getter() + ".minute"
}

void d3::second() {
	this.prev = this.getter()
	this.current = this.getter() + ".second"
}

void d3::friday() {
	this.prev = this.getter()
	this.current = this.getter() + ".friday"
}

void d3::saturday() {
	this.prev = this.getter()
	this.current = this.getter() + ".saturday"
}

void d3::sunday() {
	this.prev = this.getter()
	this.current = this.getter() + ".sunday"
}

void d3::monday() {
	this.prev = this.getter()
	this.current = this.getter() + ".monday"
}

void d3::tuesday() {
	this.prev = this.getter()
	this.current = this.getter() + ".tuesday"
}

void d3::wednesday() {
	this.prev = this.getter()
	this.current = this.getter() + ".wednesday"
}

void d3::thursday() {
	this.prev = this.getter()
	this.current = this.getter() + ".thursday"
}

void d3::ceil(string scalar date) { 
	this.prev = this.getter()
	this.current = this.getter() + ".ceil(" + date + ")" 
}

void d3::copy() { 
	this.prev = this.getter()
	this.current = this.getter() + ".copy()" 
}

void d3::dayOfYear(string scalar date) { 
	this.prev = this.getter()
	this.current = this.getter() + ".dayOfYear(" + date + ")" 
}

void d3::days(string scalar start, string scalar stop, | string scalar step) { 
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".days(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.getter() + ".days(" + start + ", " + stop + ")" 
	}
}

void d3::floor(string scalar date) { 
	this.prev = this.getter()
	this.current = this.getter() + ".floor(" + date + ")" 
}

void d3::fridayOfYear(string scalar date) { 
	this.prev = this.getter()
	this.current = this.getter() + ".fridayOfYear(" + date + ")" 
}

void d3::fridays(string scalar start, string scalar stop, | string scalar step) { 
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".fridays(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.getter() + ".fridays(" + start + ", " + stop + ")" 
	}
}

void d3::hours(string scalar start, string scalar stop, | string scalar step) { 
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".hours(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.getter() + ".hours(" + start + ", " + stop + ")" 
	}
}

void d3::interval(string scalar date) { 
	this.prev = this.getter()
	this.current = this.getter() + ".interval(" + date + ")" 
}

void d3::minutes(string scalar start, string scalar stop, | string scalar step) { 
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".minutes(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.getter() + ".minutes(" + start + ", " + stop + ")" 
	}
}

void d3::mondayOfYear(string scalar date) { 
	this.prev = this.getter()
	this.current = this.getter() + ".mondayOfYear(" + date + ")" 
}

void d3::mondays(string scalar start, string scalar stop, | string scalar step) { 
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".mondays(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.getter() + ".mondays(" + start + ", " + stop + ")" 
	}
}

void d3::months(string scalar start, string scalar stop, | string scalar step) { 
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".months(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.getter() + ".months(" + start + ", " + stop + ")" 
	}
}

void d3::multi(string scalar formats) { 
	this.prev = this.getter()
	this.current = this.getter() + ".multi(" + formats + ")" 
}

void d3::offset(| string scalar date, string scalar step) { 
	this.prev = this.getter()
	if (args() == 2) {
		this.current = this.getter() + ".offset(" + date + ", " + step + ")" 
	}
	else if (args() == 1) {
		this.current = this.getter() + ".offset(" + date + ")" 
	}
	else {
		this.current = this.getter() + ".offset()" 
	}
}

void d3::parse(string scalar strng) { 
	this.prev = this.getter()
	this.current = this.getter() + ".parse(" + strng + ")" 
}

void d3::saturdayOfYear(string scalar date) { 
	this.prev = this.getter()
	this.current = this.getter() + ".saturdayOfYear(" + date + ")" 
}

void d3::saturdays(string scalar start, string scalar stop, | string scalar step) { 
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".saturdays(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.getter() + ".saturdays(" + start + ", " + stop + ")" 
	}
}

void d3::seconds(string scalar start, string scalar stop, | string scalar step) { 
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".seconds(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.getter() + ".seconds(" + start + ", " + stop + ")" 
	}
}

void d3::sundayOfYear(string scalar date) { 
	this.prev = this.getter()
	this.current = this.getter() + ".sundayOfYear(" + date + ")" 
}

void d3::sundays(string scalar start, string scalar stop, | string scalar step) { 
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".sundays(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.getter() + ".sundays(" + start + ", " + stop + ")" 
	}
}

void d3::thursdayOfYear(string scalar date) { 
	this.prev = this.getter()
	this.current = this.getter() + ".thursdayOfYear(" + date + ")" 
}

void d3::thursdays(string scalar start, string scalar stop, | string scalar step) { 
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".thursdays(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.getter() + ".thursdays(" + start + ", " + stop + ")" 
	}
}

void d3::tuesdayOfYear(string scalar date) { 
	this.prev = this.getter()
	this.current = this.getter() + ".tuesdayOfYear(" + date + ")" 
}

void d3::tuesdays(string scalar start, string scalar stop, | string scalar step) { 
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".tuesdays(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.getter() + ".tuesdays(" + start + ", " + stop + ")" 
	}
}

void d3::utc(| string scalar specifier) { 
	this.prev = this.getter()
	if (args() == 1) {
		this.current = this.getter() + ".utc(" + specifier + ")" 
	}
	else {
		this.current = this.getter() + ".utc()" 
	}
}

void d3::wednesdayOfYear(string scalar date) { 
	this.prev = this.getter()
	this.current = this.getter() + ".wednesdayOfYear(" + date + ")" 
}

void d3::wednesdays(string scalar start, string scalar stop, | string scalar step) { 
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".wednesdays(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.getter() + ".wednesdays(" + start + ", " + stop + ")" 
	}
}

void d3::weekOfYear(string scalar date) { 
	this.prev = this.getter()
	this.current = this.getter() + ".weekOfYear(" + date + ")" 
}

void d3::weeks(string scalar start, string scalar stop, | string scalar step) { 
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".weeks(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.getter() + ".weeks(" + start + ", " + stop + ")" 
	}
}

void d3::years(string scalar start, string scalar stop, | string scalar step) { 
	this.prev = this.getter()
	if (args() == 3) {
		this.current = this.getter() + ".years(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.getter() + ".years(" + start + ", " + stop + ")" 
	}
}

end 


