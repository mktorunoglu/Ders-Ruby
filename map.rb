a = [3, 5, 8, 9, 2]
d = a.map { | num | num * num}   #(Sayıların karelerini almak)
puts d    #=>   9
#               25
#               64
#               81
#               4

# Şöyle yapmayın!
b = []
a.each do |i|
  b << i * i
end


# Yeni dizi oluşturmadan yerinde eşleştir:
puts a.map! { | num | num * num }    #=>   9
#                                          25
#                                          64
#                                          81
#                                          4
# Avantajı: Bellek kullanımı daha düşüktür. Ama özgün dizinin üzerine yazılmış olur.
# Yani buradaki "!" işareti işlemi yapıp ana dizindeki eski verilerle yer değiştirir. 


# "select" ve "map"in birlikte kullanımı:
e = [1, 8, 5, 2]
b = e.select do |i|
    i.even?
end.map do |i|
    i*i
end
puts b    #=>   64
#               4
b = e.select(&:even?).map { |i| i * i }
puts b    #=>   64
#               4


meyveler = %w{elma armut portakal muz}
ozel_meyve = meyveler.map { |meyve| meyve.upcase}
p ozel_meyve     #=>   ["ELMA", "ARMUT", "PORTAKAL", "MUZ"]


