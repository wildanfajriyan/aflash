class Flashcard {
  final String question;
  final String answer;

  Flashcard({required this.question, required this.answer});
}

List<Flashcard> quesAnsListDs = [
  Flashcard(
      question: "Definisi struktur data",
      answer: "Struktur data adalah cara untuk menyimpan dan mengatur data dalam komputer sehingga dapat diakses dan digunakan secara efisien."),
  Flashcard(
      question: "Perbedaan array dan linked list",
      answer: "Array adalah struktur data dengan elemen-elemen yang disimpan secara berurutan dalam memori, sedangkan linked list terdiri dari simpul-simpul yang terhubung satu sama lain melalui pointer."),
  Flashcard(
      question: "Keuntungan menggunakan stack dalam pemrograman",
      answer: "Stack memungkinkan penyimpanan data dengan prinsip Last-In-First-Out (LIFO), sehingga memudahkan dalam implementasi rekursi, manajemen memori, dan pembalikan urutan elemen"),
  Flashcard(
      question:
          "Perbedaan antara queue dan stack:",
      answer:
          "Queue merupakan struktur data dengan prinsip First-In-First-Out (FIFO), sementara stack menggunakan prinsip Last-In-First-Out (LIFO). Queue digunakan untuk antrian tugas, sedangkan stack digunakan untuk keperluan seperti pemanggilan fungsi dan pembalikan urutan elemen."),
  
  
];

// algoritma, data struktur, API, machine learning