package com.Test.Junit.service;

import com.Test.Junit.Exception.CustomExcep;
import com.Test.Junit.entity.Book;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class BookService{

    private List<Book> list = new ArrayList<>();

    public void addBook(Book book){
        list.add(book);

    }

    public List<Book> books(){
        return Collections.unmodifiableList(list);

    }

    public Book getById(int id){
        for (Book book : list){
            if(book.getId()==id){
                return book;
            }
        }
        return null;
    }

    public String[] getBookByIdPublisher(String publisher){
        List<Integer> ids = new ArrayList<>();
        for(Book book : list){
            if(publisher.equals(book.getAuthor())){
                ids.add(book.getId());
            }
        }
        return  ids.toArray(new String[ids.size()]);

    }

    public Book getByTitle(String title) throws CustomExcep {
        for (Book book : list){
            if(book.getTitle().equals(title)){
                return book;
            }
        }
        throw new CustomExcep("hehe, exception is here lala");
    }
}


