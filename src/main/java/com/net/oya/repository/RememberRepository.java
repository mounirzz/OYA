package com.net.oya.repository;
import org.springframework.data.jpa.repository.JpaRepository;

import com.net.oya.model.Remember;


public interface RememberRepository extends JpaRepository<Remember,String> {
}
