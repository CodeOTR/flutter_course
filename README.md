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

https://github.com/marketplace/actions/flutter-action

`flutter --version`

Use version in flutter-action:

```agsl
      - uses: subosito/flutter-action@v2
        with:
          flutter-version: '3.13.6'
          channel: 'stable'
      - run: flutter pub get
      - run: flutter build web --dart-define=environment=production
```

.Create 2 files in .github/workflows
- firebase-hosting-staging.yml
- firebase-hosting-production.yml
update trigger branches and --dart-define environment variable

update `firebase.json` source:
```agsl
{
  "hosting": {
    "source": "build/web",
    "ignore": [
      "firebase.json",
      "**/.*",
      "**/node_modules/**"
    ],
    "frameworksBackend": {
      "region": "us-east1"
    }
  }
}
```

ERROR: Cannot deploy a web framework from source because the experiment

(fix)[https://stackoverflow.com/questions/74426925/how-can-run-firebase-experimentsenable-webframeworks-with-github-actions]

```agsl
firebase experiments:enable webframeworks
```

Create staging and production branches

Push changes to GitHub staging => GitHub Action will deploy to Firebase Hosting Staging

Push changes to GitHub production => GitHub Action will deploy to Firebase Hosting Production





