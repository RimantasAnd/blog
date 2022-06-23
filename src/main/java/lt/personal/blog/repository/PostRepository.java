package lt.personal.blog.repository;

import lt.personal.blog.entity.Post;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface PostRepository extends JpaRepository<Post,Long> {
    @Query("select p from Post p where p.postLockedByAdmin = false")
    Page<Post> findByPostLockedByAdminFalsePageable(Pageable pageable);

}
