# Basic Steps

## Flutter Setup

flutter create flutter_course --empty --org=com.cotr

install firebase_core

## Firebase Setup

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

Add production project with alias (https://firebase.google.com/docs/cli#project_aliases):
```agsl
firebase use --add

? Which project do you want to add? flutter-course-production
? What alias do you want to use for this project? (e.g. staging) production

```

>You can associate multiple Firebase projects with the same project directory. For example, you might want to use one Firebase project for staging and another for production. By using different project environments, you can verify changes before deploying to production. The firebase use command allows you to switch between aliases as well as create new aliases.

Run `firebase use` to see active project.

Run `firebase use production` to switch to production project.

To create Production service account:
1. firebase use production
2. firebase init hosting:github (https://firebase.google.com/docs/hosting/github-integration#set-up)

## GitHub Action Setup

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

Make sure "public" is set to "build/web" in firebase.json (https://github.com/firebase/firebase-tools/issues/6085#issuecomment-1679592277):
```agsl
{
  "hosting": {
    "public": "build/web",
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

https://firebase.google.com/docs/hosting/frameworks/frameworks-overview

https://stackoverflow.com/questions/74426925/how-can-run-firebase-experimentsenable-webframeworks-with-github-actions

```agsl
firebase experiments:enable webframeworks
```

Create staging and production branches

Push changes to GitHub staging => GitHub Action will deploy to Firebase Hosting Staging

Push changes to GitHub production => GitHub Action will deploy to Firebase Hosting Production

