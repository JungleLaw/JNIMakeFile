package com.law.jnimakefile.jni;

/**
 * Created by Jungle on 2017/8/21.
 */

public class Second {
    static {
        System.loadLibrary("second");
    }

    public static native String saySecondWords();
}
