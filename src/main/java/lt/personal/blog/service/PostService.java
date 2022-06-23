package lt.personal.blog.service;

import lt.personal.blog.entity.Post;
import lt.personal.blog.repository.PostRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

@Service
public class PostService {
    private final PostRepository postRepository;

    public PostService(PostRepository postRepository) {
        this.postRepository = postRepository;
    }

    public Page<Post> findAllPageable(int pageSize, int pageNumber) {
        Page<Post> posts;
        Pageable pageable = PageRequest.of(pageNumber, pageSize, Sort.by("postTimeStamp").descending());
        posts = postRepository.findByPostLockedByAdminFalsePageable(pageable);
        return posts;
    }


}
