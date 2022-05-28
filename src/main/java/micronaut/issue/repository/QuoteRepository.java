package micronaut.issue.repository;

import io.micronaut.core.annotation.NonNull;
import io.micronaut.data.annotation.Join;
import io.micronaut.data.annotation.repeatable.JoinSpecifications;
import io.micronaut.data.jdbc.annotation.JdbcRepository;
import io.micronaut.data.model.query.builder.sql.Dialect;
import io.micronaut.data.repository.CrudRepository;
import micronaut.issue.domain.Quote;

import java.util.UUID;

@JdbcRepository(dialect = Dialect.POSTGRES)
public interface QuoteRepository extends CrudRepository<Quote, UUID> {

    @NonNull
    @JoinSpecifications({
        @Join(value = "offers", type = Join.Type.LEFT_FETCH),
        @Join(value = "offers.offer", type = Join.Type.LEFT_FETCH),
        @Join(value = "offers.services", type = Join.Type.LEFT_FETCH),
        @Join(value = "offers.services.service", type = Join.Type.LEFT_FETCH),
        @Join(value = "offers.services.frequency", type = Join.Type.LEFT_FETCH),
        @Join(value = "offers.frequency", type = Join.Type.LEFT_FETCH),
    })
    Iterable<Quote> list();

}
