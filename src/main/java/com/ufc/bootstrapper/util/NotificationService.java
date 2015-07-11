package com.ufc.bootstrapper.util;

import java.io.File;
import java.util.concurrent.Future;

import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.AsyncResult;
import org.springframework.stereotype.Component;

@Component
public class NotificationService {

	@Async
	public Future<Boolean> subscription(File file, String email) {
		//TODO: save email into file
		System.out.println("This is inside notification!");
		WriteToFile.write(file, email);
		return new AsyncResult<>(true);
	}
}
