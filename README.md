# Basic Steps

flutter create flutter_course --empty --org=com.cotr

install firebase_core

Create Staging Firebase project

Save project ID

Create Staging Firebase project

Save project ID

https://firebase.flutter.dev/docs/overview/

flutterfire configure -p flutter-course-staging -o lib/config/firebase_options_staging.dart

flutterfire configure -p flutter-course-production -o lib/config/firebase_options_production.dart

```
String environment = const String.fromEnvironment('environment');
```

firebase init

Hosting: Configure files for Firebase Hosting and (optionally) set up GitHub Action deploys

Use an existing project

=== Hosting Setup
? Detected an existing Flutter Web codebase in the current directory, should we use this? Yes
? In which region would you like to host server-side content, if applicable? us-east1 (South Carolina)
? Set up automatic builds and deploys with GitHub? Yes

Enable Firebase CLI access in GitHub

? Set up the workflow to run a build script before every deploy? Yes
? What script should be run before every deploy? flutter build web





