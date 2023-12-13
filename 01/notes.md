# Transistörlerin Teorisi

Transistörler, elektrik sinyalerini kontrol etmek için kullanılan yarı iletken cihazlardır. 
Temelde, bir transistör, giriş sinyali (gate), çıkış sinyali (drain) ve toprak sinyali (source) arasındaki elektrik akışını kontrol eder. İki yaygın transistör türü NPN ve PNP'dir.

# FPGA Yapısı

FPGA'lar (Field-Programmable Gate Arrays), büyük ölçüde transistörlerin bir araya getirilmesi ile oluşur. FPGA'lar genellikle LUTs (Lookup Tables), flip-floplar ve bağlantı elemanları içerir. LUT'lar, özel mantık fonksiyonlarını gerçekleştirmek için programlanabilir bellekler içerir.

# FPGA'nın Programlanabilirliği

FPGA'lar, üzerlerindeki programlanabilir bağlantı elamanları ve LUT'lar sayesinde kullanıcıların istedikleri dijital mantık devrelerini oluşturabilmelerine olanak tanır. Bir FPGA'ya program yüklediğinizde, transistörlerin konfigürasyonu değişir ve istediğiniz mantık devrasi oluşturulmuş olur.

# IC'lerin Temeli

IC'ler (Entegre Devreler), temelde transistörlerin entegrasyonu ile oluşan entegre devre paketleridir. Bir IC, bit dizi mantıksal veya analog devrayi içerebilir ve genellikle belirli bir fonksiyonu yerine getirmek üzere tasarlanır. Bu, bir mikrodenetleyici, bir sensör okuma cihazı veya bir bellek entegresi olabilir.

# LUT'ların FPGA Içindeki Rolü

LUT'lar, FPGA'ların temel yapı taşlarından biridir. Bu programlanabilir bellek alanları, özel mantık fonksiyonlarını depolar ve gerçekleştirir. Kullanıcılar, bu LUT'ları pogramlayarak istedikleri mantık devresini oluşturabilirler.

# Lookup Table (LUT)

Bir LUT, her input kombinasyonu için önceden tanımlanmış bir output listesi saklar.
LUT'lar içerisindeki olası output sonuçlarını sakladığı için bit mantık işleminin çıktısını almayı hızlandırır. LUT'ları işlemcilerin registerleri ile eşdeğer tutabiliriz.

# Flip-flop

Flip-flop, FPGA üzerindeki en küçük depolama kaynağıdır. CLB'ler içerisinde bulunan her bir flip-flop, FPGA devresinde saat döngülerinin (clock cyles) desteğiyle mantık durumlarını kaydetmek için kullanılır.

# Multiplexer

İki veya daha fazla giriş arasında seçim yapan ve sonra seçilen girişi döndüren devre.


# Logical Gate 

Mantık kapısı, tek bir ikili çıkıç üreten bir veya daha fazla ikili giriş üzerinde gerçekleştirilen mantıksal bir işlem olan Booleaa işlevini gerçekleştiren bir cihazdır.

Mantık kapılarını oluşturmanın birincil yolu olarak, elektronik anahtar görevi gören diyotlar veya transistörler kullanılır.

### AND

Input -> Output
0 0 -> 0
0 1 -> 0
1 0 -> 0
1 1 -> 1

### OR

0 0 -> 0
0 1 -> 1
1 0 -> 1
1 1 -> 1

### NAND

0 0 -> 1
0 1 -> 1
1 0 -> 1
1 1 -> 0

### NOR

0 0 -> 1
0 1 -> 0
1 0 -> 0
1 1 -> 0

### XOR

0 0 -> 0
0 1 -> 1
1 0 -> 1
1 1 -> 0

### XNOR

0 0 -> 1
0 1 -> 0
1 0 -> 0
1 1 -> 1
