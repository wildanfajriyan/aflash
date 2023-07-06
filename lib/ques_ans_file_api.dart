class Flashcard {
  final String question;
  final String answer;

  Flashcard({required this.question, required this.answer});
}

List<Flashcard> quesAnsListApi = [
  Flashcard(
      question: "Definisi API",
      answer: "API adalah kumpulan aturan dan protokol yang memungkinkan aplikasi perangkat lunak berkomunikasi dan berinteraksi satu sama lain."),
  Flashcard(
      question: "Tujuan penggunaan API:",
      answer: "Memudahkan integrasi dan interaksi antara aplikasi dan sistem lainnya."),
  Flashcard(
      question: "Perbedaan API publik dan API internal:",
      answer: "API publik diakses oleh pengembang eksternal, sedangkan API internal digunakan oleh organisasi secara internal."),
  Flashcard(
      question:
          "Definisi REST API:",
      answer:
          "REST API adalah pendekatan arsitektur perangkat lunak yang menggunakan metode HTTP untuk berkomunikasi dengan sumber daya dalam format seperti JSON atau XML."),
  
  
];

// algoritma, data struktur, API, machine learning