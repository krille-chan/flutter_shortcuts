plugins {
    id("com.android.library")
}

group = "im.fluffychat.flutter_shortcuts_new"
version = "1.0"

android {
    namespace = "im.fluffychat.flutter_shortcuts_new"
    compileSdk = 36

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    defaultConfig {
        minSdk = 21
    }
}

dependencies {
    implementation("androidx.core:core:1.13.1")
    implementation("androidx.core:core-google-shortcuts:1.1.0")
}
