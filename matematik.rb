puts 5 / 2   #=>   2
puts 5 / 2.0   #=>   2.5
puts 5.0 / 2   #=>   2.5
puts 9 % 4   #=>   1 (Mod)
puts 2 ** 5   #=>   32
puts "5" * 3   #=>   555
puts 5 == 6   #=>   false
puts 8 != 7   #=>   true (! = değil)


# ALIŞTIRMA: Yano
# ders ağırlıkları
bmg_ag = 3.0
pg_ag = 3.0
amat_ag = 3.0
isg_ag = 2.0
fzk_ag = 3.0
mat_ag= 4.0
yd_ag= 2.0
# ders notları
bmg_not = 4.0
pg_not = 4.0
amat_not = 2.5
isg_not = 3.0
fzk_not = 2.5
mat_not = 3.0
yd_not = 3.5
# toplam
bmg_top = bmg_ag * bmg_not
pg_top = pg_ag * pg_not
amat_top = amat_ag * amat_not
isg_top = isg_ag * isg_not
fzk_top = fzk_ag * isg_not
mat_top = mat_ag * mat_not
yd_top = yd_ag * yd_not
# ara toplam
at_ag = bmg_ag + pg_ag + amat_ag + isg_ag + fzk_ag + mat_ag + yd_ag
at_toplam = bmg_top + pg_top + amat_top + isg_top + fzk_top + mat_top + yd_top
# yano
yano = at_toplam / at_ag
puts yano                  #=>   3.275


# ALIŞTIRMA: Bilgisayar Siparişi
parabirimi = "TL"
# işlemci başına çekirdek ücreti
core_ucret = 200
# GB başına RAM ücreti
ram_ucret = 150
# GB başına GPU ücreti
cpu_ucret = 125
# inch başına ekran boyut ücreti
inch_ucret = 40
# işletim sistemi ücreti
os_ucret = 200
# müşteri siparişi
core_adet = 8
ram_gb = 16
cpu_gb = 2
inch_boyut = 22
os_yukleme = 1
ara_toplam = (core_ucret * core_adet) + (ram_gb * ram_ucret) + (cpu_gb * cpu_ucret) + (inch_boyut * inch_ucret) + (os_ucret * os_yukleme)
vergi_payi = ara_toplam * 0.25
toplam_ucret = ara_toplam + vergi_payi
puts "Bilgisayar tutarınız = #{toplam_ucret} #{parabirimi}"
# bütçe
aylık_gelir = 3500
aylık_gider = 1000
birikmis = 4500
toplam_bakiye = aylık_gelir - aylık_gider + birikmis
puts "Hesap bakiyeniz = #{toplam_bakiye} #{parabirimi}"
if toplam_bakiye > toplam_ucret
puts "Tebrikler, siparişiniz alınmıştır. Hesabınızdan #{toplam_ucret} #{parabirimi} çekilmiştir."
else toplam_bakiye < toplam_ucret
puts "Bakiyeniz yetersiz olup siparişiniz alınamamıştır."
end
kalan_bakiye = toplam_bakiye - toplam_ucret
puts "Kalan bakiyeniz = #{kalan_bakiye} #{parabirimi}"
# Sonuçları terminalde gör.


