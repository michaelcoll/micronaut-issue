package micronaut.issue.controller;

import io.micronaut.http.HttpResponse;
import io.micronaut.http.annotation.Body;
import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;
import io.micronaut.http.annotation.Post;
import io.micronaut.scheduling.TaskExecutors;
import io.micronaut.scheduling.annotation.ExecuteOn;
import lombok.RequiredArgsConstructor;
import micronaut.issue.domain.Quote;
import micronaut.issue.repository.QuoteRepository;
import micronaut.issue.service.QuoteCRUDService;

@ExecuteOn(TaskExecutors.IO)
@Controller("/quotes")
@RequiredArgsConstructor
public class QuoteController {

    protected final QuoteRepository repository;
    protected final QuoteCRUDService service;

    @Post
    public HttpResponse<Quote> create(@Body Quote quote) {
        return HttpResponse.created(service.create(quote));
    }

    @Get
    public Iterable<Quote> list() {
        return service.list();
    }

}
