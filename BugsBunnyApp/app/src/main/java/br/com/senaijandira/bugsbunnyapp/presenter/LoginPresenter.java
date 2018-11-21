package br.com.senaijandira.bugsbunnyapp.presenter;

import android.util.Log;

import br.com.senaijandira.bugsbunnyapp.model.Usuario;
import br.com.senaijandira.bugsbunnyapp.service.UsuarioService;
import br.com.senaijandira.bugsbunnyapp.view.LoginView;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class LoginPresenter {

    UsuarioService uService;
    LoginView view;

    public LoginPresenter(UsuarioService uService, LoginView view){
        this.uService = uService;
        this.view = view;
    }

    public void mandarParaLogin(String email, String senha){

        uService.logar(email, senha)

                .enqueue(new Callback<Usuario>() {
                    @Override
                    public void onResponse(Call<Usuario> call, Response<Usuario> response) {
                       /* if(){
                            view.logou();
                        }else{
                            view.naoLogou();
                        }*/

                        view.logou();

                    }

                    @Override
                    public void onFailure(Call<Usuario> call, Throwable t) {
                        view.naoLogou();
                        Log.e("ERRO_API", t.getMessage());
                    }
                });

    }

}
