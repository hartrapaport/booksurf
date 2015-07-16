amazon_books={"Great Gatsby" => 7.70, "Pride and Predjudice" => 9.99, "Macbeth" => 2.70, "The Catcher in the Rye" => 8.49, "Iliad by Homer" => 11.75 }

b_n_books={"Great Gatsby" => 9.14, "Pride and Predjudice" => 6.25, "Macbeth" => 5.99, "The Catcher in the Rye" => 9.74, "Iliad by Homer" => 11.98 }
i=0
while i<5
  amazon_books.each_value do |value|
    @amazon_value=value
  end
  b_n_books.each_value do |value|
    @b_n_value=value
  end

  def cheaper
    if @amazon_value<@b_n_value
      @winner="Amazon"#"Amazon has that book at a cheaper price, the price is $#{@amazon_value}"
    elsif @b_n_value<@amazon_value
      @winner="Barnes and Nobles"#"Barnes and Nobles has that book at a cheaper price, the price is $#{@b_n_value}"
    else
      "Sorry we don't have that book."
    end
  end
  i=i+1
  puts @winner
end