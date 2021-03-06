package com.epamLastTask.repositories;

import com.epamLastTask.domains.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
public interface UserRepo extends JpaRepository<User,Long> {
    User findByUsername(String username);
    User findUserByEmail(String email);
}
