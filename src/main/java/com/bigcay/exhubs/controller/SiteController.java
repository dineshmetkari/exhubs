package com.bigcay.exhubs.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SiteController {

	private static final Logger logger = LoggerFactory.getLogger(SiteController.class);

	// @Autowired
	// private AuthorityService authorityService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String indexHandler(Model model) {

		logger.debug("SiteController.indexHandler >> ");

		return "site/index";
	}

}
