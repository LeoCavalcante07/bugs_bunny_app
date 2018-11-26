package br.com.senaijandira.bugsbunnyapp.activity;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;

import br.com.senaijandira.bugsbunnyapp.R;
import br.com.senaijandira.bugsbunnyapp.model.ConteudoCelebridade;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        Window window = getWindow();
        window.setFlags(WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS, WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS);

    }

    public void irCelebridade(View view) {
        startActivity(new Intent(this, ConteudoCelebridadeActivity.class));
    }
}
