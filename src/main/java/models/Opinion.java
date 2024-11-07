package models;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "opinion")
public class Opinion {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @JoinColumn(name = "descripcion")
    private String description;

    @JoinColumn(name = "usuario")
    private String email;

    @JoinColumn(name = "puntuacion")
    private int score;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "pelicula_id")
    private Film film;

    public Opinion(Long id, String description, String email, int score, Film film) {
        this.id = id;
        this.description = description;
        this.email = email;
        this.score = score;
        this.film = film;
    }

    public Opinion() {
    }
}
