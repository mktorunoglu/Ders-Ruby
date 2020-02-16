# FIND (DETECT)
a = (1..100)
b = a.detect { | num | num % 5 == 0 && num % 7 == 0 }   #(Dizgide 5 ve 7 sayının EKOKunu bulmak)
# (a.detect == a.find)
puts b                      #=>   35
# Dikkat! Bulduğu anda işi bırakıyor.


# ANY?
puts %w(ahmet cem mehmet ali).any? { |s| s.length > 3 }   #=>   true


# ALL?
puts %w(ahmet cem mehmet ali).all? { |s| s.length > 3 }   #=>   false


# Diğer enumerable metodları için:
# http://ruby-doc.org/core-2.4.2/Enumerable.html