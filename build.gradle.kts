plugins {
    java
    kotlin("jvm") version "1.6.10"
    id("org.springframework.boot") version "2.7.3"
    id("com.vaadin") version "23.3.6"
}

group = "ru.vinorate"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
}

dependencies {
    implementation(kotlin("stdlib"))
    runtimeOnly("org.jetbrains.kotlin:kotlin-reflect:1.6.10")
    implementation("org.postgresql:postgresql:42.2.19")
    implementation("org.springframework.data:spring-data-relational:2.4.2")
    implementation("org.springframework.data:spring-data-jpa:2.7.2")
    implementation("org.springframework.boot:spring-boot-starter-data-jpa:2.7.2")
    implementation("com.codeborne:selenide:6.7.2")
    implementation("org.modelmapper:modelmapper:3.1.0")
    implementation("org.springframework:spring-webmvc:5.3.22")
    implementation("org.springframework.boot:spring-boot-starter-web:2.7.3")
    implementation("javax.xml.bind:jaxb-api:2.3.1")
    implementation("com.vaadin:vaadin-spring-boot-starter:23.3.6")
    implementation("com.vaadin:vaadin-bom:23.3.6")
    testCompile("junit", "junit", "4.12")
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
