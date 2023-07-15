plugins {
    java
    kotlin("jvm") version "1.6.10"
    id ("org.jetbrains.kotlin.plugin.spring") version "1.6.10"
    id("org.springframework.boot") version "2.7.3"
    id("com.vaadin") version "23.3.6"
    id("io.spring.dependency-management") version "1.0.6.RELEASE"
}

group = "ru.vinorate"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
}

dependencies {
    implementation(kotlin("stdlib"))
    runtimeOnly("org.jetbrains.kotlin:kotlin-reflect:1.6.10")
    implementation("org.postgresql:postgresql:42.5.4")
    implementation("org.springframework.data:spring-data-relational")
    implementation("org.springframework.data:spring-data-jpa")
    implementation("org.springframework.boot:spring-boot-starter-data-jpa")
    implementation("com.codeborne:selenide:6.7.2")
//    implementation("org.springframework.boot:spring-boot-starter-security")
    implementation("org.modelmapper:modelmapper:3.1.1")
    implementation("org.springframework:spring-webmvc")
    implementation("org.springframework.boot:spring-boot-starter-web")
    implementation("javax.xml.bind:jaxb-api:2.3.1")
    implementation("com.vaadin:vaadin-spring-boot-starter:23.3.6")
    implementation("com.vaadin:vaadin-bom:23.3.6")
    testImplementation("junit", "junit", "4.12")
}
tasks.named<org.springframework.boot.gradle.tasks.bundling.BootJar>("bootJar") {
    destinationDirectory.set(file("${project.projectDir}/src/main/kotlin/ru/vinorate/docker"))
}
vaadin{
    productionMode=true
}

task<Exec>("dumpDb") {
    commandLine("docker", "exec", "-t", "db", "pg_dump", "-U", "postgres", "vinorate", "-f", "/var/lib/postgresql/data/dump.sql")
}
