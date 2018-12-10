package br.com.senaijandira.bugsbunnyapp.presenter;

import android.util.Log;

import br.com.senaijandira.bugsbunnyapp.model.ApiResult;
import br.com.senaijandira.bugsbunnyapp.model.Usuario;
import br.com.senaijandira.bugsbunnyapp.service.UsuarioService;
import br.com.senaijandira.bugsbunnyapp.view.LoginView;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class LoginPresenter {

    ApiResult apiResult;
    UsuarioService uService;
    LoginView view;

    public LoginPresenter(UsuarioService uService, LoginView view){
        this.uService = uService;
        this.view = view;
    }

    public void mandarParaLogin(String email, String senha){

        uService.logar(email, senha)

                .enqueue(new Callback<ApiResult>() {
                    @Override
                    public void onResponse(Call<ApiResult> call, Response<ApiResult> response) {

                        apiResult = response.body();
                        if(!apiResult.isSucesso()){
                            view.usuarioIncorreto();
                        }else{

                            view.logou();
                        }



                    }

                    @Override
                    public void onFailure(Call<ApiResult> call, Throwable t) {
                        view.logou();
                        Log.e("ERRO_API", t.getMessage());
                    }
                });

    }

}
