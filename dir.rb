# Dir   ->   Dizin işlemleri yapmamızı sağlar.
# Dir.pwd   ->   Çalışılan dizinin tam yolunu verir. (pwd = print working directory)


hedef = Dir.pwd   #=>   Bu ruby dosyasının bulunduğu dizin
desen = '*.*'
dosyalar = Dir[File.join(hedef, desen)]
bilgiler = dosyalar.map do |d|
  {
    uzanti: File.extname(d),
    dizin: File.dirname(d),
    isim: File.basename(d),
  }
end
# puts bilgiler
# p dosyalar


istatistik = {}
bilgiler.each do |b|
  dil =
    case b[:uzanti]
    when '.rb'
      :ruby
    when '.py'
      :python
    else
      :bilinmeyen
    end
  istatistik[dil] ||= 0
  istatistik[dil] += 1
end
p istatistik
# Sonuçları terminalde görüntüle.


