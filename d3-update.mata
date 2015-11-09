mata: 

mata clear

class d3 {

private: 
string scalar d3, varnm, prev, current

public: 
string scalar get(), complete(), recover(), getVarnm() 

void abort()
void add()
void append()
void ascending()
void attr()
void attrTween()
void bates()
void bisect()
void bisectLeft()
void bisectRight()
void bisector()
void brighter()
void call()
void classed()
void color()
void csv()
void darker()
void data()
void datum()
void delay()
void descending()
void deviation()
void dispatch()
void duration()
void each()
void ease()
void empty()
void enter()
void entries()
void exit()
void extent()
void filter()
void flush()
void forEach()
void format()
void formatPrefix()
void functor()
void get()
void has()
void hcl()
void header()
void hsl()
void html()
void insert()
void interpolate()
void interpolateArray()
void interpolateHcl()
void interpolateHsl()
void interpolateLab()
void interpolateNumber()
void interpolateObject()
void interpolateRgb()
void interpolateRound()
void interpolateString()
void interpolateTransform()
void interpolateZoom()
void interrupt()
void irwinHall()
void json()
void key()
void keys()
void lab()
void locale()
void logNormal()
void map()
void max()
void mean()
void median()
void merge()
void mimeType()
void min()
void mouse()
void nest()
void node()
void normal()
void numberFormat()
void on()
void order()
void pairs()
void permute()
void post()
void property()
void qualify()
void quantile()
void range()
void rebind()
void remove()
void requote()
void response()
void responseType()
void rgb()
void rollup()
void round()
void select()
void selectAll()
void selection()
void send()
void set()
void shuffle()
void size()
void sort()
void sortKeys()
void sortValues()
void style()
void styleTween()
void sum()
void text()
void timeFormat()
void timer()
void toString()
void touch()
void touches()
void transform()
void transition()
void transpose()
void tsv()
void tween()
void type()
void utc()
void values()
void variance()
void xhr()
void xml()
void zip()
}

void d3::init(string scalar vnm) {
     this.varnm = vnm 
     this.d3 = "var " + vnm + " = d3
     this.current = "var " + vnm + " = d3
     this.prev = ""
}

string scalar d3::get() {
     return(this.current) 
}

string scalar d3::complete() {
     return(this.current + ";") 
}

string scalar d3::getVarnm() {
     return(this.varnm) 
}

string scalar d3::recover() {
     return(this.prev) 
}

void d3::abort() { this.prev = this.get(); this.current = this.get() + ".abort(" + args + ")" }

void d3::add(string scalar value) { this.prev = this.get(); this.current = this.get() + ".add(" + args + ")" }

void d3::append(string scalar name) { this.prev = this.get(); this.current = this.get() + ".append(" + args + ")" }

void d3::ascending(string scalar a, string scalar b) { this.prev = this.get(); this.current = this.get() + ".ascending(" + args + ")" }

void d3::attr(string scalar name, string scalar value) { this.prev = this.get(); this.current = this.get() + ".attr(" + args + ")" }

void d3::attr(string scalar name, | string scalar value) { this.prev = this.get(); this.current = this.get() + ".attr(" + args + ")" }

void d3::attrTween(string scalar name, string scalar tween) { this.prev = this.get(); this.current = this.get() + ".attrTween(" + args + ")" }

void d3::bates(string scalar count) { this.prev = this.get(); this.current = this.get() + ".bates(" + args + ")" }

void d3::bisect(string scalar array, string scalar x, | string scalar lo, | string scalar hi) { this.prev = this.get(); this.current = this.get() + ".bisect(" + args + ")" }

void d3::bisectLeft(string scalar array, string scalar x, | string scalar lo, | string scalar hi) { this.prev = this.get(); this.current = this.get() + ".bisectLeft(" + args + ")" }

void d3::bisectRight(string scalar array, string scalar x, | string scalar lo, | string scalar hi) { this.prev = this.get(); this.current = this.get() + ".bisectRight(" + args + ")" }

void d3::bisector(string scalar accessor) { this.prev = this.get(); this.current = this.get() + ".bisector(" + args + ")" }

void d3::bisector(string scalar comparator) { this.prev = this.get(); this.current = this.get() + ".bisector(" + args + ")" }

void d3::brighter(| string scalar k) { this.prev = this.get(); this.current = this.get() + ".brighter(" + args + ")" }

void d3::call(string scalar function, | string scalar arguments) { this.prev = this.get(); this.current = this.get() + ".call(" + args + ")" }

