# *.*   ->   Herhangi bir dosya
# *.txt   ->   .txt metin dosyası
# ödev.*   ->   "ödev" isimli bir dosya

# File   ->   Dosya işlemleri yapmamızı sağlar.
# File.extname(dosya_adı)   ->   Dosyanın uzantısını verir.
# File.basename(dosya_adı)   ->   Dosyanın adını uzantısıyla birlikte verir.
# File.dirname(dosya_adı)   ->   Dosyanın bulunduğu dizini verir.
# File.join(yol,desen)   ->   Verilen yolla deseni uygun biçimde birleştirir.

File.new("dosya_adi", "w+")   #->   Dosya oluşturma
File.new("yeni_dosya.txt", "w").close   #->   Dosya kapatma
# Diğer dosya oluşturma-kapatma yolları;
# 1)
dosya = File.new("yeni_dosya.txt", "w")
puts 'Dosya oluşturuldu ve hala açık '
dosya.close
puts 'Dosya kapatıldı'
# 2)
File.open("yeni_dosya.txt", "w") do |dosya|
    puts 'Dosyanız oluşturuldu ve hala açık '
end
    puts 'Dosyanız otomatik olarak kapatıldı '
# Dosyayı kapatmaya gerek yoktur.


File.read("dosya_adi.txt")   #->   Dosyayı tek parça olarak okumak
# ALIŞTIRMA: 
# İçinde satır satır "durmuş hoca", "serhat", "taha", "ömer", "tunahan" yazılı bir "isimler.txt" belgemiz olsun.
# 1)
File.read("isimler.txt")   #=>   durmuş hoca\nserhat\ntaha\nömer\ntunahan\n
# 2)
dosya_icerigi = File.read("isimler.txt")
dosya_icerigi.upcase   #=>   DURMUş HOCA\nSERHAT\nTAHA\nöMER\nTUNAHAN\n
# UYARI: Türkçe karakterlerin hala küçük harf olarak kaldığına dikkat edelim.


File.readlines("isimler.txt")   #=>   Dosyayı satır satır okumak
File.readlines("isimler.txt")   #=>   ["durmuş hoca\n", "serhat\n", "taha\n", "ömer\n", "tunahan\n"]
# ALIŞTIRMA: 
# İçinde satır satır "durmuş hoca", "serhat", "taha", "ömer", "tunahan" yazılı bir "isimler.txt" belgemiz olsun.
satirlar = File.readlines("isimler.txt")
satirlar.each do |satir|
puts satir
end   #=>   durmuş hoca
#           serhat
#           taha
#           ömer
#           tunahan

# ALIŞTIRMA:
# İçinde satır satır "durmuş hoca", "serhat", "taha", "ömer", "tunahan" yazılı bir "isimler.txt" belgemiz olsun.
satirlar = File.readlines("isimler.txt")
satirlar.each_with_index do |satir, i|
puts "#{i+1}. satırın uzunluğu: #{satir.length}"
end   #=>   1. satırın uzunluğu: 12
#           2. satırın uzunluğu: 7
#           3. satırın uzunluğu: 5
#           4. satırın uzunluğu: 5
#           5. satırın uzunluğu: 7
# Diğer gösterimleri;
# 1)
File.readlines("isimler.txt").each do |satir|
    puts satir
end
# 2)
File.readlines("isimler.txt").each_with_index do |satir, i|
    puts "#{i+1}. satırın uzunluğu: #{satir.length}"
end

# NOT: Dosyayı tümüyle okuyacaksak "File.read" yerine "File.open("dosya_adi").read" kullanabiliriz.
# NOT: Satır satır okuma yapacaksak "File.readlines" yerine "File.open("dosya_adi").readlines" fonksiyon zincirini kullanabiliriz.

# Dosya yazmak
# İçinde satır satır "durmuş hoca", "serhat", "taha", "ömer", "tunahan" yazılı bir "isimler.txt" belgemiz olsun.
File.open("isimler.txt", "a+") do |dosya|
    dosya.write "celil"
