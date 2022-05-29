package io.github.julianjupiter.app.repository;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import io.github.julianjupiter.app.domain.Book;

public class BookRepositoryImpl implements BookRepository {
	
	private static List<Book> bookList = new ArrayList<>();
	
	static {
		Book book1 = new Book();
		book1.setId(1);
		book1.setTitle("Harry Potter and the Half-Blood Prince");
		book1.setIsbn("439785960");
		book1.setAuthor("J.K. Rowling/Mary GrandPrÃ©");
		book1.setYearPublished("2006");

		Book book2 = new Book();
		book2.setId(2);
		book2.setTitle("Harry Potter and the Order of the Phoenix");
		book2.setIsbn("439358078");
		book2.setAuthor("J.K. Rowling/Mary GrandPrÃ©");
		book2.setYearPublished("2004");

		Book book3 = new Book();
		book3.setId(3);
		book3.setTitle("Harry Potter and the Chamber of Secrets");
		book3.setIsbn("439554896");
		book3.setAuthor("J.K. Rowling/");
		book3.setYearPublished("2003");

		Book book4 = new Book();
		book4.setId(4);
		book4.setTitle("Harry Potter and the Prisoner of Azkaban");
		book4.setIsbn("043965548X");
		book4.setAuthor("J.K. Rowling");
		book4.setYearPublished("2004");

		Book book5 = new Book();
		book5.setId(5);
		book5.setTitle("Harry Potter Boxed Set  Books 1-5");
		book5.setIsbn("439682584");
		book5.setAuthor("J.K. Rowling/Mary GrandPrÃ©");
		book5.setYearPublished("2009");
		
		Book[] books = { book1, book2, book3, book4, book5 };
		bookList = Arrays.asList(books);
	}

	@Override
	public Iterable<Book> findAll() {
		return bookList;
	}

	@Override
	public Optional<Book> findById(long id) {
		return bookList.stream()
			.filter(book -> book.getId() == id)
			.findFirst();
	}

}
