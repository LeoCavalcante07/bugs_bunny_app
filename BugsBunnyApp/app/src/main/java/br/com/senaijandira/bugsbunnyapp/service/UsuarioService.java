package br.com.senaijandira.bugsbunnyapp.service;

import java.util.List;

import br.com.senaijandira.bugsbunnyapp.model.ApiResult;
import br.com.senaijandira.bugsbunnyapp.model.Usuario;
import retrofit2.Call;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Path;

public interface UsuarioService {

    String URL_BASE = "http://10.0.2.2:5001/";

    @GET("/usuarios")
    Call<List<Usuario>> obterUsuarios();

    @GET("/usuario/{id}")
    Call<Usuario> obterUsuarioPorid(@Path("id") int id);

    @FormUrlEncoded
    @POST("/logar")
    Call<Usuario> logar(@Field("email") String email, @Field("senha") String senha);

    @GET("/deleteUsuario/{id}")
    Call<ApiResult> deletarUsuario(@Path("id") int id);




}
