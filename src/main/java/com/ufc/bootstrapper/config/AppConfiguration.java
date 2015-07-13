package com.ufc.bootstrapper.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

/**
 * Created with IntelliJ IDEA.
 * User: will
 * Date: 11/23/13
 * Time: 12:34 PM
 */
@Configuration
@ComponentScan("com.ufc")
@Import({MetricsConfiguration.class, MailConfiguration.class})
public class AppConfiguration {
}

