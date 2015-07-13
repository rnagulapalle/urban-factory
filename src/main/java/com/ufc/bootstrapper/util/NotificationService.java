package com.ufc.bootstrapper.util;

import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Future;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;

import org.apache.commons.lang3.StringUtils;
import org.apache.velocity.app.VelocityEngine;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.AsyncResult;
import org.springframework.stereotype.Component;
import org.springframework.ui.velocity.VelocityEngineUtils;


@Component
public class NotificationService {

	private static final Logger logger = LoggerFactory
			.getLogger(NotificationService.class);
	@Inject
	private VelocityEngine velocityEngine;
	
	@Inject
	private JavaMailSender javaMailSender;


	@Async
	public Future<Boolean> subscription(File file, String email) {
		//TODO: save email into file
		System.out.println("This is inside notification!");
		WriteToFile.write(file, email);
		return new AsyncResult<>(true);
	}
	
	@Async
	public Future<Boolean> sendSubscriptionEmail(String email) {
		
		boolean result = true;
		
		Map<String, Object> data = new HashMap<String, Object>();
		
		
		data.put("email", email);
		String emailText = VelocityEngineUtils.mergeTemplateIntoString(
				velocityEngine, "templates/subscription.vm", "UTF-8",
				data);
		try {
			sendEmail("madhuri@urbanfactory.in", null, "subscription@urbanfactory.com",
					"Subscription request recieved", emailText);
		} catch (Exception e) {
			// TODO: persist this exception into db so that we can handle it
			// later
			result = false;
			logger.error("Error in notification send subscription email", e);
		}

		return new AsyncResult<>(result);
	}
	
	private void sendEmail(final String to, final String cc, final String from,
			final String subject, final String body)
			throws Exception {

		MimeMessagePreparator preparator = new MimeMessagePreparator() {
			public void prepare(MimeMessage mimeMessage) throws Exception {
				MimeMessageHelper message = new MimeMessageHelper(mimeMessage);
				message.setTo(to);
				if (StringUtils.isNotEmpty(cc)) {
					message.setCc(cc);
				}
				message.setFrom(from);
				message.setSubject(subject);
				message.setText(body, true);
			}
		};

		try {
			this.javaMailSender.send(preparator);
		} catch (MailException ex) {
			logger.error("Error while sending email", ex);
			throw new Exception("Error while sending mail "
					+ ex.getLocalizedMessage());
		}
	}

}
