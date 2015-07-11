package com.ufc.bootstrapper.controllers;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
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
		// Subscribe this email and send success
		//TODO: change this location from root
		ClassLoader classLoader = getClass().getClassLoader();
		File file = new File(classLoader.getResource("subscriptions.txt").getFile());
		System.out.println(file.getAbsolutePath());
		if (!file.exists()) {
			try {
				file.createNewFile();
			} catch (IOException e) {
				System.out.println(e.getStackTrace());
				return new ResponseEntity<Resource<?>>(new Resource<String>(
						"Failed subscription request"),
						HttpStatus.INTERNAL_SERVER_ERROR);
			}
		}
		notificationService.subscription(file, email);
		Resource<?> formResponse = new Resource<String>("Saved successfully");
		// custom resource as successful
		return new ResponseEntity<Resource<?>>(formResponse, HttpStatus.OK);
	}

}
