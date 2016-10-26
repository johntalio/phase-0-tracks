var colors = ["red", "blue", "white", "black"];

var horse = ["Ed", "Jack", "Seabiscuit", "Seahorse"];

colors.push("orange");
horse.push("Bob");

console.log(horse);
console.log(colors);

var color_horse = {[horse[0]]: colors[0], [horse[1]]: colors[1], [horse[2]]: colors[2], [horse[3]]: colors[3], [horse[4]]: colors[4]};

console.log(color_horse);

function Cars(brand, year, haveSunroof) {
	this.brand = brand;
	this.year = year;
	this.haveSunroof = haveSunroof;
	this.honk = function() { console.log("Honk!");};
}

var car1 = new Cars("Ford", 2016, true);
console.log(car1);
car1.honk();

var car2 = new Cars("Honda", 2015, false);
console.log(car2);
car2.honk();