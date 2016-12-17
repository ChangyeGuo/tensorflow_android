workspace(name = "tf_android")

git_repository(
     name = "org_tensorflow",
     remote = "https://github.com/tensorflow/tensorflow.git",
     tag = "0.12.0-rc1"
 )
 
 
load('//android:workspace.bzl', 'android_workspace')
android_workspace()

 # Specify the minimum required bazel version.
load("@org_tensorflow//tensorflow:tensorflow.bzl", "check_version")
check_version("0.3.1")


android_sdk_repository(
    name = "androidsdk",
    api_level = 25,
    build_tools_version = "25.0.1",
    # Replace with path to Android SDK on your system
    path = "/Users/devin/Library/Android/sdk",
)

android_ndk_repository(
    name="androidndk",
    path="/Users/devin/Library/Android/sdk/ndk-bundle",
    api_level=21)
    
    
new_http_archive(
  name = "inception5h",
  build_file = "android/models.BUILD",
  url = "https://storage.googleapis.com/download.tensorflow.org/models/inception5h.zip",
  sha256 = "d13569f6a98159de37e92e9c8ec4dae8f674fbf475f69fe6199b514f756d4364"
)

new_http_archive(
  name = "mobile_multibox",
  build_file = "android/models.BUILD",
  url = "https://storage.googleapis.com/download.tensorflow.org/models/mobile_multibox_v1.zip",
  sha256 = "b4c178fd6236dcf0a20d25d07c45eebe85281263978c6a6f1dfc49d75befc45f"
)