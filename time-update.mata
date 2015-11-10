mata: 

mata clear

class time {

	private: 
	string		scalar		time, varnm, prev, current

	public: 
	string		scalar		get(), complete(), undo(), getVarnm()

	void					ceil(), clamp(), copy(), dayOfYear(), days(), 
							domain(), floor(), format(), fridayOfYear(), 
							fridays(), hours(), interpolate(), interval(), 
							invert(), minutes(), mondayOfYear(), mondays(), 
							months(), multi(), nice(), offset(), parse(), 
							range(), rangeRound(), round(), saturdayOfYear(), 
							saturdays(), scale(), seconds(), sundayOfYear(), 
							sundays(), thursdayOfYear(), thursdays(), 
							tickFormat(), ticks(), tuesdayOfYear(), tuesdays(), 
							utc(), wednesdayOfYear(), wednesdays(), 
							weekOfYear(), weeks(), years(), init()

}

void time::init(string scalar vnm) {
     this.varnm = vnm 
     this.time = "var " + vnm + " = d3.time"
     this.current = "var " + vnm + " = d3.time"
     this.prev = ""
}

string scalar time::get() {
     return(this.current) 
}

string scalar time::complete() {
     return(this.current + ";") 
}

string scalar time::getVarnm() {
     return(this.varnm) 
}

string scalar time::undo() {
	this.current = this.prev
    return(this.current) 
}

void time::ceil(string scalar date) { 
	this.prev = this.get()
	this.current = this.get() + ".ceil(" + date + ")" 
}

void time::clamp(| string scalar bool) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".clamp(" + bool + ")" 
	}
	else {
		this.current = this.get() + ".clamp()" 
	}
}

void time::copy() { 
	this.prev = this.get()
	this.current = this.get() + ".copy()" 
}

void time::dayOfYear(string scalar date) { 
	this.prev = this.get()
	this.current = this.get() + ".dayOfYear(" + date + ")" 
}

void time::days(string scalar start, string scalar stop, | string scalar step) { 
	this.prev = this.get()
	if (args() == 3) {
		this.current = this.get() + ".days(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.get() + ".days(" + start + ", " + stop + ")" 
	}
}

void time::domain(| string scalar dates) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".domain(" + dates + ")" 
	}
	else {
		this.current = this.get() + ".domain()" 
	}
}

void time::floor(string scalar date) { 
	this.prev = this.get()
	this.current = this.get() + ".floor(" + date + ")" 
}

void time::format(string scalar date) { 
	this.prev = this.get()
	this.current = this.get() + ".format(" + date + ")" 
}

void time::format(string scalar specifier) { 
	this.prev = this.get()
	this.current = this.get() + ".format(" + specifier + ")" 
}

void time::fridayOfYear(string scalar date) { 
	this.prev = this.get()
	this.current = this.get() + ".fridayOfYear(" + date + ")" 
}

void time::fridays(string scalar start, string scalar stop, | string scalar step) { 
	this.prev = this.get()
	if (args() == 3) {
		this.current = this.get() + ".fridays(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.get() + ".fridays(" + start + ", " + stop + ")" 
	}
}

void time::hours(string scalar start, string scalar stop, | string scalar step) { 
	this.prev = this.get()
	if (args() == 3) {
		this.current = this.get() + ".hours(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.get() + ".hours(" + start + ", " + stop + ")" 
	}
}

void time::interpolate(| string scalar factory) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".interpolate(" + factory + ")" 
	}
	else {
		this.current = this.get() + ".interpolate()" 
	}
}

void time::interval(string scalar date) { 
	this.prev = this.get()
	this.current = this.get() + ".interval(" + date + ")" 
}

void time::invert(string scalar y) { 
	this.prev = this.get()
	this.current = this.get() + ".invert(" + y + ")" 
}

void time::minutes(string scalar start, string scalar stop, | string scalar step) { 
	this.prev = this.get()
	if (args() == 3) {
		this.current = this.get() + ".minutes(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.get() + ".minutes(" + start + ", " + stop + ")" 
	}
}

void time::mondayOfYear(string scalar date) { 
	this.prev = this.get()
	this.current = this.get() + ".mondayOfYear(" + date + ")" 
}

void time::mondays(string scalar start, string scalar stop, | string scalar step) { 
	this.prev = this.get()
	if (args() == 3) {
		this.current = this.get() + ".mondays(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.get() + ".mondays(" + start + ", " + stop + ")" 
	}
}

void time::months(string scalar start, string scalar stop, | string scalar step) { 
	this.prev = this.get()
	if (args() == 3) {
		this.current = this.get() + ".months(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.get() + ".months(" + start + ", " + stop + ")" 
	}
}

void time::multi(string scalar formats) { 
	this.prev = this.get()
	this.current = this.get() + ".multi(" + formats + ")" 
}

