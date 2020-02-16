puts "Sisteme Hoş Geldiniz."

teachers = {}
File.open("./loginteacher.txt") do |f|
    f.each do |veri|
        veri.delete! "\n"
        teachers[veri.split(',')[0]] = veri.split(',')[1]
    end
end

students = {}
File.open("./students.txt") do |f|
    f.each do |veri|
        veri.delete! "\n"
        students[veri.split(',')[0]] = veri.split(',')[1]
    end
end

ders_kodları = {}
File.open("lessonCodes.txt") do |f|
    f.each do |veri|
        veri.delete! " "
        veri.delete! "\n"
        ders_kodları[veri.split('-')[0]] = veri.split('-')[1]
    end
end

$not_sistemi = []
def kaydet(numara, kod, ders)
  $not_sistemi << {
    "Öğrenci numarası" => numara,
    "Ders kodu" => kod,
    "Ders notu" => ders
}
end

t = 0
s = 0
while true
    puts "Öğretmen girişi için 1'e basınız."
    puts "Öğrenci girişi için 2'ye basınız."
    puts "Sistemden çıkış yapmak için 0'a basınız."
    puts "Komut giriniz: "
    komut = gets.chomp

    if komut == "1"
        puts "Kullanıcı adınızı giriniz: "
        kullanici_adi = gets.chomp
        puts "Parolanızı giriniz: "
        parola = gets.chomp
        teachers.each do |k,p|
            if k == kullanici_adi && p == parola
                t += 1
                puts "Sisteme giriş yapıldı."
            end
        end
    end

    if komut == "2"
        puts "Öğrenci numaranızı giriniz: "
        kullanici_adi = gets.chomp
        puts "Parolanızı giriniz: "
        parola = gets.chomp
        students.each do |k,p|
            if k == kullanici_adi && p == parola
                s += 1
                puts "Sisteme giriş yapıldı."
            end
        end
    end

    if komut == "0"
        puts "Sistemden çıkış yaptınız. Hoşçakalın."
        break
    end

    if t == 0 && s == 0
        puts "Hatalı giriş yaptınız."
    end

if t == 1
    i = 0
    while i < 1
        puts "Öğrenci notu girmek veya güncellemek için 1'e basınız."
        puts "Sistemden çıkış yapmak için 0'a basınız."
        puts "Komut giriniz: "
        komut = gets.chomp            
            
        if komut == "1"
            puts "Öğrenci numarası giriniz: "
            ogrenci_no = gets.chomp
            puts "Ders kodu giriniz: "
            ders_kodu = gets.chomp
            puts "Not giriniz: "
            ders_notu = gets.chomp
                
            a = $not_sistemi.size
            students.each do |k,p|
                ders_kodları.each do |x,y|
                    if k == ogrenci_no && y == ders_kodu
                        kaydet(ogrenci_no, ders_kodu, ders_notu)
                    end
                end
            end
            b = $not_sistemi.size
                
            if a == b
                puts "Öğrenci numarasını veya ders kodunu yanlış girdiniz."
            else
                puts "Öğrenci notu başarıyla girilmiştir."
            end
        end
            
        if komut == "0"
            puts "Sistemden çıkış yaptınız. Hoşçakalın."
            i += 1
            t -= 1
        end
    end
end

if s == 1
    i = 0
    while i < 1
        puts "Tüm ders notlarınızı görmek için 1'e basınız."
        puts "Tek bir ders notunuzu görmek için 2'ye basınız."
        puts "Sistemden çıkış yapmak için 0'a basınız."
        puts "Komut giriniz: "
        komut = gets.chomp

        if komut == "1"
            $not_sistemi.each do |veri|
                if veri["Öğrenci numarası"] == kullanici_adi
                    puts "#{veri["Ders kodu"]} kodlu dersinizin notu: #{veri["Ders notu"]}"
                end
            end
            if $not_sistemi.size == 0
                puts "Girilmiş notunuz bulunmamaktadır."
            end
        end

        if komut == "2"
            puts "Ders kodunu giriniz: "
            kod = gets.chomp
            sayac = 0
            $not_sistemi.each do |veri|
                if veri["Öğrenci numarası"] == kullanici_adi && veri["Ders kodu"] == kod
                    puts "#{veri["Ders kodu"]} kodlu dersinizin notu: #{veri["Ders notu"]}"
                    sayac += 1
                end
            end
            if sayac == 0
                puts "#{kod} kodlu ders notunuz bulunmamaktadır."
            end
        end

        if komut == "0"
            puts "Sistemden çıkış yaptınız. Hoşçakalın."
            i += 1
            s -= 1
        end
    end
end
end