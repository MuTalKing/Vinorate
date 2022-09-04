plugins {
    java
    kotlin("jvm") version "1.5.31"
}

group = "ru.vinorate"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
}

dependencies {
    implementation(kotlin("stdlib"))
    implementation("org.postgresql:postgresql:42.2.19")
    implementation("org.springframework.data:spring-data-relational:2.4.2")
    implementation("org.springframework.data:spring-data-jpa:2.7.2")
    implementation("org.springframework.boot:spring-boot-starter-data-jpa:2.7.2")
    implementation("com.codeborne:selenide:6.7.2")
    testCompile("junit", "junit", "4.12")
}
