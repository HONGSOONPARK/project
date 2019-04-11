package hs.intro.util;

import org.jasypt.encryption.pbe.StandardPBEStringEncryptor;



public class EncryptTest {

    public static void main(String[] args) {
        // TODO Auto-generated method stub
        StandardPBEStringEncryptor pbeEnc = new StandardPBEStringEncryptor();
        pbeEnc.setAlgorithm("PBEWithMD5AndDES");
        pbeEnc.setPassword("!hspark09#$");
        String a = "jdbc:log4jdbc:mysql://192.168.219.10:3306/intro?serverTimezone=UTC&useUnicode=true&charaterEncoding=utf-8&useSSL=false";
        String b = "jdbc:log4jdbc:mysql://192.168.219.111:3306/intro?serverTimezone=UTC&useUnicode=true&charaterEncoding=utf-8&useSSL=false";
        String c = "jdbc:log4jdbc:mysql://116.45.90.231:3306/intro?serverTimezone=UTC&useUnicode=true&charaterEncoding=utf-8&useSSL=false";

        System.out.println("test :: " + a + " | 변경 test :: " + pbeEnc.encrypt(a));
        System.out.println("test :: " + b + " | 변경 test :: " + pbeEnc.encrypt(b));
        System.out.println("test :: " + c + " | 변경 test :: " + pbeEnc.encrypt(c));



    }


}





