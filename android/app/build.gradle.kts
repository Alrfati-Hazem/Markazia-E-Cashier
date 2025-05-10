plugins {
    id("com.android.application")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.markazia.ecashier.ecashier"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = "27.0.12077973"

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.markazia.ecashier.ecashier"
        minSdk = 23
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }

    flavorDimensions += "default"
    productFlavors {
        create("dev") {
            dimension = "default"
            resValue(type = "string", name = "app_name", value = "E-Cashier Dev")
            applicationIdSuffix = ".dev"
        }
        create("stage") {
            dimension = "default"
            resValue(type = "string", name = "app_name", value = "E-Cashier Stage")
            applicationIdSuffix = ".stg"
        }
        create("prod") {
            dimension = "default"
            resValue(type = "string", name = "app_name", value = "E-Cashier")
        }
    }
}

flutter {
    source = "../.."
}
