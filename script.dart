import 'dart:html';

void main() {
  // Resmi temsil eden HTML img elementini seçin
  ImageElement image = ImageElement(src: 'img/resim1.png')
    ..id = 'moving-image'; // id atanır

  // Sosyal medya ikonlarını oluşturun
  DivElement socialMediaIcons = DivElement()
    ..id = 'social-media-icons'
    ..innerHtml = '''
      <a href="https://www.facebook.com"><img src="facebook_icon.png" alt="Facebook" /></a>
      <a href="https://www.twitter.com"><img src="twitter_icon.png" alt="Twitter" /></a>
      <a href="https://www.instagram.com"><img src="instagram_icon.png" alt="Instagram" /></a>
    ''';

  // Resmin altında sosyal medya ikonlarını ekleyin
  document.body?.append(image);
  document.body?.append(socialMediaIcons);

  // Resmin Y ekseninde başlangıç pozisyonu
  double initialYPosition = 0;

  // Animasyon döngüsü
  void animate(num time) {
    // Resmin Y pozisyonunu hesaplayın (örneğin, sinus fonksiyonu kullanarak)
    double newYPosition = initialYPosition + 50 * (1 + sin(time / 1000));

    // Resmin pozisyonunu güncelleyin
    image.style.top = '${newYPosition}px';

    // Bir sonraki animasyon çerçevesini planlayın
    window.requestAnimationFrame(animate);
  }

  // İlk animasyon çerçevesini başlatın
  window.requestAnimationFrame(animate);
}
