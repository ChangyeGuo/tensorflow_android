# tensorflow_android
##Decoupled Tensorflow Android demo

This bazel project is the [Tensorflow Android demo](https://github.com/tensorflow/tensorflow/tree/0.12.0-rc1/tensorflow/examples/android) which comes bundled with Tensorflow source. It has been decoupled from Tensorflow source, so it can be used as a template for Tensorflow based Android projects. The bazel build automatically downloads and builds Tensorflow source.
Follow these steps to get going:

### 1. Tensorflow version
In **WORKSPACE** file, update **tag** under org_tensorflow **_git_repository_**.
### 2. Android SDK and NDK
In **WORKSPACE** file, update the **path** and **api_level** under **_android_sdk_repository_** and **_android_ndk_repository_** to match yours.
### 3. Build
Invoke build using following command

```bazel build //android:tensorflow_demo```
