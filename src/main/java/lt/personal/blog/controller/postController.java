package lt.personal.blog.controller;

import lombok.extern.slf4j.Slf4j;
import lt.personal.blog.entity.Post;
import lt.personal.blog.service.PostService;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Arrays;
import java.util.List;

@Slf4j
@Controller
@RequestMapping(path="/post")
public class postController {

    private PostService postService;

    public postController(PostService postService) {
        this.postService = postService;
    }


    @GetMapping("/list")
    public String getPostList(
            @RequestParam(name = "page", defaultValue = "1") int pageNumber,
            @RequestParam(name = "per-page", defaultValue = "4") int postsPerPage,
            Model model) {

        Page<Post> postPage = postService.findAllPageable(postsPerPage, pageNumber-1);
        List<Post> posts = postPage.getContent();
        model.addAttribute("posts", posts);
        model.addAttribute("currentPage", pageNumber);
        model.addAttribute("totalPages", postPage.getTotalPages());
        model.addAttribute("totalElements", postPage.getTotalElements());
        model.addAttribute("pageElements", postPage.getNumberOfElements());
        model.addAttribute("perPage", postsPerPage);
        return "postList";
    }

}
