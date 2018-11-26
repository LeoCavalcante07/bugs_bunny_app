package br.com.senaijandira.bugsbunnyapp.activity;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ListView;

import java.util.ArrayList;
import java.util.List;

import br.com.senaijandira.bugsbunnyapp.R;
import br.com.senaijandira.bugsbunnyapp.adapter.ConteudoCelebridadeAdapter;
import br.com.senaijandira.bugsbunnyapp.model.ConteudoCelebridade;
import br.com.senaijandira.bugsbunnyapp.presenter.ConteudoCelebridadePresenter;

import br.com.senaijandira.bugsbunnyapp.service.ServiceFactory;
import br.com.senaijandira.bugsbunnyapp.service.UsuarioService;
import br.com.senaijandira.bugsbunnyapp.view.ConteudoCelebridadeView;

public class ConteudoCelebridadeActivity extends Activity implements ConteudoCelebridadeView{

    ListView lstConteudoCelebridade;
    ConteudoCelebridadePresenter presenter;
    UsuarioService service;

    ConteudoCelebridadeAdapter adapter;


    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_celebridades);
        Window window = getWindow();
        window.setFlags(WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS, WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS);

        lstConteudoCelebridade = findViewById(R.id.lstConteudoCelebridade);

        service = ServiceFactory.create();



        presenter = new ConteudoCelebridadePresenter(service, this);





    }


    @Override
    protected void onResume() {
        super.onResume();

        presenter.pegarInformaoes();
    }

    @Override
    public void preencherTela(List<ConteudoCelebridade> cc) {
        adapter = new ConteudoCelebridadeAdapter(this, cc);
        //adapter.addAll(cc);
        lstConteudoCelebridade.setAdapter(adapter);

    }
}
