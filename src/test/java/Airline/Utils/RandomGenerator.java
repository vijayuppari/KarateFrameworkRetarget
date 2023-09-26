package Airline.Utils;

import net.datafaker.Faker;

public class RandomGenerator {

    static  Faker faker = new Faker();
    public static String getRandomdigit(int size){
       return  faker.number().digits(size);
    }
    public static String getFullName(){
        return faker.name().fullName();
    }
}