end
# Burada dikkat etmemiz gereken ise, "write" ve "print" fonksiyonları stringin sonuna satırsonu karakteri (\n) eklemediği için dosyada da yeni satıra geçilmeyecektir.
# Eğer eklediğimiz metinden sonra yeni satıra geçmek istiyorsak ya "write"a ya "print"e verdiğimiz stringin sonuna "\n" karakterini eklemeliyiz.
# Veya kısa yoldan "puts" kullanarak satırsonu karakterinin otomatik olarak eklenmesini sağlayabiliriz.
File.read("isimler.txt")   #=>   durmuş hoca\nserhat\ntaha\nömer\ntunahan\ncelil
# Gördüğünüz gibi okunan stringin sonunda "\n" karakteri bulunmamaktadır.
# Bu dosyanın üzerine yazmaya devam edersek;
File.open("isimler.txt", "a+") do |dosya|
    dosya.puts "ileri"
end
File.read("isimler.txt")   #=>   durmuş hoca\nserhat\ntaha\nömer\ntunahan\ncelilileri\n


File.absolute_path   #->   Dosyanın gerçek yolunu öğrenmek
File.absolute_path("isimler.txt")   #=>   /home/sci/isimler.txt

File.atime   #->   Dosyaya son erişilen tarihi öğrenmek
File.atime("isimler.txt")   #=>   2017-12-04 20:31:38 +0300

File.basename   #->   Dosyanın baz adını öğrenmek
File.basename("/home/sci/isimler.txt ")   #=>   isimler.txt
File.basename("/home/sci/isimler.txt ", ".txt")   #=>   isimler
File.basename("/home/sci/isimler.txt ", ".*")   #=>   isimler
# NOT: Burada ".*" ın anlamı; "." ve sonrasında ne gelirse olarak özetlenebilir.

File.delete("isimler1.txt")   #=>   Dosya silmek

# Örneğin bulunduğumuz dizinde "Downloads" adında bir dizin ve "isimler.txt" adında bir dosya bulunmaktadır.
File.directory?   #->   Dizin mi? 
File.directory?("Downloads")   #=>   true
File.directory?("isimler.txt")   #=>   false

File.dirname   #->   Dosyanın bulunduğu dizinin yolunu bulmak
File.dirname("/home/sci/isimler.txt ")   #=>   /home/sci

File.exist?   #->   Dosya var mı?
File.exist?("tunahan.cs")   #=>   false
File.exist?("isimler.txt")   #=>   true

File.extname   #->   Dosyanın uzantısını öğrenmek
File.extname("isimler.txt")   #=>   .txt

File.ftype   #->   Dosyanın tipini öğrenmek
# Sonuç "file", "directory", "characterSpecial", "blockSpecial", "fifo", "link", "socket", "unknown" değerlerinden birini dönecektir.
File.ftype("isimler.txt")   #=>   file

File.join   #->   Dosya yolu oluşturmak
File.join("home", "sci", "isimler.txt")   #=>   home\sci\isimler.txt

File.mtime   #->   Dosyanın son değiştirilme tarihini öğrenmek
File.mtime("isimler.txt")   #=>   2017-12-04 20:31:35 +0300

File.rename   #->   Dosyayı yeniden adlandırmak
File.rename("isimler.txt", "derse_girenler.txt ")

File.size?   #->   Dosyanın boyutunu öğrenmek
File.size?("isimler.txt")   #=>   50
File.size?("olmayan_dosya")   #=>   nil
# NOT: ".size" diye de bir fonksiyon vardır ve aynı işlevi görmektedir ancak eğer dosya yoksa hata vermektedir. 
# Hata almak yerine "nil" sonucunun dönmesini istiyorsak ".size?" fonksiyonunu kullanacağız.

File.zero?   #->   Dosya boş mu?
File.zero?("ici_bos_dosya")   #=>   true
File.zero?("isimler.txt")   #=>   false
File.zero?("olmayan_dosya")   #=>   false


