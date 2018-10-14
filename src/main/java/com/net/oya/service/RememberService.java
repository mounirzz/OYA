package com.net.oya.service;

import com.net.oya.model.Remember;
import com.net.oya.repository.RememberRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Mounir
 * @email m.ezzahar@madrex.ma
 * @date 2017-10-20
 */
@Service
public class RememberService {

    @Autowired
    RememberRepository rememberRepository;

    public void add(Remember remember) {
        rememberRepository.save(remember);
    }

    public void delete(String uuid){
        rememberRepository.delete(uuid);
    }

    public Remember findById(String uuid){
        return rememberRepository.findOne(uuid);
    }
}
