mata: 

mata clear

class time {

private: 
string scalar time, varnm, prev, current

public: 
string scalar get(), complete(), recover(), getVarnm() 

void ceil()
void clamp()
void copy()
void dayOfYear()
void days()
void domain()
void floor()
void format()
void fridayOfYear()
void fridays()
void hours()
void interpolate()
void interval()
void invert()
void minutes()
void mondayOfYear()
void mondays()
void months()
void multi()
void nice()
void offset()
void parse()
void range()
void rangeRound()
void round()
void saturdayOfYear()
void saturdays()
void scale()
void seconds()
void sundayOfYear()
void sundays()
void thursdayOfYear()
void thursdays()
void tickFormat()
void ticks()
void tuesdayOfYear()
void tuesdays()
void utc()
void wednesdayOfYear()
void wednesdays()
void weekOfYear()
void weeks()
void years()
}

void time::init(string scalar vnm) {
     this.varnm = vnm 
     this.time = "var " + vnm + " = time
     this.current = "var " + vnm + " = time
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

string scalar time::recover() {
     return(this.prev) 
}

void time::ceil(string scalar date) { this.prev = this.get(); this.current = this.get() + ".ceil(" + args + ")" }

void time::clamp(| string scalar boolean) { this.prev = this.get(); this.current = this.get() + ".clamp(" + args + ")" }

void time::copy() { this.prev = this.get(); this.current = this.get() + ".copy(" + args + ")" }

void time::dayOfYear(string scalar date) { this.prev = this.get(); this.current = this.get() + ".dayOfYear(" + args + ")" }

void time::days(string scalar start, string scalar stop, | string scalar step) { this.prev = this.get(); this.current = this.get() + ".days(" + args + ")" }

void time::domain(| string scalar dates) { this.prev = this.get(); this.current = this.get() + ".domain(" + args + ")" }

void time::floor(string scalar date) { this.prev = this.get(); this.current = this.get() + ".floor(" + args + ")" }

void time::format(string scalar date) { this.prev = this.get(); this.current = this.get() + ".format(" + args + ")" }

void time::format(string scalar specifier) { this.prev = this.get(); this.current = this.get() + ".format(" + args + ")" }

void time::fridayOfYear(string scalar date) { this.prev = this.get(); this.current = this.get() + ".fridayOfYear(" + args + ")" }

void time::fridays(string scalar start, string scalar stop, | string scalar step) { this.prev = this.get(); this.current = this.get() + ".fridays(" + args + ")" }

void time::hours(string scalar start, string scalar stop, | string scalar step) { this.prev = this.get(); this.current = this.get() + ".hours(" + args + ")" }

void time::interpolate(| string scalar factory) { this.prev = this.get(); this.current = this.get() + ".interpolate(" + args + ")" }

void time::interval(string scalar date) { this.prev = this.get(); this.current = this.get() + ".interval(" + args + ")" }

void time::invert(string scalar y) { this.prev = this.get(); this.current = this.get() + ".invert(" + args + ")" }

void time::minutes(string scalar start, string scalar stop, | string scalar step) { this.prev = this.get(); this.current = this.get() + ".minutes(" + args + ")" }

void time::mondayOfYear(string scalar date) { this.prev = this.get(); this.current = this.get() + ".mondayOfYear(" + args + ")" }

void time::mondays(string scalar start, string scalar stop, | string scalar step) { this.prev = this.get(); this.current = this.get() + ".mondays(" + args + ")" }

void time::months(string scalar start, string scalar stop, | string scalar step) { this.prev = this.get(); this.current = this.get() + ".months(" + args + ")" }

void time::multi(string scalar formats) { this.prev = this.get(); this.current = this.get() + ".multi(" + args + ")" }

void time::nice(| string scalar count) { this.prev = this.get(); this.current = this.get() + ".nice(" + args + ")" }

void time::nice(| string scalar interval, | string scalar step) { this.prev = this.get(); this.current = this.get() + ".nice(" + args + ")" }

void time::offset(string scalar date, string scalar step) { this.prev = this.get(); this.current = this.get() + ".offset(" + args + ")" }

void time::parse(string scalar string) { this.prev = this.get(); this.current = this.get() + ".parse(" + args + ")" }

void time::range(string scalar start, string scalar stop, | string scalar step) { this.prev = this.get(); this.current = this.get() + ".range(" + args + ")" }

void time::range(| string scalar values) { this.prev = this.get(); this.current = this.get() + ".range(" + args + ")" }

void time::rangeRound(| string scalar values) { this.prev = this.get(); this.current = this.get() + ".rangeRound(" + args + ")" }

void time::round(string scalar date) { this.prev = this.get(); this.current = this.get() + ".round(" + args + ")" }

void time::saturdayOfYear(string scalar date) { this.prev = this.get(); this.current = this.get() + ".saturdayOfYear(" + args + ")" }

void time::saturdays(string scalar start, string scalar stop, | string scalar step) { this.prev = this.get(); this.current = this.get() + ".saturdays(" + args + ")" }

void time::scale() { this.prev = this.get(); this.current = this.get() + ".scale(" + args + ")" }

void time::scale(string scalar x) { this.prev = this.get(); this.current = this.get() + ".scale(" + args + ")" }

void time::seconds(string scalar start, string scalar stop, | string scalar step) { this.prev = this.get(); this.current = this.get() + ".seconds(" + args + ")" }

void time::sundayOfYear(string scalar date) { this.prev = this.get(); this.current = this.get() + ".sundayOfYear(" + args + ")" }

void time::sundays(string scalar start, string scalar stop, | string scalar step) { this.prev = this.get(); this.current = this.get() + ".sundays(" + args + ")" }

void time::thursdayOfYear(string scalar date) { this.prev = this.get(); this.current = this.get() + ".thursdayOfYear(" + args + ")" }

void time::thursdays(string scalar start, string scalar stop, | string scalar step) { this.prev = this.get(); this.current = this.get() + ".thursdays(" + args + ")" }

void time::tickFormat() { this.prev = this.get(); this.current = this.get() + ".tickFormat(" + args + ")" }

void time::ticks(| string scalar count) { this.prev = this.get(); this.current = this.get() + ".ticks(" + args + ")" }

void time::ticks(| string scalar interval, | string scalar step) { this.prev = this.get(); this.current = this.get() + ".ticks(" + args + ")" }

void time::tuesdayOfYear(string scalar date) { this.prev = this.get(); this.current = this.get() + ".tuesdayOfYear(" + args + ")" }

void time::tuesdays(string scalar start, string scalar stop, | string scalar step) { this.prev = this.get(); this.current = this.get() + ".tuesdays(" + args + ")" }

void time::utc() { this.prev = this.get(); this.current = this.get() + ".utc(" + args + ")" }

void time::utc(string scalar specifier) { this.prev = this.get(); this.current = this.get() + ".utc(" + args + ")" }

void time::wednesdayOfYear(string scalar date) { this.prev = this.get(); this.current = this.get() + ".wednesdayOfYear(" + args + ")" }

void time::wednesdays(string scalar start, string scalar stop, | string scalar step) { this.prev = this.get(); this.current = this.get() + ".wednesdays(" + args + ")" }

void time::weekOfYear(string scalar date) { this.prev = this.get(); this.current = this.get() + ".weekOfYear(" + args + ")" }

void time::weeks(string scalar start, string scalar stop, | string scalar step) { this.prev = this.get(); this.current = this.get() + ".weeks(" + args + ")" }

void time::years(string scalar start, string scalar stop, | string scalar step) { this.prev = this.get(); this.current = this.get() + ".years(" + args + ")" }

end 


