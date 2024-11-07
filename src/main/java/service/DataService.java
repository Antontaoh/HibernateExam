package service;

import models.Film;
import models.Opinion;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;

public class DataService {

    private SessionFactory sessionFactory;

    public DataService(SessionFactory sessionFactory){
        this.sessionFactory = sessionFactory;
    }

    public void saveFilm(Film film){
        sessionFactory.inTransaction(session -> {
            session.persist(film);
        });
    }

    public List<Opinion> getOpinions(String email){
        List<Opinion> opinions;
        try (Session session = sessionFactory.openSession()) {
            Query<Opinion> q = session.createQuery("from Opinion op where op.email =: email",Opinion.class);
            q.setParameter("hemisferio", email);
            opinions = q.list();
        }catch (Exception e){
            opinions = new ArrayList<>(0);
        }
        return opinions;
    }

    public void saveOpinion(Film film, Opinion op){
        sessionFactory.inTransaction(session -> {
            film.addOpinion(op);
        });
    }

    public List<Film> getLowScoreFilms() {
        List<Film> films;
        try (Session session = sessionFactory.openSession()) {
            Query<Film> q = session.createQuery(
                    "SELECT f FROM Film f INNER JOIN f.opinions o WHERE o.score <= :score",
                    Film.class
            );
            q.setParameter("score", 3);
            films = q.list();
        } catch (Exception e) {
            films = new ArrayList<>(0);
        }
        return films;
    }
}
