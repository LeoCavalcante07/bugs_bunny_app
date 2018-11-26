package br.com.senaijandira.bugsbunnyapp.presenter;

import android.util.Log;

import java.util.List;

import br.com.senaijandira.bugsbunnyapp.adapter.ConteudoCelebridadeAdapter;
import br.com.senaijandira.bugsbunnyapp.model.ConteudoCelebridade;

import br.com.senaijandira.bugsbunnyapp.service.UsuarioService;
import br.com.senaijandira.bugsbunnyapp.view.ConteudoCelebridadeView;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class ConteudoCelebridadePresenter {
    List<ConteudoCelebridade> cc;

    ConteudoCelebridadeView view;

    UsuarioService service;

    public ConteudoCelebridadePresenter(UsuarioService service, ConteudoCelebridadeView view){
        this.service = service;
        this.view = view;
    }

    public void pegarInformaoes(){


        Call<List<ConteudoCelebridade>> call = service.preencherConteudoCelebridade();

        call.enqueue(new Callback<List<ConteudoCelebridade>>() {
            @Override

            public void onResponse(Call<List<ConteudoCelebridade>> call, Response<List<ConteudoCelebridade>> response) {
                cc = response.body();
                Log.d("leo", cc.get(0).getTitulo());

                view.preencherTela(cc);

            }

            @Override
            public void onFailure(Call<List<ConteudoCelebridade>> call, Throwable t) {
                Log.d("errou", t.getMessage());
            }
        });
    }

}
