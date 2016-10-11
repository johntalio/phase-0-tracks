# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.
def swap(string)
string.swapcase
end
puts swap("iNvEsTiGaTiOn") #=> “InVeStIgAtIoN”

def insert(string)
string.insert(1, "o")
end
puts insert("zom") #=> “zoom”

def center(string)
string.center(15)
end
puts center("enhance") #=> "    enhance    "

def upcase(string)
string.upcase
end
puts upcase("Stop! You’re under arrest!") #=> "STOP! YOU’RE UNDER ARREST!"

def ljust(string)
string.ljust(18, " suspects")
end
puts ljust("the usual") #=> "the usual suspects"
def insert2(string)
string.insert(9, " suspects")
end
puts insert2("the usual") #=> "the usual suspects"

def insert3(string)
string.insert(0, "the usual")
end
puts insert3(" suspects") #=> "the usual suspects"

def slice(string)
string.slice(0..38)
end
puts slice("The case of the disappearing last letter") #=> "The case of the disappearing last lette"
def chomp(string)
string.chomp("r")
end
puts chomp("The case of the disappearing last letter") #=> "The case of the disappearing last lette"

def slice2(string)
string.slice(1..39)
end
puts slice2("The mystery of the missing first letter") #=> "he mystery of the missing first letter"
def range(string)
string[1..-1]
end
puts range("The mystery of the missing first letter") #=> "he mystery of the missing first letter"

def squeeze(string)
string.squeeze
end
puts squeeze("Elementary,    my   dear        Watson!") #=> "Elementary, my dear Watson!"

def ord(string)
string.ord
end
puts ord("z") #=> 122 

def count(string)
string.count("a")
end
puts count("How many times does the letter 'a' appear in this string?") #=> 4