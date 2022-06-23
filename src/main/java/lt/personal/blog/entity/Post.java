package lt.personal.blog.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Getter
@Setter
@NoArgsConstructor
@Table(name = "posts")
public class Post {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  Long id;

    @Column(name="title")
    private String title;

    @Column(name="post_text")
    private String postText;

    @Column(name="propose_to_delete")
    private boolean proposeToDelete;

    @Column(name="post_time")
    private LocalDateTime postTimeStamp;

    @Column(name="posted_ip")
    private String postIp;

    @Column(name="admin_locked")
    private boolean postLockedByAdmin;

    @Column(name="comments_locked")
    private boolean commentsLocked;

    @Column(name="author_id")
    private Long authorId;

}
