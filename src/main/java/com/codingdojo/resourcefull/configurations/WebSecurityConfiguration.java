package com.codingdojo.resourcefull.configurations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
public class WebSecurityConfiguration extends WebSecurityConfigurerAdapter {
	// ----------------------------------------------------------------------------------------
	// Attributes
	// ----------------------------------------------------------------------------------------
	private UserDetailsService userDetailsService;
	
	// ----------------------------------------------------------------------------------------
	// Constructors
	// ----------------------------------------------------------------------------------------
	public WebSecurityConfiguration(UserDetailsService userDetailsService) {
		this.userDetailsService = userDetailsService;
    }
	
	// ----------------------------------------------------------------------------------------
	//	ADDS Bcyrpt bean
	// ----------------------------------------------------------------------------------------
    @Bean
    public BCryptPasswordEncoder bCryptPasswordEncoder() {
        return new BCryptPasswordEncoder();
    }
	
	@Override
    protected void configure(HttpSecurity http) throws Exception {
        http.
        	// ----------------------------------------------------------------------------------------
    		//	Allows restricting access based upon the HttpServletRequest
    		// ----------------------------------------------------------------------------------------
            authorizeRequests()
            
            	// ------------------------------------------------------------------------------------
    			//	PathMatcher implementation for Any-style path patterns (mapping rules: ? = match 1 character, * matches 0 or more characters, ** matches 0 or more directories in a path, {spring:[a-z]+} matches the regexp [a-z]+ as a path variable named "spring)
    			// ------------------------------------------------------------------------------------
                .antMatchers("/static/**","/css/**", "/js/**", "/images/**", "/resourcefull", "/resourcefull/sign-in","/sign-in/process","/resourcefull/register","/register/process","/resourcefull/news","/resourcefull/get-involved", "/resourcefull/about", "/resourcefull/contact").permitAll()
            	
                // ------------------------------------------------------------------------------------
        		//	Maps any request
        		// ------------------------------------------------------------------------------------
                .anyRequest()
                
            	// ------------------------------------------------------------------------------------
        		//	Specify URLs that are allowed by authenticated users only
        		// ------------------------------------------------------------------------------------
                .authenticated()
                .and()
                
            // ----------------------------------------------------------------------------------------
        	//	Specifies to support form based authentication - users are going to be authenticated via a FORM
       		// ----------------------------------------------------------------------------------------
            .formLogin()
            
            	// ------------------------------------------------------------------------------------
        		//	Specifies the URL to send users to if login is required
       			// ------------------------------------------------------------------------------------
                .loginPage("/resourcefull/sign-in")
                .defaultSuccessUrl("/resourcefull")
                .permitAll()
                .and()
                
            // ----------------------------------------------------------------------------------------
           	// Provides logout support. The default is that accessing the URL "/logout" will log the user out by invalidating the HTTP Session,cleaning up any rememberMe() authentication that was configured, clearing the SecurityContextHolder, and then redirect to "/login?success"
            // ----------------------------------------------------------------------------------------  
            .logout()
            	.logoutSuccessUrl("/resourcefull")
                .permitAll();
    }
	// ----------------------------------------------------------------------------------------
	//	CONFIGURES Spring Security to use custom implementation of the UserDetailsService with Bcrypt
	// ----------------------------------------------------------------------------------------
	@Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService).passwordEncoder(bCryptPasswordEncoder());
    } 
}
