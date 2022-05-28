package micronaut.issue.service;

import jakarta.inject.Singleton;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import micronaut.issue.domain.Quote;
import micronaut.issue.repository.QuoteRepository;

import javax.transaction.Transactional;

@Slf4j
@Singleton
@RequiredArgsConstructor
public class QuoteCRUDService {

    protected final QuoteRepository quoteRepository;

    @Transactional
    public Quote create(Quote quote) {

        LOGGER.info(quote.toString());

        return quoteRepository.save(quote);
    }

    public Iterable<Quote> list() {
        return quoteRepository.list();
    }

}
