//
// Created by Jungle on 2017/8/21.
//
#include "jni.h"

#ifndef JNIMAKEFILE_SECOND_LIB_H
#define JNIMAKEFILE_SECOND_LIB_H
/*
 * Class:     com_law_jnimakefile_jni_Second
 * Method:    saySecondWords
 * Signature: ()Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_com_law_jnimakefile_jni_Second_saySecondWords
        (JNIEnv *, jclass);
#endif //JNIMAKEFILE_SECOND_LIB_H
