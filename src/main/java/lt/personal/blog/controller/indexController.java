package lt.personal.blog.controller;

import lombok.extern.slf4j.Slf4j;
import lt.personal.blog.service.PostService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@Controller
@RequestMapping(path="/")
public class indexController {
    private PostService postService;

    public indexController(PostService postService) {
        this.postService = postService;
    }

    @GetMapping
    public String getIndex(){
        return "index";
    }

}
