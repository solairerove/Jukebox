package com.itibo.grob.services.common;

import com.itibo.grob.dataaccess.model.Account;
import com.itibo.grob.services.AccountService;
import org.apache.commons.lang3.RandomStringUtils;
import org.apache.commons.lang3.RandomUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component
@Transactional
public class EntityUtils {
    //    public static final int MAX_LOGIN_LENGTH = 25;
    public static final int MAX_STRING_LENGTH = 25;
    public static final int MAX_NUMBER = 1000;
    public static final int MAX_ENTITIES_COUNT = 20;

    @Autowired
    private AccountService accountService;

    public static String getRandomString(int length) {
        return RandomStringUtils.random(length, true, true);
    }

    public static Integer getRandomInteger(int bound) {
        return RandomUtils.nextInt(1, bound);
    }

    public static Long getRandomLong(long bound) {
        return RandomUtils.nextLong(1, bound);
    }

    public Account generateAccount() {
        return new Account(getRandomString(MAX_STRING_LENGTH),
                getRandomString(MAX_STRING_LENGTH),
                getRandomString(MAX_STRING_LENGTH),
                getRandomString(MAX_STRING_LENGTH),
                getRandomString(MAX_STRING_LENGTH));
    }
}
