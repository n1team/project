package com.team1.web;

import org.sitemesh.builder.SiteMeshFilterBuilder;
import org.sitemesh.config.ConfigurableSiteMeshFilter;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class SiteMeshConfig {
	
	@Bean
	FilterRegistrationBean siteMeshFilter()
	{
		FilterRegistrationBean filter = new FilterRegistrationBean();

		filter.setFilter(new ConfigurableSiteMeshFilter() {
			@Override
			protected void applyCustomConfiguration(SiteMeshFilterBuilder builder) {
				builder.addDecoratorPath("/country/*", "/WEB-INF/decorators/default.jsp")
						.addDecoratorPath("/city/*", "/WEB-INF/decorators/default.jsp")
						.addDecoratorPath("/dept/*", "/WEB-INF/decorators/default.jsp")
						.addDecoratorPath("/emp/*", "/WEB-INF/decorators/default.jsp")
						.addDecoratorPath("/note/*", "/WEB-INF/decorators/default.jsp")
						.addDecoratorPath("/*", "/WEB-INF/decorators/default.jsp")
						;
			}
		});

//		filter.addUrlPatterns("/*");
		return filter;
	}

}
