
# Flutter Monorepo
Monorepo con flutter

[![melos](https://img.shields.io/badge/maintained%20with-melos-f700ff.svg?style=flat-square)](https://github.com/invertase/melos)

## Instalación
* Instalar flutter: [get started](https://docs.flutter.dev/get-started/install)

Activar [Melos](https://pub.dev/packages/melos)
```bash
  dart pub global activate melos
```

Instalar paquetes
```bash
   melos bootstrap
```
## Deployment
Para ejectuar la aplicación basta con:

```bash
  cd apps/counter_app && flutter run
```


## Running Tests

Para ejecutar los test usar:

```bash
  melos test
```

Por package:

* App
```bash
  cd apps/counter_app && flutter test
```

* Application
```bash
  cd packages/application && flutter test
```

* Presentation
```bash
  cd packages/presentation && flutter test
```
## Demo
![final image](media/Screenshot_1661967731.png)
![demo gif](media/untitled.gif)
