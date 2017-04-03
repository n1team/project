package com.team1.config;

import org.apache.catalina.Context;
import org.springframework.boot.autoconfigure.web.ServerProperties;
import org.springframework.boot.context.embedded.ConfigurableEmbeddedServletContainer;
import org.springframework.boot.context.embedded.tomcat.TomcatContextCustomizer;
import org.springframework.boot.context.embedded.tomcat.TomcatEmbeddedServletContainerFactory;
import org.springframework.context.annotation.Configuration;

@Configuration
public class TomcatConfig extends ServerProperties {
	
	@Override
	public void customize(ConfigurableEmbeddedServletContainer container) {
		super.customize(container);
		
		/*
		 * Tomcat 설정
		 */
		TomcatEmbeddedServletContainerFactory tomcat = (TomcatEmbeddedServletContainerFactory) container;
		tomcat.addContextCustomizers(new TomcatContextCustomizer() {
			
			@Override
			public void customize(Context context) {
				context.addWelcomeFile("index.jsp");
			}
		});
		
	}

}