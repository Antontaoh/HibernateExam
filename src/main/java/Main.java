import models.Film;
import models.Opinion;
import service.DataService;

public class Main {
    public static void main(String[] args) {
        var dataService = new DataService(HibernateUtil.getSessionFactory());
        var newFilm = new Film();
        String email = "user1@example.com";
        var newOp = new Opinion();

        //Registro de nuevas peliculas
        dataService.saveFilm(newFilm);

        //Obtener opiniones de un usuario específico
        System.out.println(dataService.getOpinions(email));

        //Añadir a una película ya existente previamente
        dataService.saveOpinion(newFilm, newOp);

        //Listado de películas con baja puntuación
        System.out.println(dataService.getLowScoreFilms());


    }
}
