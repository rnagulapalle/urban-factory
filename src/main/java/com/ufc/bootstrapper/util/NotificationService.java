package com.ufc.bootstrapper.util;

import java.util.concurrent.Future;

import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.AsyncResult;
import org.springframework.stereotype.Component;

@Component
public class NotificationService {

	@Async
	public Future<Boolean> subscription(String email) {
		//TODO: save email into file
		System.out.println("This is inside notification!");
		return new AsyncResult<>(true);
	}
}
