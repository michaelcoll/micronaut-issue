package micronaut.issue.domain;

import io.micronaut.data.annotation.GeneratedValue;
import io.micronaut.data.annotation.Id;
import io.micronaut.data.annotation.MappedEntity;
import lombok.Data;

import javax.validation.constraints.NotNull;

@Data
@MappedEntity
public class Frequency {

    @Id
    @GeneratedValue(GeneratedValue.Type.AUTO)
    private Long frequencyId;

    @NotNull
    private String name;

}
