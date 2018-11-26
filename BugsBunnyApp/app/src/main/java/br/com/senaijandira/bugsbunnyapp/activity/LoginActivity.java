package br.com.senaijandira.bugsbunnyapp.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;

import br.com.senaijandira.bugsbunnyapp.R;
import br.com.senaijandira.bugsbunnyapp.presenter.LoginPresenter;
import br.com.senaijandira.bugsbunnyapp.service.ServiceFactory;
import br.com.senaijandira.bugsbunnyapp.view.LoginView;

public class LoginActivity extends Activity implements LoginView{

    LoginPresenter presenter;


    EditText edUsuario;
    EditText edSenha;

    Button btnLogar;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);

        Window window = getWindow();
        window.setFlags(WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS, WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS);

        presenter = new LoginPresenter(ServiceFactory.create(), this);

        edUsuario = findViewById(R.id.edUsuario);
        edSenha = findViewById(R.id.edSenha);
        btnLogar = findViewById(R.id.btnLogar);

        btnLogar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                String usuario = edUsuario.getText().toString();
                String senha = edSenha.getText().toString();

                //Log.d("usuario", usuario);
                //Log.d("senha", senha);

                presenter.mandarParaLogin(usuario, senha);
            }
        });
    }

    @Override
    public void logou() {
        startActivity(new Intent(this, MainActivity.class));
    }

    @Override
    public void naoLogou() {
        startActivity(new Intent(this, ErroConexaoActivity.class));

    }
}
