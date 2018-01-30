package com.lke.jpa.entities

import java.time.Instant

data class Tweet (
        val id: Integer,
        val message: String,
        val comment: String,
        val createdAt: Instant = Instant.EPOCH,
        val updatedAt: Instant = Instant.EPOCH,
        val user: User
)
