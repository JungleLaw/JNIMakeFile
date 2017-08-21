//
// Created by Jungle on 2017/8/21.
//

#include "second-lib.h"

/*
 * Class:     com_law_jnimakefile_jni_Second
 * Method:    saySecondWords
 * Signature: ()Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_com_law_jnimakefile_jni_Second_saySecondWords
        (JNIEnv *jniEnv, jclass jclazz) {
    return (*jniEnv)->NewStringUTF(jniEnv, "World");
}