package br.com.senaijandira.bugsbunnyapp.presenter;

import java.util.List;

import br.com.senaijandira.bugsbunnyapp.model.ConteudoCelebridade;
import br.com.senaijandira.bugsbunnyapp.service.ConteudoCelebridadeService;
import br.com.senaijandira.bugsbunnyapp.view.ConteudoCelebridadeView;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class ConteudoCelebridadePresenter {

    ConteudoCelebridadeView view;

    ConteudoCelebridadeService service;

    public ConteudoCelebridadePresenter(ConteudoCelebridadeService service, ConteudoCelebridadeView view){
        this.service = service;
        this.view = view;
    }

    public void pegarInformaoes(){
        service.obterConteudoCelebridade().enqueue(new Callback<List<ConteudoCelebridade>>() {
            @Override
            public void onResponse(Call<List<ConteudoCelebridade>> call, Response<List<ConteudoCelebridade>> response) {

            }

            @Override
            public void onFailure(Call<List<ConteudoCelebridade>> call, Throwable t) {

            }
        });
    }

}
