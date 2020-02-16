puts "Sisteme Hoş Geldiniz."
puts "Sistemi kullanmak için aşağıdaki komutları kullanınız:"
puts "Sisteme Giriş --> login"
puts "İngilizce-Türkçe Çeviri --> eng_tur"
puts "Türkçe-İngilizce Çeviri --> tur_eng"
puts "Sistemden Çıkış --> exit"

login = {}
File.open("./login.txt") do |f|
    f.each do |veri|
        login[veri.split[0]] = veri.split[1]
    end
end

eng_tur = {}
File.open("./eng_tur_words.txt") do |f|
    f.each do |veri|
        eng_tur[veri.split[0]] = veri.split[1]
    end
end

tur_eng = {}
File.open("./eng_tur_words.txt") do |f|
    f.each do |veri|
        tur_eng[veri.split[1]] = veri.split[0]
    end
end

i = 0
while i < 1
    print 'Komut giriniz: '
    komut = gets.chomp

    if komut == "login"
        print 'Kullanıcı adı giriniz: '
        kullanıcı_adı = gets.chomp
        print 'Parola giriniz: '
        parola = gets.chomp
        login.each do |k, p|
            if k == kullanıcı_adı && p == parola
                i += 1
                puts "Sisteme giriş yapıldı."
            end
        end
    end

    if komut == "exit"
        i += 2
        puts "Sistemden çıkış yaptınız. Hoşçakalın."
        break
    end

    if komut == "tur_eng" || komut == "eng_tur"
        puts "Sistemi kullanmak için önce giriş yapınız."
    end

    if i == 0
        puts "Hatalı giriş yaptınız."
    end
end

while i < 2
    print 'Komut giriniz: '
    komut = gets.chomp

    if komut == "login"
        puts "Zaten giriş yaptınız."
    end

    if komut == "exit"
        puts "Sistemden çıkış yaptınız. Hoşçakalın."
        break
    end

    if komut == "eng_tur"
        print 'İngilizce kelimenizi giriniz: '
        komut = gets.chomp
        eng_tur.each do |eng, tur|
        if komut == eng
            puts "Türkçesi; #{tur}"
        end
        end
    end

    if komut == "tur_eng"
        print 'Türkçe kelimenizi giriniz: '
        komut = gets.chomp
        tur_eng.each do |tur, eng|
        if komut == tur
            puts "İngilizcesi; #{eng}"
        end
        end
    end
end


