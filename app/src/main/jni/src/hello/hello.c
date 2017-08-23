//
// Created by Jungle on 2017/8/21.
//

#include "hello.h"

/*
 * Class:     com_law_jnimakefile_jni_Hello
 * Method:    sayHello
 * Signature: ()Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL
Java_com_law_jnimakefile_jni_Hello_sayHello(JNIEnv *jniEnv, jclass jclazz) {
    return (*jniEnv)->NewStringUTF(jniEnv, "Hello world from Law!");
}