void d3::classed(string scalar name, | string scalar value) { this.prev = this.get(); this.current = this.get() + ".classed(" + args + ")" }

void d3::color() { this.prev = this.get(); this.current = this.get() + ".color(" + args + ")" }

void d3::csv(string scalar url, | string scalar accessor, | string scalar callback) { this.prev = this.get(); this.current = this.get() + ".csv(" + args + ")" }

void d3::darker(| string scalar k) { this.prev = this.get(); this.current = this.get() + ".darker(" + args + ")" }

void d3::data(| string scalar values, | string scalar key) { this.prev = this.get(); this.current = this.get() + ".data(" + args + ")" }

void d3::datum(| string scalar value) { this.prev = this.get(); this.current = this.get() + ".datum(" + args + ")" }

void d3::delay(| string scalar delay) { this.prev = this.get(); this.current = this.get() + ".delay(" + args + ")" }

void d3::descending(string scalar a, string scalar b) { this.prev = this.get(); this.current = this.get() + ".descending(" + args + ")" }

void d3::deviation(string scalar array, | string scalar accessor) { this.prev = this.get(); this.current = this.get() + ".deviation(" + args + ")" }

void d3::dispatch(string scalar types) { this.prev = this.get(); this.current = this.get() + ".dispatch(" + args + ")" }

void d3::duration(| string scalar duration) { this.prev = this.get(); this.current = this.get() + ".duration(" + args + ")" }

void d3::each(string scalar function) { this.prev = this.get(); this.current = this.get() + ".each(" + args + ")" }

void d3::each(| string scalar type, string scalar listener) { this.prev = this.get(); this.current = this.get() + ".each(" + args + ")" }

void d3::ease(string scalar t) { this.prev = this.get(); this.current = this.get() + ".ease(" + args + ")" }

void d3::ease(string scalar type, | string scalar arguments) { this.prev = this.get(); this.current = this.get() + ".ease(" + args + ")" }

void d3::ease(| string scalar value, | string scalar arguments) { this.prev = this.get(); this.current = this.get() + ".ease(" + args + ")" }

void d3::empty() { this.prev = this.get(); this.current = this.get() + ".empty(" + args + ")" }

void d3::enter() { this.prev = this.get(); this.current = this.get() + ".enter(" + args + ")" }

void d3::entries() { this.prev = this.get(); this.current = this.get() + ".entries(" + args + ")" }

void d3::entries(string scalar array) { this.prev = this.get(); this.current = this.get() + ".entries(" + args + ")" }

void d3::entries(string scalar object) { this.prev = this.get(); this.current = this.get() + ".entries(" + args + ")" }

void d3::exit() { this.prev = this.get(); this.current = this.get() + ".exit(" + args + ")" }

void d3::extent(string scalar array, | string scalar accessor) { this.prev = this.get(); this.current = this.get() + ".extent(" + args + ")" }

void d3::filter(string scalar selector) { this.prev = this.get(); this.current = this.get() + ".filter(" + args + ")" }

void d3::flush() { this.prev = this.get(); this.current = this.get() + ".flush(" + args + ")" }

void d3::forEach(string scalar function) { this.prev = this.get(); this.current = this.get() + ".forEach(" + args + ")" }

void d3::format(string scalar specifier) { this.prev = this.get(); this.current = this.get() + ".format(" + args + ")" }

void d3::formatPrefix(string scalar value, | string scalar precision) { this.prev = this.get(); this.current = this.get() + ".formatPrefix(" + args + ")" }

void d3::functor(string scalar value) { this.prev = this.get(); this.current = this.get() + ".functor(" + args + ")" }

void d3::get(string scalar key) { this.prev = this.get(); this.current = this.get() + ".get(" + args + ")" }

void d3::get(| string scalar callback) { this.prev = this.get(); this.current = this.get() + ".get(" + args + ")" }

void d3::has(string scalar key) { this.prev = this.get(); this.current = this.get() + ".has(" + args + ")" }

void d3::has(string scalar value) { this.prev = this.get(); this.current = this.get() + ".has(" + args + ")" }

void d3::hcl(string scalar color) { this.prev = this.get(); this.current = this.get() + ".hcl(" + args + ")" }

void d3::hcl(string scalar h, string scalar c, string scalar l) { this.prev = this.get(); this.current = this.get() + ".hcl(" + args + ")" }

void d3::header(string scalar name, | string scalar value) { this.prev = this.get(); this.current = this.get() + ".header(" + args + ")" }

void d3::hsl() { this.prev = this.get(); this.current = this.get() + ".hsl(" + args + ")" }

