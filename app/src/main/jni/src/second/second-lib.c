//
// Created by Jungle on 2017/8/21.
//

#include "second-lib.h"
#include "include/md5_encrypt.h"

/*
 * Class:     com_law_jnimakefile_jni_Second
 * Method:    saySecondWords
 * Signature: ()Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_com_law_jnimakefile_jni_Second_saySecondWords
        (JNIEnv *jniEnv, jclass jclazz) {
//    return (*jniEnv)->NewStringUTF(jniEnv, "World");
    return (*jniEnv)->NewStringUTF(jniEnv, encrypt("Hlo"));

}