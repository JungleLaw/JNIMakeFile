//
// Created by Jungle on 2017/8/21.
//
#include "jni.h"

#ifndef JNIMAKEFILE_HELLO_H
#define JNIMAKEFILE_HELLO_H

/*
 * Class:     com_law_jnimakefile_jni_Hello
 * Method:    sayHello
 * Signature: ()Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_com_law_jnimakefile_jni_Hello_sayHello
        (JNIEnv *jniEnv, jclass jclazz);

#endif JNIMAKEFILE_HELLO_H
