package hs.intro.util;

import org.jasypt.encryption.pbe.StandardPBEStringEncryptor;



public class EncryptTest {

    public static void main(String[] args) {
        // TODO Auto-generated method stub
        StandardPBEStringEncryptor pbeEnc = new StandardPBEStringEncryptor();
        pbeEnc.setAlgorithm("PBEWithMD5AndDES");
        pbeEnc.setPassword("!hspark09#$");

        String url = "bean";
        String username = "bean123";
        String password = "jdbc:mysql://192.168.219.10:3306/bean?serverTimezone=UTC";

        System.out.println("기존  URL :: " + url + " | 변경 URL :: " + pbeEnc.encrypt(url));
        System.out.println("기존  username :: " + username + " | 변경 username :: " + pbeEnc.encrypt(username));
        System.out.println("기존  password :: " + password + " | 변경 password :: " + pbeEnc.encrypt(password));

    }


}





