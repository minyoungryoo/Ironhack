

function countColors (color, colorArray) {
    var count = 0;
	for (var i=0; i<colorArray.length; i++){
		if (color === colorArray[i]){
			count+=1;
		}
	}
	return count;

}

module.exports = countColors;
