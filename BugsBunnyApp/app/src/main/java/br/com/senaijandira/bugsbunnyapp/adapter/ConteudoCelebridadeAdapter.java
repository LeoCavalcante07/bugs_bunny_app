package br.com.senaijandira.bugsbunnyapp.adapter;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.squareup.picasso.Picasso;

import java.util.List;

import br.com.senaijandira.bugsbunnyapp.R;
import br.com.senaijandira.bugsbunnyapp.model.ConteudoCelebridade;

public class ConteudoCelebridadeAdapter extends ArrayAdapter<ConteudoCelebridade> {

    public ConteudoCelebridadeAdapter(Context contexto, List<ConteudoCelebridade> listaConteudo){
        super(contexto, 0, listaConteudo);
    }


    @NonNull
    @Override
    public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {
        View view = convertView;

        if(position % 2 == 0){
            if(view == null){
                view = LayoutInflater.from(getContext()).inflate(R.layout.conteudo_celebridade_layout, parent, false);
            }

            ConteudoCelebridade cc = getItem(position);

            ImageView imgCC = view.findViewById(R.id.imgCC);
            TextView txtTextoCC = view.findViewById(R.id.txtTextoCC);
            TextView txtTituloCC = view.findViewById(R.id.txtTituloCC);


            //String urlImagem = "http:10.0.2.2/Leonardo/bugsBunny/CMS/"+cc.getFoto();
            String urlImagem = "http:10.0.2.2/inf3m20182/TURMAB/Leonardo/PROJETO/modulo_2/CMS/"+cc.getFoto();

            Picasso.get().load(urlImagem).into(imgCC);
            txtTextoCC.setText(cc.getTexto());
            txtTituloCC.setText(cc.getTitulo());
        }else{
            if(view == null){
                view = LayoutInflater.from(getContext()).inflate(R.layout.conteudo_celebridade_layout2, parent, false);
            }

            ConteudoCelebridade cc = getItem(position);

            ImageView imgCC = view.findViewById(R.id.imgCC2);
            TextView txtTextoCC = view.findViewById(R.id.txtTextoCC2);
            TextView txtTituloCC = view.findViewById(R.id.txtTituloCC2);


            //String urlImagem = "http:10.0.2.2/leonardo/bugsBunny/modulo_2/CMS/"+cc.getFoto();
            String urlImagem = "http:10.0.2.2/inf3m20182/TURMAB/Leonardo/PROJETO/modulo_2/CMS/"+cc.getFoto();
            Picasso.get().load(urlImagem).into(imgCC);
            txtTextoCC.setText(cc.getTexto());
            txtTituloCC.setText(cc.getTitulo());
        }

        return view;

    }
}
