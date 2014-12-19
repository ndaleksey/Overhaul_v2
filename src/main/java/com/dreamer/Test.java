package com.dreamer;

/**
 * Created by Shishkov A.V. on 26.10.2014.
 */
public class Test {
    public static void main(String[] args) {
//        System.out.println(String.format("Date = %tc", new Date()));
//        String text = "I\"m never going back The past is in the past Here I'll stay and here I'll stay";

		String text = "He'llo";

        System.out.println(text.replaceAll("'", "&quot;"));
    }
}
