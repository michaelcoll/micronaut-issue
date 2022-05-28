package micronaut.issue.domain;

import io.micronaut.core.annotation.Nullable;
import io.micronaut.data.annotation.AutoPopulated;
import io.micronaut.data.annotation.Id;
import io.micronaut.data.annotation.MappedEntity;
import io.micronaut.data.annotation.Relation;
import lombok.Data;

import java.time.LocalDateTime;
import java.util.List;
import java.util.UUID;

@Data
@MappedEntity
public class Quote {

    @Id
    @AutoPopulated
    private UUID quoteId;

    @Nullable
    private String ref;

    @Nullable
    private String coOwnerSyndicate;

    @Nullable
    private UUID regieId;

    @Nullable
    private String regieContacts;

    @Nullable
    private String receivedBy;

    @Nullable
    private LocalDateTime visitDate;

    @Nullable
    private String features;

    @Nullable
    private Double price;

    @Nullable
    private UUID redactedBy;

    @Relation(value = Relation.Kind.ONE_TO_MANY, mappedBy = "quote", cascade = Relation.Cascade.ALL)
    private List<QuoteOffer> offers;

}
