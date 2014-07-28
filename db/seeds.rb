Reviewer.destroy_all
Book.destroy_all

Book.create! [
  { name: "My way or highway", author: "Me" },
  { name: "The Rails Way", author: "The Other Guy" },
  { name: "The Starving Students' Cookbook", author: "Dede Hall" },
  { name: "The Vegetarian Family Cookbook", author: "Nava Atlas" }, 
  { name: "Ember.js in Action", author: "Joachim Haagen Skeie" } 
]

200.times { |index| Book.create! name: "Name#{index}", author: "Author#{index}" }

mine = Book.find_by author: "Me"
mine.notes.create! [
  { title: "Fascinating", note: "This book is simply amazing!"},
  { title: "Wow", note: "This guy is so full of himself... :)"}
]

reviewers = Reviewer.create! [
  { name: "Joe", password: "abc123" },
  { name: "Jim", password: "123abc" }
]

Book.all.each do |book|
  book.reviewer = reviewers.sample
  book.save!
end
