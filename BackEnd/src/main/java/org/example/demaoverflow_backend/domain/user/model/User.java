package org.example.demaoverflow_backend.domain.user.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import lombok.Builder;
import lombok.Data;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

@Data
@Entity
@DynamicInsert
@DynamicUpdate
public class User {
    @Id
    @GeneratedValue
    @Column(nullable = false)
    long userId;

    @Column(nullable = false, length = 20)
    String username;

    @Column(nullable = false)
    String password;

    @Column(nullable = false)
    String nickname;

    @Column(nullable = false)
    String location;

    @Column(nullable = false)
    String state;

    @Column(nullable = false)
    int age;

    protected User() {}

    @Builder
    public User(String username, String password, String nickname, String location, String state, int age) {
        this.username = username;
        this.password = password;
        this.nickname = nickname;
        this.location = location;
        this.state = state;
        this.age = age;
    }
}
