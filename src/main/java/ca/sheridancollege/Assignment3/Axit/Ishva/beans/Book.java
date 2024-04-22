package ca.sheridancollege.Assignment3.Axit.Ishva.beans;


import java.util.List;
import lombok.Data;
@Data
public class Book {
    private Long id;
    private String title;
    private String author;

    private List<Review> reviews;
}
