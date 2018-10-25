package com.service.impl;

import com.bean.Books;
import com.dao.BooksMapper;
import com.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BookServiceImpl implements BookService {

    @Autowired
    private BooksMapper booksMapper;

    @Override
    public int deleteByPrimaryKey(Integer bookid) {
        return booksMapper.deleteByPrimaryKey(bookid);
    }

    @Override
    public int insert(Books record) {
        return booksMapper.insert(record);
    }

    @Override
    public int insertSelective(Books record) {
        return booksMapper.insertSelective(record);
    }

    @Override
    public Books selectByPrimaryKey(Integer bookid) {
        return booksMapper.selectByPrimaryKey(bookid);
    }

    @Override
    public int updateByPrimaryKeySelective(Books record) {
        return booksMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Books record) {
        return booksMapper.updateByPrimaryKey(record);
    }
}