void d3::hsl(string scalar color) { this.prev = this.get(); this.current = this.get() + ".hsl(" + args + ")" }

void d3::hsl(string scalar h, string scalar s, string scalar l) { this.prev = this.get(); this.current = this.get() + ".hsl(" + args + ")" }

void d3::html(string scalar url, | string scalar callback) { this.prev = this.get(); this.current = this.get() + ".html(" + args + ")" }

void d3::html(| string scalar value) { this.prev = this.get(); this.current = this.get() + ".html(" + args + ")" }

void d3::insert(string scalar name,[before) { this.prev = this.get(); this.current = this.get() + ".insert(" + args + ")" }

void d3::interpolate(string scalar a, string scalar b) { this.prev = this.get(); this.current = this.get() + ".interpolate(" + args + ")" }

void d3::interpolate(string scalar t) { this.prev = this.get(); this.current = this.get() + ".interpolate(" + args + ")" }

void d3::interpolateArray(string scalar a, string scalar b) { this.prev = this.get(); this.current = this.get() + ".interpolateArray(" + args + ")" }

void d3::interpolateHcl(string scalar a, string scalar b) { this.prev = this.get(); this.current = this.get() + ".interpolateHcl(" + args + ")" }

void d3::interpolateHsl(string scalar a, string scalar b) { this.prev = this.get(); this.current = this.get() + ".interpolateHsl(" + args + ")" }

void d3::interpolateLab(string scalar a, string scalar b) { this.prev = this.get(); this.current = this.get() + ".interpolateLab(" + args + ")" }

void d3::interpolateNumber(string scalar a, string scalar b) { this.prev = this.get(); this.current = this.get() + ".interpolateNumber(" + args + ")" }

void d3::interpolateObject(string scalar a, string scalar b) { this.prev = this.get(); this.current = this.get() + ".interpolateObject(" + args + ")" }

void d3::interpolateRgb(string scalar a, string scalar b) { this.prev = this.get(); this.current = this.get() + ".interpolateRgb(" + args + ")" }

void d3::interpolateRound(string scalar a, string scalar b) { this.prev = this.get(); this.current = this.get() + ".interpolateRound(" + args + ")" }

void d3::interpolateString(string scalar a, string scalar b) { this.prev = this.get(); this.current = this.get() + ".interpolateString(" + args + ")" }

void d3::interpolateTransform(string scalar a, string scalar b) { this.prev = this.get(); this.current = this.get() + ".interpolateTransform(" + args + ")" }

void d3::interpolateZoom(string scalar a, string scalar b) { this.prev = this.get(); this.current = this.get() + ".interpolateZoom(" + args + ")" }

void d3::interrupt(| string scalar name) { this.prev = this.get(); this.current = this.get() + ".interrupt(" + args + ")" }

void d3::irwinHall(string scalar count) { this.prev = this.get(); this.current = this.get() + ".irwinHall(" + args + ")" }

void d3::json(string scalar url, | string scalar callback) { this.prev = this.get(); this.current = this.get() + ".json(" + args + ")" }

void d3::key(string scalar function) { this.prev = this.get(); this.current = this.get() + ".key(" + args + ")" }

void d3::keys() { this.prev = this.get(); this.current = this.get() + ".keys(" + args + ")" }

void d3::keys(string scalar object) { this.prev = this.get(); this.current = this.get() + ".keys(" + args + ")" }

void d3::lab(string scalar color) { this.prev = this.get(); this.current = this.get() + ".lab(" + args + ")" }

void d3::lab(string scalar l, string scalar a, string scalar b) { this.prev = this.get(); this.current = this.get() + ".lab(" + args + ")" }

void d3::locale(string scalar definition) { this.prev = this.get(); this.current = this.get() + ".locale(" + args + ")" }

void d3::logNormal(| string scalar mean, | string scalar deviation) { this.prev = this.get(); this.current = this.get() + ".logNormal(" + args + ")" }

void d3::map(string scalar array, | string scalar mapType) { this.prev = this.get(); this.current = this.get() + ".map(" + args + ")" }

void d3::map(| string scalar object, | string scalar key) { this.prev = this.get(); this.current = this.get() + ".map(" + args + ")" }

void d3::max(string scalar array, | string scalar accessor) { this.prev = this.get(); this.current = this.get() + ".max(" + args + ")" }

void d3::mean(string scalar array, | string scalar accessor) { this.prev = this.get(); this.current = this.get() + ".mean(" + args + ")" }

void d3::median(string scalar array, | string scalar accessor) { this.prev = this.get(); this.current = this.get() + ".median(" + args + ")" }

void d3::merge(string scalar arrays) { this.prev = this.get(); this.current = this.get() + ".merge(" + args + ")" }

void d3::mimeType(| string scalar type) { this.prev = this.get(); this.current = this.get() + ".mimeType(" + args + ")" }

void d3::min(string scalar array, | string scalar accessor) { this.prev = this.get(); this.current = this.get() + ".min(" + args + ")" }

void d3::mouse(string scalar container) { this.prev = this.get(); this.current = this.get() + ".mouse(" + args + ")" }

void d3::nest() { this.prev = this.get(); this.current = this.get() + ".nest(" + args + ")" }

void d3::node() { this.prev = this.get(); this.current = this.get() + ".node(" + args + ")" }

void d3::normal(| string scalar mean, | string scalar deviation) { this.prev = this.get(); this.current = this.get() + ".normal(" + args + ")" }

void d3::numberFormat(string scalar specifier) { this.prev = this.get(); this.current = this.get() + ".numberFormat(" + args + ")" }

void d3::on(string scalar type, | string scalar listener) { this.prev = this.get(); this.current = this.get() + ".on(" + args + ")" }

void d3::on(string scalar type, | string scalar listener, | string scalar capture) { this.prev = this.get(); this.current = this.get() + ".on(" + args + ")" }

void d3::order() { this.prev = this.get(); this.current = this.get() + ".order(" + args + ")" }

void d3::pairs(string scalar array) { this.prev = this.get(); this.current = this.get() + ".pairs(" + args + ")" }

void d3::permute(string scalar array, string scalar indexes) { this.prev = this.get(); this.current = this.get() + ".permute(" + args + ")" }

void d3::post(| string scalar data, | string scalar callback) { this.prev = this.get(); this.current = this.get() + ".post(" + args + ")" }

void d3::property(string scalar name, | string scalar value) { this.prev = this.get(); this.current = this.get() + ".property(" + args + ")" }

void d3::qualify(string scalar name) { this.prev = this.get(); this.current = this.get() + ".qualify(" + args + ")" }

void d3::quantile(string scalar numbers, string scalar p) { this.prev = this.get(); this.current = this.get() + ".quantile(" + args + ")" }

void d3::range(| string scalar start, string scalar stop, | string scalar step) { this.prev = this.get(); this.current = this.get() + ".range(" + args + ")" }

void d3::rebind(string scalar target, string scalar source, string scalar names) { this.prev = this.get(); this.current = this.get() + ".rebind(" + args + ")" }

void d3::remove() { this.prev = this.get(); this.current = this.get() + ".remove(" + args + ")" }

void d3::remove(string scalar key) { this.prev = this.get(); this.current = this.get() + ".remove(" + args + ")" }

void d3::remove(string scalar value) { this.prev = this.get(); this.current = this.get() + ".remove(" + args + ")" }

void d3::requote(string scalar string) { this.prev = this.get(); this.current = this.get() + ".requote(" + args + ")" }

void d3::response(string scalar value) { this.prev = this.get(); this.current = this.get() + ".response(" + args + ")" }

void d3::responseType(string scalar type) { this.prev = this.get(); this.current = this.get() + ".responseType(" + args + ")" }

void d3::rgb() { this.prev = this.get(); this.current = this.get() + ".rgb(" + args + ")" }

void d3::rgb(string scalar color) { this.prev = this.get(); this.current = this.get() + ".rgb(" + args + ")" }

void d3::rgb(string scalar r, string scalar g, string scalar b) { this.prev = this.get(); this.current = this.get() + ".rgb(" + args + ")" }

void d3::rollup(string scalar function) { this.prev = this.get(); this.current = this.get() + ".rollup(" + args + ")" }

void d3::round(string scalar x, | string scalar n) { this.prev = this.get(); this.current = this.get() + ".round(" + args + ")" }

void d3::select(string scalar node) { this.prev = this.get(); this.current = this.get() + ".select(" + args + ")" }

void d3::select(string scalar selector) { this.prev = this.get(); this.current = this.get() + ".select(" + args + ")" }

void d3::selectAll(string scalar nodes) { this.prev = this.get(); this.current = this.get() + ".selectAll(" + args + ")" }

void d3::selectAll(string scalar selector) { this.prev = this.get(); this.current = this.get() + ".selectAll(" + args + ")" }

void d3::selection() { this.prev = this.get(); this.current = this.get() + ".selection(" + args + ")" }

void d3::send(string scalar method, | string scalar data, | string scalar callback) { this.prev = this.get(); this.current = this.get() + ".send(" + args + ")" }

void d3::set(string scalar key, string scalar value) { this.prev = this.get(); this.current = this.get() + ".set(" + args + ")" }

void d3::set(| string scalar array) { this.prev = this.get(); this.current = this.get() + ".set(" + args + ")" }

void d3::shuffle(string scalar array, | string scalar lo, | string scalar hi) { this.prev = this.get(); this.current = this.get() + ".shuffle(" + args + ")" }

void d3::size() { this.prev = this.get(); this.current = this.get() + ".size(" + args + ")" }

void d3::sort(| string scalar comparator) { this.prev = this.get(); this.current = this.get() + ".sort(" + args + ")" }

void d3::sortKeys(string scalar comparator) { this.prev = this.get(); this.current = this.get() + ".sortKeys(" + args + ")" }

void d3::sortValues(string scalar comparator) { this.prev = this.get(); this.current = this.get() + ".sortValues(" + args + ")" }

void d3::style(string scalar name, string scalar value, | string scalar priority) { this.prev = this.get(); this.current = this.get() + ".style(" + args + ")" }

void d3::style(string scalar name, | string scalar value, | string scalar priority) { this.prev = this.get(); this.current = this.get() + ".style(" + args + ")" }

void d3::styleTween(string scalar name, string scalar tween, | string scalar priority) { this.prev = this.get(); this.current = this.get() + ".styleTween(" + args + ")" }

void d3::sum(string scalar array, | string scalar accessor) { this.prev = this.get(); this.current = this.get() + ".sum(" + args + ")" }

void d3::text(string scalar url, | string scalar mimeType, | string scalar callback) { this.prev = this.get(); this.current = this.get() + ".text(" + args + ")" }

void d3::text(string scalar value) { this.prev = this.get(); this.current = this.get() + ".text(" + args + ")" }

void d3::text(| string scalar value) { this.prev = this.get(); this.current = this.get() + ".text(" + args + ")" }

void d3::timeFormat(string scalar specifier) { this.prev = this.get(); this.current = this.get() + ".timeFormat(" + args + ")" }

void d3::timer(string scalar function, | string scalar delay, | string scalar time) { this.prev = this.get(); this.current = this.get() + ".timer(" + args + ")" }

void d3::toString() { this.prev = this.get(); this.current = this.get() + ".toString(" + args + ")" }

void d3::touch(string scalar container, | string scalar touches, string scalar identifier) { this.prev = this.get(); this.current = this.get() + ".touch(" + args + ")" }

void d3::touches(string scalar container, | string scalar touches) { this.prev = this.get(); this.current = this.get() + ".touches(" + args + ")" }

void d3::transform(string scalar string) { this.prev = this.get(); this.current = this.get() + ".transform(" + args + ")" }

void d3::transition() { this.prev = this.get(); this.current = this.get() + ".transition(" + args + ")" }

void d3::transition(| string scalar name) { this.prev = this.get(); this.current = this.get() + ".transition(" + args + ")" }

void d3::transition(| string scalar selection, | string scalar name) { this.prev = this.get(); this.current = this.get() + ".transition(" + args + ")" }

void d3::transpose(string scalar matrix) { this.prev = this.get(); this.current = this.get() + ".transpose(" + args + ")" }

void d3::tsv(string scalar url, | string scalar accessor, | string scalar callback) { this.prev = this.get(); this.current = this.get() + ".tsv(" + args + ")" }

void d3::tween(string scalar name, string scalar factory) { this.prev = this.get(); this.current = this.get() + ".tween(" + args + ")" }

void d3::type(string scalar arguments) { this.prev = this.get(); this.current = this.get() + ".type(" + args + ")" }

void d3::utc(string scalar specifier) { this.prev = this.get(); this.current = this.get() + ".utc(" + args + ")" }

void d3::values() { this.prev = this.get(); this.current = this.get() + ".values(" + args + ")" }

void d3::values(string scalar object) { this.prev = this.get(); this.current = this.get() + ".values(" + args + ")" }

void d3::variance(string scalar array, | string scalar accessor) { this.prev = this.get(); this.current = this.get() + ".variance(" + args + ")" }

void d3::xhr(string scalar url, | string scalar mimeType, | string scalar callback) { this.prev = this.get(); this.current = this.get() + ".xhr(" + args + ")" }

void d3::xml(string scalar url, | string scalar mimeType, | string scalar callback) { this.prev = this.get(); this.current = this.get() + ".xml(" + args + ")" }

void d3::zip(string scalar arrays) { this.prev = this.get(); this.current = this.get() + ".zip(" + args + ")" }

end 


