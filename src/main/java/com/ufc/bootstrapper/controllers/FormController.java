package com.ufc.bootstrapper.controllers;

import java.util.concurrent.ExecutionException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.hateoas.Resource;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ufc.bootstrapper.util.NotificationService;

@Controller
public class FormController {

	@Autowired
	private NotificationService notificationService;

	@RequestMapping(method = RequestMethod.POST, value = "/subscription", produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	ResponseEntity<Resource<?>> userSubscription(@RequestBody String email,
			HttpServletRequest request) {
		System.out.println(email);
		try {
			if(!notificationService.sendSubscriptionEmail(email).get()){
				return new ResponseEntity<Resource<?>>(HttpStatus.INTERNAL_SERVER_ERROR);
			}
		} catch (InterruptedException | ExecutionException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return new ResponseEntity<Resource<?>>(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		Resource<?> formResponse = new Resource<String>("Saved successfully");
		// custom resource as successful
		return new ResponseEntity<Resource<?>>(formResponse, HttpStatus.OK);
	}

}
