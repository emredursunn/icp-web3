actor NumberGuessingGame {
    private var secretNumber: Int = 0;

    public func startGame() : Text {
        secretNumber := Random.number(1, 100); // 1 ile 100 arasında rastgele bir sayı oluştur
        return "Oyun başladı! Tahmin etmeye başlayın.";
    }

    public func guess(number: Int) : Text {
        if (number < secretNumber) {
            return "Tahmininiz çok düşük. Tekrar deneyin!";
        } else if (number > secretNumber) {
            return "Tahmininiz çok yüksek. Tekrar deneyin!";
        } else {
            return "Tebrikler! Doğru tahmin ettiniz: " # Int.toText(secretNumber);
        }
    }
}
