# entrando

Proyecto para aprendizaje y configuración de la etapa de login de apps con Firebase

## Comenzando


 - Realizar el paso a paso para agregar la app en la consola de Firebase_
 en este caso es: https://console.firebase.google.com/project/entrando-9aac5/overview

 - Generar las claves SHA1 y SHA256 con la herramienta existente en el path de Android
 ''' ./gradlew signingReport '''
 copiarlas en la configuracion de la app en firebase

 - Generar el archivo google-services.json y copiarlo en el path
 android/app

 - En android/app/build.gradle poner:
 // ADD for Xlint error
        multiDexEnabled true
    en la el json path android { defaultConfig { < aca >}}

- modificar el archivo settings.gradle en la carpeta android incorporando el texto 
sugerido en: ttps://github.com/FirebaseExtended/flutterfire/issues/2599

- Agregar en el archivo pubspec.yaml las dependencias de todos los servicios de firestore

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
