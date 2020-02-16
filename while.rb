# ALIŞTIRMA: Ceza Tahtası
tekrar = 10

i = 0
while i < tekrar
  puts 'Çok çalışmalıyım!'
  i += 1
end
puts "#{i} kere çalıştım."
# Sonuçları terminalde gör.

# Bir başka gösterimi:
10.times do
puts "Çok çalışmalıyım!"
end


# ALIŞTIRMA: Dizinin En Büyük Terimi
sayilar = [23, 46, -72, 32]
enbuyuk = sayilar[0]

i = 1
while i < sayilar.size
  if sayilar[i] > enbuyuk
    enbuyuk = sayilar[i]
  end
  i += 1
end
puts enbuyuk                #=>   46


# ALIŞTIRMA: Parola Kayıt
while true
  print 'Parola girin: '
  parola = gets.chomp
  print 'Tekrar girin: '
  tekrar = gets.chomp
    if parola == tekrar
      puts 'Parolanız başarıyla kaydedildi.'
      break
    end
  puts 'Girilen parolalar çelişiyor, lütfen tekrar deneyin.'
end
# Sonuçları terminalde gör.


meyveler = %w{elma armut portakal muz}
i = 0
while i < meyveler.size
  a = meyveler.map { |meyve| meyve.length}
  i += 1
end
p a     #=>   [4, 5, 8, 3]


