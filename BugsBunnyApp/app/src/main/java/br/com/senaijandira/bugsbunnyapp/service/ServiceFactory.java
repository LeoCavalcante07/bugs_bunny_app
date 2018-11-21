package br.com.senaijandira.bugsbunnyapp.service;

import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

public class ServiceFactory {

    /*public static AlunoService create(){
        Retrofit retrofit = new Retrofit.Builder()
                .baseUrl(AlunoService.URL_BASE)
                .addConverterFactory(GsonConverterFactory.create())
                .build();

        return retrofit.create(AlunoService.class);*/


        public static UsuarioService create(){
                Retrofit retrofit = new Retrofit.Builder().baseUrl(UsuarioService.URL_BASE).addConverterFactory(GsonConverterFactory.create()).build();

                return retrofit.create(UsuarioService.class);
        }

}
