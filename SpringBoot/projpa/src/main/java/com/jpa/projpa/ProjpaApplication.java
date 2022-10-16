package com.jpa.projpa;

import java.util.List;
// import java.util.List;
import java.util.Optional;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

import com.jpa.projpa.dao.UserRepo;
import com.jpa.projpa.entity.User;

@SpringBootApplication
public class ProjpaApplication {

	public static void main(String[] args) {
		SpringApplication.run(ProjpaApplication.class, args);
		// UserRepo repo = context.getBean(UserRepo.class);
		/* 
		UserRepo repo = context.getBean(UserRepo.class);
		User demo = new User();
		demo.setName("harilal");
		demo.setUsername("hari9999");
		demo.setPassword("password");
		--- Creating ---
		User user = repo.save(demo);
		--- Updating ----
		demo.setName("harilal mahato")
		repo.save(demo);
		System.out.println(user);
	*/
	/* 
		User demo = new User();
		demo.setName("lal");
		demo.setUsername("h999");
		demo.setPassword("password");

		User demo1 = new User();
		demo1.setName("popop");
		demo1.setUsername("pop999");
		demo1.setPassword("pas090sword");

		List<User> users = List.of(demo, demo1);
		repo.saveAll(users);
		*/
		// Optional<User> use1r = repo.findById(3);
		// User uu = use1r.get();
		// // User user = new User();
		// Iterable<User> list = repo.findAll();
		// list.forEach((user) -> System.out.println(user));
		// System.out.println(use1r);
		// System.out.println(uu);
	}

}
