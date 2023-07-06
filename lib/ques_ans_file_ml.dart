class Flashcard {
  final String question;
  final String answer;

  Flashcard({required this.question, required this.answer});
}

List<Flashcard> quesAnsListMl = [
  Flashcard(
      question: "Definisi machine learning",
      answer: "Machine learning adalah cabang kecerdasan buatan yang memungkinkan komputer belajar dari data dan pengalaman tanpa diprogram secara eksplisit."),
  Flashcard(
      question: "Perbedaan supervised learning dan unsupervised learning:",
      answer: "Supervised learning menggunakan data dengan label, sedangkan unsupervised learning menggunakan data tanpa label."),
  Flashcard(
      question: "Overfitting dalam machine learning:",
      answer: "Overfitting terjadi ketika model terlalu cocok dengan data pelatihan dan tidak dapat generalisasi dengan baik pada data baru"),
  Flashcard(
      question:
          "Perbedaan precision dan recall:",
      answer:
          "Precision mengukur keakuratan dalam mengidentifikasi kelas positif, sedangkan recall mengukur kemampuan menemukan kembali instance kelas positif."),
  
  
];

// algoritma, data struktur, API, machine learning