package com.spring.bookstore.repository;

import com.spring.bookstore.entity.BookEntity;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface BookRepository extends CrudRepository<BookEntity, Integer>{
//        List<BookEntity> findByAuthor(String author);
//        List<BookEntity> findByNameAndAuthor(String name, String author);
//        List<BookEntity> findByNameOrAuthor(String name, String author);

//        BookEntity findByBookDetailsIsbn(String isbn);
//
//        List<BookEntity> findByBookDetailsPriceLessThan(int price);
//        List<BookEntity> findByBookDetailsPriceLessThanEqual(int price);
//        List<BookEntity> findByBookDetailsPriceGreaterThanEqual(int price);
//
//        List<BookEntity> findByNameContaining(String name);
        List<BookEntity> findByNameContainingOrAuthorContaining(String searchInput, String searchInput1);






//
//        @Query(value = "select * from book where id =?1", nativeQuery = true)
//        BookEntity getByID(int id);
//
//        @Query (value = "select * from book where categoryId = ?1", nativeQuery = true)
//        BookEntity getByCategoryID(int id);
}
