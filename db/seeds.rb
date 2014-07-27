Book.destroy_all

Book.create! [
  { name: "My way or highway", author: "Me" },
  { name: "The Rails Way", author: "The Other Guy" },
  { name: "The Starving Students' Cookbook", author: "Dede Hall" },
  { name: "The Vegetarian Family Cookbook", author: "Nava Atlas" }, 
  { name: "Ember.js in Action", author: "Joachim Haagen Skeie" } 
]

mine = Book.find_by author: "Me"
mine.notes.create! [
  { title: "Fascinating", note: "This book is simply amazing!"},
  { title: "Wow", note: "This guy is so full of himself... :)"}
]