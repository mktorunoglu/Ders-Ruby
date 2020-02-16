a = [3, 5, 8, 9, 2]
b = a.select { | num | num % 2 == 0}   #(Çift sayıları bulmak)
b = a.select { | num | num.even? }   #(Çift sayıları bulmak)
b = a.select(&:even?)   #(Çift sayıları bulmak)
puts b   #=>   8
#              2

# Şöyle yapmayın!
b = []
a.each do |i|
  b << i if i.even?
end


c = %w(ali ahmet mehmet can su)
b = c.select do |s|
    s.size <= 3
end               
puts b               #=>   ali
#                          can
#                          su


# ALIŞTIRMA: Asal Sayılar
dizi = (1..100)
asal_sayılar = []

dizi.each do | n |
b = dizi.select { | i | n % i == 0 }
     if b.size == 2
        asal_sayılar.push n
     end
end
p asal_sayılar
# Sonuçları terminalde gör.


meyveler = %w{elma armut portakal muz}
ozel_meyve = meyveler.select { |meyve| meyve.include? "a"}
p ozel_meyve     #=>   ["elma", "armut", "portakal"]


