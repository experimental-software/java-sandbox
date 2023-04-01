package com.experimental.sandbox.sealed_classes;

import org.junit.jupiter.api.Test;

public class SealedClassesTest {

    @Test
    void should_allow_usage_of_sealed_classes() {
        new FooImpl();
    }
}
