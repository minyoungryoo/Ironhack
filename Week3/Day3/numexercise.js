var numbers = "80:70:90:100";

function averageColon (string_num) {
	if(string_num===null || string_num===undefined){
		string_num = "0:0";
	}
	var str_to_intarray = string_num.split(/[^\w\s]/gi).map(Number);
	var sum=0;
	// for(var i=0; i<str_to_intarray.length; i++){
	// 	sum+=str_to_intarray[i];
	// }

	//alternate:
	str_to_intarray.forEach(function (num){
		sum+=num;
	})

	return sum/str_to_intarray.length;
}

console.log(averageColon(numbers) === 85);
console.log(averageColon("80&70&90&100") === 85);
console.log(averageColon("80&70:90&100") === 85);
console.log(averageColon() === 0);