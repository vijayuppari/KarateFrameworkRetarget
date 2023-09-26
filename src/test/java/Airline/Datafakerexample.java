package Airline;

import net.datafaker.Faker;

public class Datafakerexample {

    public static void main(String[] args) {

        Faker faker = new Faker();
        System.out.println(faker.number().digit());
        System.out.println(faker.name().fullName());

    }
}
