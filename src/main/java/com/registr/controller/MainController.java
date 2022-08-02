package com.registr.controller;

import com.registr.domain.User;
import com.registr.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

@Controller
public class MainController {
    @Autowired
    private UserRepo userRepo;

    @GetMapping("/")

    public String greeting( Map<String, Object> model) {
        return "greeting";
    }

    @GetMapping("/main")
    public String main(Map<String, Object> model) {
        Iterable<User> messages = userRepo.findAll();
        model.put("messages", messages);

        for(Map.Entry<String, Object> pair : model.entrySet())
        {
            var value = pair.getValue();
            System.out.println(value);
        }

        return "main";
    }

//    @PostMapping("/main")
//    public String add(@RequestParam String text, @RequestParam String tag, Map<String, Object> model) {
//        Message message = new Message(text, tag);
//
//        messageRepo.save(message);
//
//        Iterable<Message> messages = messageRepo.findAll();
//
//        model.put("messages", messages);
//
//        return "main";
//    }
}