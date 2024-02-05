# flutter_sonner

A Flutter plugin providing an opinionated toast component inspired by the [sonner](https://sonner.emilkowal.ski/) component made for React by [Emil](https://twitter.com/emilkowalski_).

## Benefits/Perks

- Easy-to-use API for displaying toast messages
- Customizable toast types, positions, and more
- Satisfying and intuitive user experience

## Getting started

To start using **flutter_sonner**, add it to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_sonner: ^1.0.0
```

### Optionally
Run the command below in your terminal and it will automatically add it to your pubspec.yaml

```
flutter pub add flutter_sonner
```

Import Flutter Sonner as a package/library in your app:

```bash
import 'package:flutter_sonner/flutter_sonner.dart';
```

Render the toaster in the root of your app:

```Dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Toaster(),
              ElevatedButton(
                onPressed: () => toast('My first toast'),
                child: Text('Give me a toast'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

### Display a simple toast message:

```Dart

toast('Event has been created');

```

### Customize the type of toast and pass options:

```Dart

toast('Event has been created', type: ToastType.success);

```

### Change the position of the toaster:
```Dart

Toaster(position: ToastPosition.bottomRight);

```

### Disable toast expansion:

```Dart

Toaster(expand: false);

```

### Create custom toast messages:

```Dart

toast.custom((t) => (
  Container(
    padding: EdgeInsets.all(16.0),
    color: Colors.blue,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text('Custom toast', style: TextStyle(color: Colors.white)),
        ElevatedButton(
          onPressed: () => toast.dismiss(t),
          child: Text('Dismiss'),
        ),
      ],
    ),
  )
));
```


## Additional information

For those who want to make contributions information, Read the Contributors.md and the License.md [GitHub repository](https://github.com/Samsonroyal/flutter_sonner/) or refer to the [documentation](https://github.com/Samsonroyal/flutter_sonner/docs).

To contribute to the package or report issues, visit the [GitHub repository](https://github.com/Samsonroyal/flutter_sonner/issues). We welcome your feedback and contributions!

For further details on how **flutter_sonner** was developed and why, you can read the [blog post](https://medium.com/@weresamson).

## Contributors

I am working on this plugin with my mentor [Bright Kwame](https://github.com/bright2kwame) and hope the community grows bigger with more usage then contribution too

