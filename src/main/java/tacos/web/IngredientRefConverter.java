package tacos.web;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;
import tacos.IngredientRef;

@Component
public class IngredientRefConverter implements Converter<String, IngredientRef> {
    @Override
    public IngredientRef convert(String id) {
        return new IngredientRef();
    }
}

