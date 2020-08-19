def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year FROM books WHERE series_id = 1;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters ORDER BY Length(motto) DESC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) FROM characters GROUP BY species ORDER BY COUNT(species) DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors, subgenres, series WHERE authors.id = series.author_id AND subgenres.id = Series.subgenre_id;"
end

def select_series_title_with_most_human_characters
  "SELECT title FROM series, characters WHERE series.author_id = characters.author_id GROUP BY characters.species ORDER BY COUNT(characters.species) LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(books.title) FROM characters, books, character_books WHERE character_books.character_id = characters.id AND character_books.book_id  = books.id GROUP BY characters.name ORDER BY COUNT(books.title) DESC;"
end 