package micronaut.issue.domain;

import io.micronaut.data.annotation.GeneratedValue;
import io.micronaut.data.annotation.Id;
import io.micronaut.data.annotation.MappedEntity;
import io.micronaut.data.annotation.Relation;
import lombok.Data;

import javax.validation.constraints.NotNull;
import java.util.List;

@Data
@MappedEntity
public class Offer {

    @Id
    @GeneratedValue(GeneratedValue.Type.AUTO)
    private Long offerId;

    @NotNull
    private String name;

    private boolean daily;

    @Relation(value = Relation.Kind.ONE_TO_MANY, mappedBy = "offer")
    private List<Service> services;

}
