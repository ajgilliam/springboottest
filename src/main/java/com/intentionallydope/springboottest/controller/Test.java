package com.intentionallydope.springboottest.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/test", produces = MediaType.APPLICATION_JSON_VALUE)
public class Test {
  
  @RequestMapping(value = {"/"}, method = RequestMethod.GET, produces = "application/json")
  public ResponseEntity<String> getTestString(
      HttpServletRequest httpRequest,
      HttpServletResponse httpResponse) throws Exception {
    
    return new ResponseEntity<String>("Hello World", HttpStatus.OK);
  }


}
