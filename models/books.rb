
def books(book_title) 

amazon_books={"Great Gatsby" => 7.70, "Pride and Prejudice" => 9.99, "Macbeth" => 2.70, "The Catcher in the Rye" => 8.49, "Iliad by Homer" => 11.75,"1984" => 6.00, "Jane Eyre" => 9.89, "Crime and Punishment" => 3.16, "Lolita" => 9.76, "Wuthering Heights" => 2.68, "The Adventures of Huckleberry Finn" => 4.05, "Of Mice and Men" => 6.67, "The Count of Monte Cristo" => 8.38, "Brave New World" => 8.81, "One Hundred Years of Solitude" => 9.96, "Anna Karenina" => 9.95, "The Brothers Karamazov" => 12.59, "Catch-22" => 10.31, "The Grapes of Wrath" => 11.11, "Slaughterhouse-Five" => 6.00, "A Tale of Two Cities" => 2.93, "War and Peace" => 11.30, "The Old Man and the Sea" => 6.16, "Moby Dick" => 3.08, "Dun Quixote" => 16.09, "The Metamorphosis" => 2.70, "East of Eden" => 9.88, "The Sound and the Fury" => 9.48, "All Quiet on the Western Front" => 6.00, "Ulysses" => 6.28, "The Scarlet Letter" => 7.99, "The Name of the Rose" => 13.81, "The Master and Margarita" => 8.62, "Candide" => 6.99, "David Copperfield" => 8.92, "To the Lighthouse" => 10.58, "The Catcher in the Rye" => 4.94, "For Whom the Bell Tolls" => 9.60, "Invisible Man" => 10.81, "Tess of the D'urbervilles" => 6.74, "The Plague" => 8.89, "The Heart is a Lonely Hunter" => 7.64, "Things Fall Apart" => 7.00, "Their Eyes Were Watching God" => 12.39, "Brideshead Revisited" => 13.35, "A Confederacy of Dunces" => 9.09, "Blindness" => 10.78, "The Awakening" => 6.99, "Blood Meridian" => 9.37, "Infinite Jest" => 13.15, "I, Claudius" => 11.33, "Sons and Lovers" => 3.95, "In Search of Lost Time" => 55.24, "Middlemarch" => 3.19, "My Antonia" => 4.05, "Light in August" => 10.78, "Vanity Fair" => 8.10, "All the King's Men" => 12.37, "The Tin Drum" => 13.38, "Ficciones" => 10.22, "To Kill a Mockingbird" => 4.94, "Pale Fire" => 11.30, "The House of Mirth" => 5.00, "The Magic Mountain" => 12.20, "Dead Souls" => 12.54, "The History of Tom Jones" => 10.58, "The Tropic of Cancer" => 3.68, "The Maltese Falcon" => 18.27, "The Life and Opinions of Tristram Shandy" => 9.39, "Cancer Ward" => 19.35, "Gilead" => 9.94, "Cat's Eye" => 11.30, "An American Tragedy" => 8.22, "The Adventures of Augie March" => 13.69, "Death Comes for the Archbishop" => 11.71, "Rabbit Angstrom" => 21.31, "V." => 12.98, "Lost Illusions" => 11.88, "The Stranger" => 7.60, "A House for Mr Biswas" => 11.85, "Bridge of Sighs" => 12.97, "Under the Volcano" => 5.34, "Therese Raquin" => 9.49, "The Sot-Weed Factor" => 4.10, "Adam Bede" => 4.95, "Jazz" => 11.04, "Finnegans Waker" => 15.78, "The Tale of Genji" => 19.44, "The Recognitions" => 16.35, "The Vicar of Wakefield" => 7.43, "Mason and Dixon" => 14.09, "The Tenth Man" => 9.67, "Life and Fate" => 18.89, "Humboldt's Gift" => 13.83, "JR" => 17.85, "1919" => 20.00, "The Death of Virgil" => 14.09, "Middlesex" => 8.29, "Native Son" => 13.41, "The Tunnel" => 11.85, "Darconville's Cat" => 3.68}

  b_n_books={"Great Gatsby" => 9.14, "Pride and Prejudice" => 6.25, "Macbeth" => 5.99, "The Catcher in the Rye" => 9.74, "Iliad by Homer" => 11.98 }
  amazon_price = amazon_books[book_title].to_f 
    b_n_price= b_n_books[book_title].to_f
  if amazon_books.include?(book_title) && b_n_books.include?(book_title)
    get_price(amazon_price,b_n_price)
    @ap = amazon_price
    @bp = b_n_price
  else 
    book_title = "N/A"
    @ap = "N/A"
    @bp = "N/A"
    @winner = "N/A"
  end
end
  
  def get_price(amazon_price, b_n_price) 
    if amazon_price<b_n_price
      @winner = "Amazon"
    else 
      @winner = "Barnes and Noble"
    end
  end
    