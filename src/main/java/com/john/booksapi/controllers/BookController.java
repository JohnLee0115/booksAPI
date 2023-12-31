package com.john.booksapi.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.john.booksapi.models.Book;
import com.john.booksapi.services.BookService;

@Controller
public class BookController {
	
	private final BookService bookService;
	
	public BookController (BookService bookService) {
		this.bookService = bookService;
	}
	
	@RequestMapping("/books")
	public String index(Model model) {
		List<Book> books = bookService.allBooks();
		model.addAttribute("books", books);
		
		return "/books/index.jsp";
	}
	
	@RequestMapping("/books/{id}")
	public String show(@PathVariable("id") Long id, Model model) {
		model.addAttribute("book", bookService.findBook(id));
		
		return "show.jsp";
	}
}
