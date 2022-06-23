package lt.personal.blog.entity;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Setter
@Getter
@NoArgsConstructor
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  Long id;

    @Column(name="user_name",unique = true)
    private String username;

    @Column(name="password")
    private String password;

    @Column(name="last_ip")
    private String lastIp;

    @Column(name="account_non_locked")
    private Boolean accountNonLocked;

    @Column(name="last_login_time")
    private LocalDateTime lastLoginTime;

    @Column(name="name")
    private String name;

    @Column(name="surname")
    private String surname;

    @Column(name="email")
    private String email;

    @Column(name="hostname")
    private String hostName;

    public Long getId() {
        return id;
    }

}
