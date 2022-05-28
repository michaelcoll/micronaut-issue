package micronaut.issue.controller;

import io.micronaut.core.type.Argument;
import io.micronaut.http.HttpResponse;
import io.micronaut.http.HttpStatus;
import io.micronaut.http.client.BlockingHttpClient;
import io.micronaut.http.client.HttpClient;
import io.micronaut.http.client.annotation.Client;
import io.micronaut.test.extensions.junit5.annotation.MicronautTest;
import jakarta.inject.Inject;
import micronaut.issue.domain.Frequency;
import micronaut.issue.domain.Offer;
import micronaut.issue.domain.Quote;
import micronaut.issue.domain.QuoteOffer;
import micronaut.issue.domain.QuoteService;
import micronaut.issue.domain.Service;
import org.junit.jupiter.api.Test;

import java.util.List;

import static io.micronaut.http.HttpRequest.GET;
import static io.micronaut.http.HttpRequest.POST;
import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertEquals;

@MicronautTest
class QuoteControllerTest {

    @Inject
    @Client("/")
    HttpClient httpClient;

    @Test
    void create() {
        BlockingHttpClient client = httpClient.toBlocking();

        Offer offer = new Offer();
        offer.setOfferId(1L);

        Service service = new Service();
        service.setServiceId(1L);

        Frequency frequency = new Frequency();
        frequency.setFrequencyId(1L);

        Quote quote = new Quote();
        quote.setRef("REF");

        QuoteOffer quoteOffer = new QuoteOffer();
        quoteOffer.setQuote(quote);
        quoteOffer.setOffer(offer);
        quoteOffer.setFrequency(frequency);

        quote.setOffers(List.of(quoteOffer));

        QuoteService quoteService = new QuoteService();
        quoteService.setService(service);
        quoteService.setQuoteOffer(quoteOffer);
        quoteService.setFrequency(frequency);

        HttpResponse<Quote> createResponse = client.exchange(POST("/quotes", quote), Quote.class);

        assertEquals(HttpStatus.CREATED, createResponse.getStatus());

        HttpResponse<List<Quote>> response = client.exchange(GET("/quotes"), Argument.listOf(Quote.class));

        assertThat(response.body())
                .hasSize(1);

    }
}
