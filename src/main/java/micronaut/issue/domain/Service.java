package micronaut.issue.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import io.micronaut.data.annotation.GeneratedValue;
import io.micronaut.data.annotation.Id;
import io.micronaut.data.annotation.MappedEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

import javax.validation.constraints.NotNull;

@Data
@MappedEntity
public class Service {

    @Id
    @GeneratedValue(GeneratedValue.Type.AUTO)
    private Long serviceId;

    @NotNull
    private String name;

    @JsonIgnore
    @ToString.Exclude
    @EqualsAndHashCode.Exclude
    private Offer offer;

}
