package micronaut.issue.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import io.micronaut.core.annotation.Nullable;
import io.micronaut.data.annotation.GeneratedValue;
import io.micronaut.data.annotation.Id;
import io.micronaut.data.annotation.MappedEntity;
import io.micronaut.data.annotation.Relation;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Data
@MappedEntity
public class QuoteService {

    @Id
    @JsonIgnore
    @GeneratedValue(GeneratedValue.Type.AUTO)
    private Long quoteServiceId;

    @JsonIgnore
    @ToString.Exclude
    @EqualsAndHashCode.Exclude
    private QuoteOffer quoteOffer;

    @Relation(value = Relation.Kind.MANY_TO_ONE)
    private Service service;

    @Nullable
    @Relation(value = Relation.Kind.MANY_TO_ONE)
    private Frequency frequency;

    private String days;
}
