package com.example.testlibrary

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform