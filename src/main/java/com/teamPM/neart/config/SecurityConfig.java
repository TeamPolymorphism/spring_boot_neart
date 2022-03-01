package com.teamPM.neart.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import com.teamPM.neart.security.UserCustomDetailsService;

@Configuration		
@EnableWebSecurity 
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	
    @Autowired
    UserCustomDetailsService userCustomDetailsService;
    
    
    @Override
    protected void configure(HttpSecurity http) throws Exception {
    	http.httpBasic().and().authorizeRequests()
    	.antMatchers("/").permitAll()
    	.antMatchers("/add/**").permitAll()
    	.antMatchers("/user/**").hasRole("USER")
    	.antMatchers("/admin/**").hasRole("ADMIN")
    	.anyRequest().authenticated()
    	.and().logout().permitAll()
    	.and().formLogin()
    	.defaultSuccessUrl("/", true)
    	.and().csrf().disable();
    	
    }
    
    @Override
	public void configure(AuthenticationManagerBuilder auth) throws Exception{		

        auth.userDetailsService(userCustomDetailsService)
        .passwordEncoder(passwordEncoder());
	}

    @Bean
    public PasswordEncoder passwordEncoder() {
    	System.out.println("-----------web security config , passwordEncoder");
        return new BCryptPasswordEncoder();
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/css/**", "/js/**", "/img/**");
    }
	
}
