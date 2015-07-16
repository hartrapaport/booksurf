
def books(book_title) 

amazon_books={"Great Gatsby" => 7.70, "Pride and Prejudice" => 9.99, "Macbeth" => 2.70, "The Catcher in the Rye" => 8.49, "Iliad by Homer" => 11.75 }

  b_n_books={"Great Gatsby" => 9.14, "Pride and Prejudice" => 6.25, "Macbeth" => 5.99, "The Catcher in the Rye" => 9.74, "Iliad by Homer" => 11.98 }
  amazon_price = amazon_books[book_title].to_f 
    b_n_price= b_n_books[book_title].to_f
  if amazon_books.include?(book_title) && b_n_books.include?(book_title)
    get_price(amazon_price,b_n_price)
    end
end
  
  def get_price(amazon_price, b_n_price) 
    if amazon_price<b_n_price
      @winner = "Amazon"
    else 
      @winner = "Barnes and Noble"
    end
  end
    