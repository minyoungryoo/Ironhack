
hash = {
	:liver => {:animals =>  [0, 1, 2, {:phylum => 
		{ :members => ["protect the environment"] }
	 }, 4, 5, 6]  }
	# :wat =>
}

puts hash[:liver][:animals][3][:phylum][:members][0]



hash = {
	:wat => 
		[0, 1, :wut => 
			[0, [[0, 1, 2, 3, 4, 5, 6, 7, 8, {:bbq => "finished"}], 2]]
			] 
	
}

 puts hash[:wat][2][:wut][1][0][9][:bbq]


arr = [[0,1,2,3,4,
	:secret => {:unlock => [0,"lala"]}
	]]


puts arr[0][5][:secret][:unlock][1]