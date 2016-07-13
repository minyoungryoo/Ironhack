class ProgrammingLanguage
	attr_accessor :name, :age, :type
	def initialize(name,age,type)
		@name = name
		@age = age
		@type = type
	end
end


  ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
  python = ProgrammingLanguage.new("Python", 24, "Dynamic")
  javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
  go = ProgrammingLanguage.new("Go", 6, "Static")
  rust = ProgrammingLanguage.new("Rust", 5, "Static")
  swift = ProgrammingLanguage.new("Swift", 2, "Static")
  java = ProgrammingLanguage.new("Java", 20, "Static")

	def array_printer(array)
	  array.each do | language |
	    puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
	  end
	end

array_of_languages = [ruby, python, javascript, go, rust, swift, java]
#array_printer(array_of_languages)

aged_languages = array_of_languages.map do |language|
	  language = ProgrammingLanguage.new(language.name, language.age + 1, language.type)
end

# sorted_languages = aged_languages.sort_by{|aged_languages| -aged_languages.age}
sorted_languages = aged_languages.sort{|x,y| y.age <=> x.age}

languages_nojava = sorted_languages.delete_if{|language| language.name.downcase == "java" }

shuffle_language = languages_nojava.shuffle

 include_language = shuffle_language.map do |language|
 	language.name.include?("Ruby")
 end

young_language = sorted_languages.take_while{|i| i.age < 10} 

older_language = shuffle_language.keep_if{|i| i.age >10}


# puts "The programming languages aged one year are: "
# array_printer(aged_languages)
# array_printer(sorted_languages)
#array_printer(languages_nojava)
#array_printer(shuffle_language)
  p include_language
 #array_printer(young_language)
 array_printer(older_language)




# Output
# The programming languages aged by one year are:
# Language: Ruby |  Age: 22 |  Type System: Dynamic
# Language: Python |  Age: 25 |  Type System: Dynamic
# Language: JavaScript |  Age: 21 |  Type System: Dynamic
# Language: Go |  Age: 7 |  Type System: Static
# Language: Rust |  Age: 6 |  Type System: Static
# Language: Swift |  Age: 3 |  Type System: Static
# Language: Java |  Age: 21 |  Type System: Static
