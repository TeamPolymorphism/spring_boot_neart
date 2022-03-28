package com.teamPM.neart.controller;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultHandlers;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

// https://galid1.tistory.com/735
@AutoConfigureMockMvc
@SpringBootTest
class NeartMainControllerTest {
	
	@Autowired
	private MockMvc mvc;

	@Test
	void contextLoads() throws Exception {
		mvc.perform(MockMvcRequestBuilders.get("/").accept(MediaType.TEXT_HTML))
		.andExpect(MockMvcResultMatchers.status().isOk())
		.andDo(MockMvcResultHandlers.print());
	}

}
