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

import java.util.List;

@Data
@MappedEntity
public class QuoteOffer {

    @Id
    @JsonIgnore
    @GeneratedValue(GeneratedValue.Type.AUTO)
    private Long quoteOfferId;

    @JsonIgnore
    @ToString.Exclude
    @EqualsAndHashCode.Exclude
    private Quote quote;

    @Relation(value = Relation.Kind.MANY_TO_ONE)
    private Offer offer;

    @Nullable
    @Relation(value = Relation.Kind.MANY_TO_ONE)
    private Frequency frequency;

    @Relation(value = Relation.Kind.ONE_TO_MANY, mappedBy = "quoteOffer", cascade = Relation.Cascade.ALL)
    private List<QuoteService> services;

}
