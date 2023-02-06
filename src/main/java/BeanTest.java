import java.util.ArrayList;

public class BeanTest {

    public static void main(String[] args) {
        Album album1 = new Album();
        Album album2 = new Album();
        Quote quote1 = new Quote(1, "Here is a quote", "Paul");
        Quote quote2 = new Quote(2, "here is another quote", "John");
        Quote quote3 = new Quote(3, "here is one more quote", "Steve");
        Author author1 = new Author();
        Author author2 = new Author();

        ArrayList<Quote> quoteArray = new ArrayList<>();
            quoteArray.add(quote1);
            quoteArray.add(quote2);
            quoteArray.add(quote3);

        for (Quote quote : quoteArray){
            System.out.println(quote.getAuthor() + " " + quote.getContent());
        }
    }

}
