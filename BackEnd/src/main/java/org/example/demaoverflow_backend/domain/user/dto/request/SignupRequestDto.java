package org.example.demaoverflow_backend.domain.user.dto.request;

public record SignupRequestDto(
        String username,
        String password,
        String nickname,
        String state,
        String location,
        int age
) {
}
