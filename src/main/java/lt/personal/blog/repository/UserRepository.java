package lt.personal.blog.repository;

import lt.personal.blog.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public  interface UserRepository extends JpaRepository<User,Long> {
}