void time::nice(| string scalar interval, string scalar step) { 
	this.prev = this.get()
	if (args() == 2) {
		this.current = this.get() + ".nice(" + interval + ", " + step + ")" 
	}
	else if (args() == 1) {
		this.current = this.get() + ".nice(" + interval + ")" 
	}
	else {
		this.current = this.get() + ".nice()" 
	}
}

void time::offset(string scalar date, string scalar step) { 
	this.prev = this.get()
	this.current = this.get() + ".offset(" + date + ", " + step + ")" 
}

void time::parse(string scalar strng) { 
	this.prev = this.get()
	this.current = this.get() + ".parse(" + strng + ")" 
}

void time::range(| string scalar start, string scalar stop, string scalar step) { 
	this.prev = this.get()
	if (args() == 3) {
		this.current = this.get() + ".range(" + start + ", " + stop + ", " + step + ")" 
	}
	else if (args() == 2) {
		this.current = this.get() + ".range(" + start + ", " + stop + ")" 
	}
	else if (args() == 1) {
		this.current = this.get() + ".range(" + start + ")"
	}
	else {
		this.current = this.get() + ".range()"
	}
}

void time::rangeRound(| string scalar values) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".rangeRound(" + values + ")" 
	}
	else {
		this.current = this.get() + ".rangeRound()" 
	}
}

void time::round(string scalar date) { 
	this.prev = this.get()
	this.current = this.get() + ".round(" + date + ")" 
}

void time::saturdayOfYear(string scalar date) { 
	this.prev = this.get()
	this.current = this.get() + ".saturdayOfYear(" + date + ")" 
}

void time::saturdays(string scalar start, string scalar stop, | string scalar step) { 
	this.prev = this.get()
	if (args() == 3) {
		this.current = this.get() + ".saturdays(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.get() + ".saturdays(" + start + ", " + stop + ")" 
	}
}

void time::scale(| string scalar x) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".scale(" + x + ")" 
	}
	else {
		this.current = this.get() + ".scale()" 
	}
}

void time::seconds(string scalar start, string scalar stop, | string scalar step) { 
	this.prev = this.get()
	if (args() == 3) {
		this.current = this.get() + ".seconds(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.get() + ".seconds(" + start + ", " + stop + ")" 
	}
}

void time::sundayOfYear(string scalar date) { 
	this.prev = this.get()
	this.current = this.get() + ".sundayOfYear(" + date + ")" 
}

void time::sundays(string scalar start, string scalar stop, | string scalar step) { 
	this.prev = this.get()
	if (args() == 3) {
		this.current = this.get() + ".sundays(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.get() + ".sundays(" + start + ", " + stop + ")" 
	}
}

void time::thursdayOfYear(string scalar date) { 
	this.prev = this.get()
	this.current = this.get() + ".thursdayOfYear(" + date + ")" 
}

void time::thursdays(string scalar start, string scalar stop, | string scalar step) { 
	this.prev = this.get()
	if (args() == 3) {
		this.current = this.get() + ".thursdays(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.get() + ".thursdays(" + start + ", " + stop + ")" 
	}
}

void time::tickFormat() { 
	this.prev = this.get()
	this.current = this.get() + ".tickFormat()" 
}

void time::ticks(| string scalar interval, string scalar step) { 
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

void time::tuesdayOfYear(string scalar date) { 
	this.prev = this.get()
	this.current = this.get() + ".tuesdayOfYear(" + date + ")" 
}

void time::tuesdays(string scalar start, string scalar stop, | string scalar step) { 
	this.prev = this.get()
	if (args() == 3) {
		this.current = this.get() + ".tuesdays(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.get() + ".tuesdays(" + start + ", " + stop + ")" 
	}
}

void time::utc(| string scalar specifier) { 
	this.prev = this.get()
	if (args() == 1) {
		this.current = this.get() + ".utc(" + specifier + ")" 
	}
	else {
		this.current = this.get() + ".utc()" 
	}
}

void time::wednesdayOfYear(string scalar date) { 
	this.prev = this.get()
	this.current = this.get() + ".wednesdayOfYear(" + date + ")" 
}

void time::wednesdays(string scalar start, string scalar stop, | string scalar step) { 
	this.prev = this.get()
	if (args() == 3) {
		this.current = this.get() + ".wednesdays(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.get() + ".wednesdays(" + start + ", " + stop + ")" 
	}
}

void time::weekOfYear(string scalar date) { 
	this.prev = this.get()
	this.current = this.get() + ".weekOfYear(" + date + ")" 
}

void time::weeks(string scalar start, string scalar stop, | string scalar step) { 
	this.prev = this.get()
	if (args() == 3) {
		this.current = this.get() + ".weeks(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.get() + ".weeks(" + start + ", " + stop + ")" 
	}
}

void time::years(string scalar start, string scalar stop, | string scalar step) { 
	this.prev = this.get()
	if (args() == 3) {
		this.current = this.get() + ".years(" + start + ", " + stop + ", " + step + ")" 
	}
	else {
		this.current = this.get() + ".years(" + start + ", " + stop + ")" 
	}
}

end 


