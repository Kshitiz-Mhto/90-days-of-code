package com.Test.Junit.ConditionalTest;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.condition.*;

public class OSandJreconditonDemo {

    @Test
    @EnabledOnOs(value = {OS.MAC,OS.LINUX} )
    @EnabledOnJre(JRE.JAVA_18)
    void enableOnLinuxAndMac(){
        System.out.println("only on linux!!");
    }

    @Test
    @DisabledOnOs(value=OS.LINUX)
    void disbaleOnLinuxAndMac(){
        System.out.println("only on.... linux!!");
    }

    @Test
    @EnabledOnOs(value = {OS.MAC,OS.LINUX} )
    @DisabledOnJre(JRE.JAVA_18)
    void e3nableOnLinuxAndMac(){
        System.out.println("only on jre18!!");
    }


}
