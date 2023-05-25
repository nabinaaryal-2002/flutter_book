

class Book{

  final String imageUrl;
  final String title;
  final String detail;
  final String rating;
  final String genres;
  final int viewed;

  Book({
    required this.title,
    required this.detail,
    required this.imageUrl,
    required this.rating,
    required this.genres,
    required this.viewed
});
}

List<Book> books=[
  Book(title: 'The Republic',
      detail: 'A summary of The Republic by Plato can be defined by three words, justice, virtue, and happiness. Plato\'s text is designed so that Socrates first asks what justice is and then explains that, until one knows, they cannot then understand if justice is a virtue and provides happiness.',
      imageUrl: 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1386925655i/30289.jpg',
      rating: '⭐⭐⭐',
      genres: 'Idealism',
      viewed: 213213),
  Book(title: 'Politics',
      detail: 'In his Nicomachean Ethics, Aristotle (384-322 B.C.E.) describes the happy life intended for man by nature as one lived in accordance with virtue, and, in his Politics, he describes the role that politics and the political community must play in bringing about the virtuous life in the citizenry.',
      imageUrl: 'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1391135988i/19083.jpg',
      rating: '⭐⭐⭐',
      genres: 'Realism',
      viewed: 12323),
  Book(title: 'Meditation',
      detail: '"Meditations" reveals that Marcus remained in control of his emotions through the beliefs that nature unfolds in a perfect way and that one must accept that they cannot change the past or what other people feel in their hearts.',
      imageUrl: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1421618636l/30659.jpg',
      rating: '⭐⭐⭐⭐⭐',
      genres: 'Stoicism',
      viewed: 12313),
  Book(title: 'The Three Pure Sutras',
      detail: 'These three sutras make up the most important scriptures of the Pure Land School of Buddhism, which centers around the Buddha of Infinite Light & Life, known in Japanese as the Amida Buddha. ',
      imageUrl: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1392153656l/20787277.jpg',
      rating: '⭐⭐⭐⭐',
      genres:'Buddhism',
      viewed: 234342),
  Book(title: 'The Art of War',
      detail: 'Twenty-Five Hundred years ago, Sun Tzu wrote this classic book of military strategy based on Chinese warfare and military thought. Since that time, all levels of military have used the teaching on Sun Tzu to warfare and civilization have adapted these teachings for use in politics, business and everyday life. The Art of War is a book which should be used to gain advantage of opponents in the boardroom and battlefield alike.',
      imageUrl: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1630683326l/10534._SY475_.jpg',
      rating: '⭐⭐⭐⭐',
      genres: 'Misc',
      viewed: 213213),

];

final readingBooks = Book(
      title: 'Beyond Good and Evil',
      detail: 'Beyond Good and Evil confirmed Nietzsche\'s position as the towering European philosopher of his age. The work dramatically rejects the tradition of Western thought with its notions of truth and God, good and evil.',
      imageUrl: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1388607391l/12321.jpg',
      rating: '⭐⭐⭐⭐⭐',
      genres: 'Existensialism',
    viewed: 90102);

List<Book> books2=[
  Book(title: 'The Art of War',
      detail: 'Twenty-Five Hundred years ago, Sun Tzu wrote this classic book of military strategy based on Chinese warfare and military thought. Since that time, all levels of military have used the teaching on Sun Tzu to warfare and civilization have adapted these teachings for use in politics, business and everyday life. The Art of War is a book which should be used to gain advantage of opponents in the boardroom and battlefield alike.',
      imageUrl: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1630683326l/10534._SY475_.jpg',
      rating: '⭐⭐⭐⭐⭐',
      genres: 'Misc',
      viewed: 1203),
  Book(title: 'Cosmos',
      detail: 'The story of fifteen billion years of cosmic evolution transforming matter and life into consciousness, of how science and civilisation grew up together, and of the forces and individuals who helped shape modern science. A story told with Carl Sagan\'s remarkable ability to make scientific ideas both comprehensible and exciting, based on his acclaimed television series. ',
      imageUrl: 'https://images.penguinrandomhouse.com/cover/9780345539434',
      rating: '⭐⭐⭐⭐⭐',
      genres: 'Universe',
      viewed: 19903),
  Book(title: 'The Communist Manifesto',
      detail: 'Originally published on the eve of the 1848 European revolutions, The Communist Manifesto is a condensed and incisive account of the worldview Marx and Engels developed during their hectic intellectual and political collaboration. Formulating the principles of dialectical materialism, they believed that labor creates wealth, hence capitalism is exploitive and antithetical to freedom.',
      imageUrl: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1565912767l/30474._SY475_.jpg',
      rating: '⭐⭐⭐⭐',
      genres: 'Marxism',
      viewed: 13211),
  Book(title: 'The Three Pure Land Sutras',
      detail: 'These three sutras make up the most important scriptures of the Pure Land School of Buddhism, which centers around the Buddha of Infinite Light & Life, known in Japanese as the Amida Buddha. ',
      imageUrl: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1392153656l/20787277.jpg',
      rating: '⭐⭐⭐⭐⭐',
      genres: 'Buddhism',
      viewed: 21122),
  Book(title: 'The Red Book',
      detail: 'When Carl Jung embarked on an extended self-exploration he called it his “confrontation with the unconscious,” the heart of it was The Red Book, a large, illuminated volume he created between 1914 and 1930. Here he developed his principle theories—of the archetypes, the collective unconscious, and the process of individuation—that transformed psychotherapy from a practice concerned with treatment of the sick into a means for higher development of the personality.',
      imageUrl: 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1349565532l/6454477.jpg',
      rating: '⭐⭐⭐⭐⭐',
      genres: 'Psychology',
      viewed: 12221)
];