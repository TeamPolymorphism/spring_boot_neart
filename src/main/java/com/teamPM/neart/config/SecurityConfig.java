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
import com.teamPM.neart.service.PrincipalOauth2UserService;

@Configuration		
@EnableWebSecurity 
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	
    @Autowired
    UserCustomDetailsService userCustomDetailsService;
    
    @Autowired
	private PrincipalOauth2UserService principalOauth2UserService;
    
    @Override
    protected void configure(HttpSecurity http) throws Exception {
    	http.httpBasic().and().authorizeRequests()
    	.antMatchers("/").permitAll()
    	.antMatchers("/static/**").permitAll()
    	.antMatchers("/artist").permitAll()
    	.antMatchers("/about").permitAll()
    	.antMatchers("/listProduct").permitAll()
    	.antMatchers("/statistics").permitAll()
    	.antMatchers("/addForm").permitAll()
    	.antMatchers("/addFormAdmin").permitAll()
    	.antMatchers("/login").permitAll()
    	.antMatchers("/add/**").permitAll()
    	.antMatchers("/statistics/**").permitAll()
    	.antMatchers("/user/**").hasRole("USER")
    	.antMatchers("/admin/**").hasRole("ADMIN")
    	.antMatchers("/product/**").permitAll()
    	.antMatchers("/board/**").permitAll()
    	.antMatchers("/qnaboard/**").permitAll()
    	.anyRequest().authenticated()
    	.and().logout().permitAll()
    	.logoutSuccessUrl("/")
    	.invalidateHttpSession(true)
    	.permitAll()
    	.and().formLogin().loginPage("/login")
    	.failureUrl("/login?error").permitAll()
    	.defaultSuccessUrl("/", true)
    	
    	
    	.and()
		.oauth2Login().loginPage("/login")
		// 소셜로그인이 완료되면 후처리가 필요함 1.코드받기(인증) 2.엑세스토큰(권한) 3.사용자프로필 가져오기 4. 가져온 정보를 토대로
		// 회원가입을 자동으로 진행
		.userInfoEndpoint() // OAuth2 로그인 성공 이후 사용자 정보를 가져올 때의 설정
		.userService(principalOauth2UserService)
		
		// 로그인 성공 시 수행 할 UserService 구현체 지정, 엑세스토큰 + 사용자프로필정보 같이 받음
		.and()
		.defaultSuccessUrl("/")// 소셜 로그인이 성공하면 이동할 주소
		
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
        web.ignoring().antMatchers("/css/**", "/js/**", "/images/**", "/vendor/**", "/fonts/**", 
        		"/neart-source/**","/AdminLTE-master/**");
    }
	
}
