# DATA TYPES
# 13 (Integer)
# "foo" (String)
# 'foo' (String)
# 1.3 (Float)
# x + 1 (Expression (İfade))
# x + 1 => 4 (Evaluation)
# 3.to_s (Attribute (Method)) (3'ü stringe çevirmek)
# loop => döngü
# endless loop => sonsuz döngü


x = 3
puts "foo x"  #=>  foo x (String Interpolation)
puts "foo #{x + 1}"  #=>  foo 4 (String Interpolation)
puts 'foo #{x}'  #=>  foo #{x} (No Interpolation)


puts "Merhaba"   #=>   Merhaba
#                       |
print "Merhaba"   #=>   Merhaba|
puts "Hello \nWorld"   #=>   Hello
#                            World


puts "foo".upcase  #=>   "FOO"
puts "FOO".downcase  #=>   "foo"
puts "foo".capitalize   #=>   "Foo"
# puts foo.upcase  #=>   ERROR


# x = 3   }
# x = 4   }}   x, y, z = 3, 4, 5
# x = 5   }


a = 7
puts !(a > 5)   #=>   false
puts (a > 5)   #=>   true


puts 1.even?   #=>   false   (1 sayısı çift mi?)
puts 1.odd?   #=>   true   (1 sayısı tek mi?)


meyveler = %w{elma armut portakal muz}
puts meyveler.class                     #=>   Array


