package br.com.senaijandira.bugsbunnyapp.service;

import java.util.List;

import br.com.senaijandira.bugsbunnyapp.model.ConteudoCelebridade;
import retrofit2.Call;
import retrofit2.http.GET;

public interface ConteudoCelebridadeService {

    String URL_BASE = "http://10.0.2.2:5001/";

    @GET("/conteudoCelebridade")
    Call<List<ConteudoCelebridade>> obterConteudoCelebridade();





}
