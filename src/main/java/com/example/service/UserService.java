package com.example.service;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.example.model.UserModel;
import com.example.model.UserRegistrationModel;

public interface UserService extends UserDetailsService {

	UserModel findByEmail(String email);

	UserModel save(UserRegistrationModel registration);

	UserDetails loadUserByUsername(String email) throws UsernameNotFoundException;
}