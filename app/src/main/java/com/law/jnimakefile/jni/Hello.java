package com.law.jnimakefile.jni;

/**
 * Created by Jungle on 2017/8/21.
 */

public class Hello {
    static {
        System.loadLibrary("hello");
    }

    public static native String sayHello();
}
