class Flashcard {
  final String question;
  final String answer;

  Flashcard({required this.question, required this.answer});
}

List<Flashcard> quesAnsListAlgo = [
  Flashcard(
      question: "Definisi Algoritma",
      answer: "Algoritma adalah serangkaian langkah-langkah logis untuk menyelesaikan masalah."),
  Flashcard(
      question: "Perbedaan algoritma dan program",
      answer: "Algoritma adalah deskripsi langkah-langkah, sedangkan program adalah implementasi konkret dari algoritma."),
  Flashcard(
      question: "Tiga sifat baik algoritma",
      answer: "Kekinian (well-defined), efisien, dan berakhir (termination)."),
  Flashcard(
      question:
          "Kompleksitas waktu algoritma",
      answer:
          "Jumlah waktu yang diperlukan oleh algoritma untuk menyelesaikan masalah."),

];

// algoritma, data struktur, API, machine learning