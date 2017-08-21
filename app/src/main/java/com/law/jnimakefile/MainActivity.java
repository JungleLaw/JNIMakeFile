package com.law.jnimakefile;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.TextView;
import android.widget.Toast;

import com.law.jnimakefile.jni.Hello;
import com.law.jnimakefile.jni.Second;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        ((TextView) findViewById(R.id.text)).setText(Hello.sayHello());
        Toast.makeText(this, Second.saySecondWords(), Toast.LENGTH_SHORT).show();
    }
}
