package com.itibo.grob.services.impl;

import com.itibo.grob.dataaccess.model.Account;
import com.itibo.grob.dataaccess.repository.AccountRepository;
import com.itibo.grob.services.AccountService;
import com.itibo.grob.services.common.AbstractGenericService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class AccountServiceImpl extends AbstractGenericService<Account, Integer, AccountRepository>
        implements AccountService {

    private static final Logger LOGGER = LoggerFactory.getLogger(AccountServiceImpl.class);

    @Override
    public Account findOneAccountById(Integer id) {
        LOGGER.info("Finding {} entity with id = {}", simpleTypeName, id);
        return repository.findOneAccountById(id);
    }

    @Override
    public Account findOneAccountByLogin(String login) {
        LOGGER.info("Finding {} entity with login = {}", simpleTypeName, login);
        return repository.findOneAccountByLogin(login);
    }

    @Override
    public Account deleteByLogin(String login) {
        LOGGER.info("Deleting {} entity with login = {}", simpleTypeName, login);
        return repository.deleteByLogin(login);
    }
}
