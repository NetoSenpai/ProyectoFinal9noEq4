
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
SDL_PATH:= ../sdl2

LOCAL_CFLAGS := -std=c++11
LOCAL_MODULE:= nativeegl
LOCAL_SRC_FILES:= jniapi.cpp renderer.cpp stage.cpp Game.cpp main.cpp Nave.cpp OpenGLImplement.cpp Sprite.cpp SpriteDef.cpp
LOCAL_CFLAGS    := -Wall
LOCAL_C_INCLUDES := $(LOCAL_PATH)/$(SDL_PATH)/include
LOCAL_LDLIBS := -llog -landroid -lEGL -lGLESv1_CM
LOCAL_STATIC_LIBRARIES: android_native_app_glue

include $(BUILD_SHARED_LIBRARY)

