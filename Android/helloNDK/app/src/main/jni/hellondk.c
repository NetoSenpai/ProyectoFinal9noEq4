#include <jni.h>
#include <com_senpaigmail_neto_hellondk_MainActivity.h>

jstring JNICALL Java_com_senpaigmail_neto_hellondk_MainActivity_getStringFromJNI(JNIEnv *env, jobject obj)
{
    return (*env)->NewStringUTF(env, "Hello from NDK! Geeky Theory Rules");
}
